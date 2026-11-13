package com.zarinet.netcontrol.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import com.zarinet.netcontrol.account.RadiusPlan
import com.zarinet.netcontrol.ui.components.*
import com.zarinet.netcontrol.ui.theme.C
import com.zarinet.netcontrol.ui.theme.D

/** البيانات بوحدة: 100k / 10M / 1G / 1T (رقم وحده = GB). يُخزَّن بالميغا (الأقل 1M). null = بلا حد، -1 = صيغة خاطئة. */
fun radDataToMb(raw: String): Long? {
    val t = raw.trim().replace(" ", "").uppercase().removeSuffix("B")
    if (t.isEmpty() || t == "0") return null
    val m = Regex("^([0-9]+(?:\\.[0-9]+)?)([KMGT]?)$").find(t) ?: return -1
    val n = m.groupValues[1].toDoubleOrNull() ?: return -1
    if (n <= 0) return -1
    val mb = when (m.groupValues[2]) {
        "K" -> n / 1024.0
        "M" -> n
        "T" -> n * 1048576.0
        else -> n * 1024.0
    }
    return Math.ceil(mb).toLong().coerceAtLeast(1)
}

fun radMbToText(mb: Long?): String {
    if (mb == null || mb <= 0) return ""
    return when {
        mb % 1048576L == 0L -> "${mb / 1048576L}T"
        mb % 1024L == 0L -> "${mb / 1024L}G"
        else -> "${mb}M"
    }
}

/** وقت الاستخدام: 30m / 10h / 3d / 1w / 1d12h (رقم وحده = ساعات). null = بلا حد، -1 = صيغة خاطئة. */
fun radUptimeToMin(raw: String): Int? {
    val u = try { com.zarinet.netcontrol.util.umUptimeNorm(raw) } catch (_: Exception) { return -1 }
    if (u.isEmpty()) return null
    var sec = 0L
    for (m in Regex("(\\d+)([wdhms])").findAll(u)) {
        val n = m.groupValues[1].toLong()
        sec += n * when (m.groupValues[2]) { "w" -> 604800L; "d" -> 86400L; "h" -> 3600L; "m" -> 60L; else -> 1L }
    }
    if (sec <= 0) return -1
    return ((sec + 59) / 60).toInt().coerceAtLeast(1)
}

fun radMinToText(min: Int?): String {
    if (min == null || min <= 0) return ""
    var m = min.toLong(); val sb = StringBuilder()
    for (pr in listOf(10080L to "w", 1440L to "d", 60L to "h", 1L to "m")) { val n = m / pr.first; if (n > 0) { sb.append(n).append(pr.second); m -= n * pr.first } }
    return sb.toString()
}

