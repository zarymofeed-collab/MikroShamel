package com.zarinet.netcontrol.ui.screens

import androidx.compose.runtime.*
import com.zarinet.netcontrol.ui.components.*
import com.zarinet.netcontrol.util.Fmt
import com.zarinet.netcontrol.util.UmPackageRow
import com.zarinet.netcontrol.util.umPackageUptime
import com.zarinet.netcontrol.util.umUptimeNorm
import androidx.compose.material3.Text
import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.graphics.Color

/** نافذة باقة يوزر منجر مع الصلاحية (أيام) والوقت المسموح (ساعات) — يُطبَّقان على Profile وLimitation. */
@Composable
fun UmPackageDialog(onDismiss: () -> Unit, initial: UmPackageRow? = null, onSave: (String, Int, Long, String, String) -> Unit) {
    fun rawRate(v: String): String? {
        if (v.isBlank() || v == "0") return null
        val n = v.toLongOrNull() ?: return v
        return if (n % 1_000_000 == 0L) "${n / 1_000_000}M" else if (n % 1000 == 0L) "${n / 1000}k" else "$n"
    }
    var name by remember { mutableStateOf(initial?.name ?: "") }
    var days by remember { mutableStateOf(if (initial == null) "" else { val d = Fmt.seconds(initial.validity) / 86400; if (d > 0) d.toString() else "" }) }
    var hours by remember { mutableStateOf("") }
    var mb by remember { mutableStateOf(if (initial == null) "" else { val m = initial.transfer / 1048576; if (m > 0) m.toString() else "" }) }
    var speed by remember { mutableStateOf(if (initial == null) "" else listOfNotNull(rawRate(initial.rateRx), rawRate(initial.rateTx)).joinToString("/")) }
    var price by remember { mutableStateOf(if (initial == null) "" else initial.price.filter { it.isDigit() }.let { if (it == "0") "" else it }) }
    LaunchedEffect(initial?.id) {
        if (initial != null) try { hours = umPackageUptime(initial) } catch (_: Exception) {}
    }
    val upOk = try { umUptimeNorm(hours); true } catch (_: Exception) { false }
    FormDialog(if (initial == null) "إضافة باقة يوزر منجر" else "تعديل باقة ${initial.name}", enabled = name.isNotBlank() && upOk, onDismiss = onDismiss,
        onConfirm = {
            val u = umUptimeNorm(hours)
            val sp = speed.trim() + (if (u.isNotEmpty()) "|u=$u" else "")
            onSave(name.trim(), days.toIntOrNull() ?: 0, mb.toLongOrNull() ?: 0, sp, price.trim())
        }) {
        Field(name, { name = it }, "اسم الباقة", placeholder = "مثلاً Day-2-Riyal")
        Field(days, { days = it.filter { c -> c.isDigit() } }, "الصلاحية (أيام)", number = true, placeholder = "0 يعني بلا مدة")
        Field(hours, { hours = it }, "الوقت المسموح", ltr = true, placeholder = "30m أو 10h أو 3d — فارغ يعني بلا حد")
        if (!upOk) Text("اكتب رقماً مع m (دقائق) أو h (ساعات) أو d (أيام)، مثل 30m أو 10h أو 3d", style = MaterialTheme.typography.bodySmall, color = Color(0xFFDC2626))
        Field(mb, { mb = it.filter { c -> c.isDigit() } }, "عدد الميغات", number = true, placeholder = "0 يعني مفتوح")
        Field(speed, { speed = it }, "السرعة (رفع/تنزيل)", ltr = true, placeholder = "مثال 1M/4M — فارغ يعني بلا قيود")
        Field(price, { price = it.filter { c -> c.isDigit() } }, "السعر (اختياري)", number = true)
    }
}