@Composable
fun RadiusPlanForm2(
    initial: RadiusPlan, onDismiss: () -> Unit,
    previewProfiles: List<String>? = null,
    onSave: (RadiusPlan) -> Unit
) {
    var name by remember { mutableStateOf(initial.name) }
    var price by remember { mutableStateOf(if (initial.id.isBlank()) "" else (if (initial.price % 1.0 == 0.0) initial.price.toLong().toString() else "%.2f".format(initial.price))) }
    var down by remember { mutableStateOf(initial.rateDown ?: "") }
    var up by remember { mutableStateOf(initial.rateUp ?: "") }
    var validity by remember { mutableStateOf(initial.validityDays?.toString() ?: "") }
    var uptimeH by remember { mutableStateOf(radMinToText(initial.uptimeMinutes)) }
    var data by remember { mutableStateOf(radMbToText(initial.dataMb)) }
    var shared by remember { mutableStateOf(initial.sharedUsers.toString()) }
    var service by remember { mutableStateOf(initial.service) }
    var notes by remember { mutableStateOf(initial.notes ?: "") }
    val noLink = "بدون ربط"
    var hsProfile by remember { mutableStateOf(initial.hsProfile) }
    var routerProfiles by remember { mutableStateOf<List<String>?>(null) }
    LaunchedEffect(Unit) {
        if (previewProfiles != null) { routerProfiles = previewProfiles; return@LaunchedEffect }
        routerProfiles = try {
            val rows = com.zarinet.netcontrol.data.Session.api().print("/ip/hotspot/user/profile", listOf("name"))
            val out = ArrayList<String>(); for (r in rows) { val n = r["name"]; if (n != null) out.add(n) }; out
        } catch (_: Exception) { emptyList() }
    }
    val serviceLabels = listOf("hotspot" to "هوتسبوت", "ppp" to "PPPoE", "both" to "هوتسبوت + PPPoE")
    fun rateOk(s: String) = s.isBlank() || RadiusPlan.RATE.matches(s.trim())
    val sharedN = shared.toIntOrNull()
    val dataMb = radDataToMb(data)
    val dataOk = dataMb == null || dataMb > 0
    val valid = name.isNotBlank() && rateOk(down) && rateOk(up) &&
        (validity.isBlank() || validity.toIntOrNull()?.let { it in 1..3650 } == true) &&
        (radUptimeToMin(uptimeH).let { it == null || it > 0 }) &&
        dataOk && (price.isBlank() || price.toDoubleOrNull()?.let { it >= 0 } == true) &&
        sharedN != null && sharedN in 1..50

    val body: @Composable ColumnScope.() -> Unit = {
        Field(name, { name = it }, "اسم الباقة")
        Field(price, { price = it.filter { c -> c.isDigit() || c == '.' } }, "السعر (﷼)", number = true)
        Row(horizontalArrangement = Arrangement.spacedBy(D.sm)) {
            Field(down, { down = it.trim() }, "سرعة التحميل", Modifier.weight(1f), placeholder = "4M", ltr = true)
            Field(up, { up = it.trim() }, "سرعة الرفع", Modifier.weight(1f), placeholder = "1M", ltr = true)
        }
        if (!rateOk(down) || !rateOk(up)) Text("السرعة مثل 512k أو 4M أو 1G", color = C.Red, style = MaterialTheme.typography.bodySmall)
        Row(horizontalArrangement = Arrangement.spacedBy(D.sm)) {
            Field(validity, { validity = it.filter { c -> c.isDigit() } }, "الصلاحية (يوم)", Modifier.weight(1f), number = true, placeholder = "30")
            Field(uptimeH, { uptimeH = it.trim() }, "وقت الاستخدام", Modifier.weight(1f), placeholder = "30m / 10h / 3d", ltr = true)
        }
        Row(horizontalArrangement = Arrangement.spacedBy(D.sm)) {
            Field(data, { data = it.trim() }, "البيانات", Modifier.weight(1f), placeholder = "10M / 1G / 500k", ltr = true)
            Field(shared, { shared = it.filter { c -> c.isDigit() } }, "عدد الأجهزة", Modifier.weight(1f), number = true)
        }
        if (radUptimeToMin(uptimeH) == -1) Text("وقت الاستخدام رقم مع m أو h أو d أو w، مثل 30m أو 10h أو 3d أو 1d12h (رقم وحده = ساعات)", color = C.Red, style = MaterialTheme.typography.bodySmall)
        if (!dataOk) Text("البيانات رقم مع k أو M أو G أو T، مثل 100k أو 10M أو 1G (رقم وحده = GB)", color = C.Red, style = MaterialTheme.typography.bodySmall)
        else if (dataMb != null) Text("= " + (if (dataMb >= 1024) "%.2f GB".format(dataMb / 1024.0) else "$dataMb MB") + (if (data.trim().uppercase().endsWith("K")) " (تُقرَّب لأقرب ميغا)" else ""), color = C.Dim, style = MaterialTheme.typography.bodySmall)
        Text("عدد الأجهزة: 1 = جهاز واحد في الوقت نفسه، 2 = جهازان بنفس بيانات الدخول. الجهاز الزائد يُرفض ولا تُفصل الجلسات القائمة.", color = C.Dim, style = MaterialTheme.typography.bodySmall)
        if ((shared.toIntOrNull() ?: 1) > 1) Text("تنبيه: «ربط الجهاز» في الكرت يمنع الأجهزة الأخرى حتى لو كان العدد أكبر من 1.", color = C.Gold, style = MaterialTheme.typography.bodySmall)
        var curLabel = serviceLabels[0].second
        for (pr in serviceLabels) if (pr.first == service) curLabel = pr.second
        Dropdown("نوع الخدمة", curLabel, serviceLabels.map { it.second }) { sel ->
            for (pr in serviceLabels) if (pr.second == sel) service = pr.first
        }
        val opts = (listOf(noLink) + (routerProfiles ?: emptyList()) + listOfNotNull(initial.hsProfile)).distinct()
        Dropdown("ربط ببروفايل هوتسبوت (اختياري)", hsProfile ?: noLink, opts) { sel -> hsProfile = if (sel == noLink) null else sel }
        if (routerProfiles == null) Text("جارٍ قراءة بروفايلات الهوتسبوت من الراوتر…", color = C.Dim, style = MaterialTheme.typography.bodySmall)
        val hp = hsProfile
        if (hp != null) {
            Text("تُطبَّق قيود البروفايل «$hp» على كروت هذه الباقة (السرعة، المهلة، عدد الأجهزة، address-list، سكربت الدخول). السرعة المكتوبة في الباقة — إن وُجدت — تتغلب على سرعة البروفايل.",
                color = C.Dim, style = MaterialTheme.typography.bodySmall)
            Text("مهم: يجب أن يوجد بروفايل بنفس الاسم تماماً على كل راوتر تعمل عليه هذه الباقة، وإلا يُرفض دخول الكرت على ذلك الراوتر.",
                color = C.Gold, style = MaterialTheme.typography.bodySmall)
            val rp = routerProfiles
            if (rp != null && hp !in rp) Text("البروفايل «$hp» غير موجود على هذا الراوتر!", color = C.Red, style = MaterialTheme.typography.bodySmall)
        }
        Field(notes, { notes = it.take(300) }, "ملاحظات (اختياري)", singleLine = false)
        Text("الحقول الفارغة = بدون حد. الصلاحية تبدأ من أول دخول للكرت.", color = C.Dim, style = MaterialTheme.typography.bodySmall)
    }
    if (previewProfiles != null) {
        Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(D.radiusCard)).background(C.Card).padding(D.xl),
            verticalArrangement = Arrangement.spacedBy(D.md)) {
            Text(if (initial.id.isBlank()) "إضافة باقة راديوس" else "تعديل باقة", style = MaterialTheme.typography.titleLarge, color = C.Text)
            body()
        }
        return
    }
    FormDialog(title = if (initial.id.isBlank()) "إضافة باقة راديوس" else "تعديل باقة", confirmText = "حفظ", enabled = valid,
        onDismiss = onDismiss,
        onConfirm = {
            onSave(initial.copy(
                name = name.trim(),
                price = price.toDoubleOrNull() ?: 0.0,
                rateDown = down.trim().ifBlank { null },
                rateUp = up.trim().ifBlank { null },
                validityDays = validity.toIntOrNull(),
                uptimeMinutes = radUptimeToMin(uptimeH)?.takeIf { it > 0 },
                dataMb = radDataToMb(data)?.takeIf { it > 0 },
                sharedUsers = sharedN ?: 1,
                service = service,
                notes = notes.trim().ifBlank { null },
                hsProfile = hsProfile?.takeIf { it.isNotBlank() },
                sendProfile = hsProfile != initial.hsProfile
            ))
        }, content = body)
}
