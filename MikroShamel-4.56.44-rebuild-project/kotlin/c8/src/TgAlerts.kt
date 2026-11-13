@file:JvmName("TgAlertsKt")
package com.zarinet.netcontrol.ui.screens

import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BatteryFull
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.account.RadiusSubscription
import com.zarinet.netcontrol.api.RouterOsClient
import com.zarinet.netcontrol.data.Session
import kotlinx.coroutines.launch
import org.json.JSONObject

/*
 * إشعارات تلجرام: «فولط البطارية» و«نسبة ارتفاع المعالج».
 * التفعيل يركّب على الراوتر جدولاً (scheduler) يقرأ القيمة دورياً ويرسل حدثاً إلى tg-event
 * (نفس طريقة «تنبيه ترجيع ايبي»). الحد يُحفظ في تعليق الجدول نفسه، فلا جداول جديدة في قاعدة البيانات.
 * صلاحية policy ضرورية في الجدول: بدونها لا تبقى المتغيرات العامة بين التشغيلات (مُختبر على RouterOS 6.49 و7.16) فيتكرر الإشعار.
 * - الفولط: إشعار مرة واحدة عند النزول تحت الحد، وإشعار عودة عند الارتفاع فوق الحد + 0.3V.
 * - المعالج: إشعار مرة واحدة إذا تجاوز الحد في قراءتين متتاليتين (كل 30 ثانية)، وإشعار عودة عند النزول تحت الحد − 10.
 */

private val AInk = Color(0xFF0E1B2A)
private val ADim = Color(0xFF5B6B7F)
private val ATeal = Color(0xFF12A886)
private val ACyan = Color(0xFF22C3E6)      // القلب السماوي كما في الصورة المرجعية
private val AGreen = Color(0xFF2FA35A)     // أيقونة البطارية
private val APurple = Color(0xFF673AB7)    // زر «تم» البنفسجي كما في الصورة المرجعية
private const val TG_EVENT = "https://yvykqdaqfbzzvouytfop.supabase.co/functions/v1/tg-event"
private const val VOLT_NAME = "shamel-tg-volt"
private const val CPU_NAME = "shamel-tg-cpu"

/** مولّد سكربتات الراوتر (دوال نقية تُختبر على RouterOS 6 و7). */
object TgAlertScripts {
    /** قراءة الفولط كنص في المتغير s. RouterOS 7: صف name=voltage (أو psu1-voltage) بقيمة مثل "24.2".
     *  RouterOS 6: [/system health get voltage] يعيد أعشار الفولت (242 = 24.2V).
     *  القراءة داخل :parse حتى لا يفشل السكربت كله في أجهزة بلا حساس فولط (قائمة health مختلفة → خطأ ترجمة يُلتقط هنا). */
    private fun pr(cmd: String): String = ":do {:set s [:tostr [[:parse \":return [$cmd]\"]]]} on-error={:set s \"\"}"
    fun voltRead(v7: Boolean): String =
        if (v7) pr("/system health get [find where name=\\\"voltage\\\"] value") + "; " +
            ":if ([:len \$s] = 0) do={" + pr("/system health get [find where name=\\\"psu1-voltage\\\"] value") + "}"
        else pr("/system health get voltage")

    /** t = الحد بأعشار الفولت (115 = 11.5V). */
    fun volt(v7: Boolean, url: String, key: String, t: Int, read: String = voltRead(v7)): String {
        val r = t + 3
        val mult = if (v7) 10 else 1   // رقم بلا فاصلة: v7 = فولت، v6 = أعشار فولت
        val u = "$url?k=$key&e=volt"
        return ":global shamelVoltLow; :if ([:typeof \$shamelVoltLow] != \"bool\") do={:set shamelVoltLow false}; " +
            ":local s \"\"; $read; " +
            ":if ([:len \$s] > 0) do={" +
            ":local p [:find \$s \".\"]; :local d 0; " +
            ":if ([:typeof \$p] = \"num\") do={:local f [:pick \$s (\$p + 1) (\$p + 2)]; :if ([:len \$f] = 0) do={:set f \"0\"}; " +
            ":set d (([:tonum [:pick \$s 0 \$p]] * 10) + [:tonum \$f])} else={:set d ([:tonum \$s] * $mult)}; " +
            ":if ((\$d > 0) && (\$d < $t) && (\$shamelVoltLow = false)) do={:do {/tool fetch url=(\"$u&v=\" . \$d . \"&t=$t\") keep-result=no; :set shamelVoltLow true} on-error={}}; " +
            ":if ((\$d >= $r) && (\$shamelVoltLow = true)) do={:do {/tool fetch url=(\"$u&s=ok&v=\" . \$d . \"&t=$t\") keep-result=no; :set shamelVoltLow false} on-error={}}" +
            "}"
    }

    fun cpuRead(): String = ":set c [/system resource get cpu-load]"

    /** t = الحد بالنسبة المئوية (1–99). */
    fun cpu(url: String, key: String, t: Int, read: String = cpuRead()): String {
        val r = if (t > 10) t - 10 else 1
        val u = "$url?k=$key&e=cpu"
        return ":global shamelCpuHigh; :global shamelCpuN; " +
            ":if ([:typeof \$shamelCpuHigh] != \"bool\") do={:set shamelCpuHigh false}; " +
            ":if ([:typeof \$shamelCpuN] != \"num\") do={:set shamelCpuN 0}; " +
            ":local c 0; $read; " +
            ":if (\$c > $t) do={:set shamelCpuN (\$shamelCpuN + 1)} else={:set shamelCpuN 0}; " +
            ":if ((\$shamelCpuN >= 2) && (\$shamelCpuHigh = false)) do={:do {/tool fetch url=(\"$u&v=\" . \$c . \"&t=$t\") keep-result=no; :set shamelCpuHigh true} on-error={}}; " +
            ":if ((\$c < $r) && (\$shamelCpuHigh = true)) do={:do {/tool fetch url=(\"$u&s=ok&v=\" . \$c . \"&t=$t\") keep-result=no; :set shamelCpuHigh false} on-error={}}"
    }

    /** يركّب الجدول على الراوتر (أو يحدّثه) ويصفّر حالة التنبيه السابقة. */
    suspend fun install(api: RouterOsClient, name: String, comment: String, interval: String, script: String, globals: List<String>) {
        remove(api, name, globals)
        api.exec("/system/scheduler/add", linkedMapOf("name" to name, "interval" to interval, "on-event" to script,
            "policy" to "read,write,policy,test", "comment" to comment))
    }

    /** يحذف الجدول ومتغيراته العامة. */
    suspend fun remove(api: RouterOsClient, name: String, globals: List<String>) {
        val rows = api.exec("/system/scheduler/print", emptyMap()).rows
        var i = 0
        while (i < rows.size) { val r = rows[i]; if (r["name"] == name) api.exec("/system/scheduler/remove", mapOf(".id" to (r[".id"] ?: ""))); i++ }
        val env = runCatching { api.exec("/system/script/environment/print", emptyMap()).rows }.getOrNull()
        if (env != null) { var k = 0; while (k < env.size) { val e = env[k]; if (globals.contains(e["name"] ?: "")) runCatching { api.exec("/system/script/environment/remove", mapOf(".id" to (e[".id"] ?: ""))) }; k++ } }
    }
}

// \u200E (LRM) قبل «الرقم + الوحدة» حتى تظهر «11.5 V» و«80%» بهذا الترتيب داخل النص العربي (بدونها تظهر «V 11.5»).
/** أرقام عربية/فارسية وفاصلة عربية → رقم عادي. */
private fun normNum(s: String): String {
    val sb = StringBuilder()
    var i = 0
    while (i < s.length) {
        val ch = s[i]
        when {
            ch in '٠'..'٩' -> sb.append('0' + (ch - '٠'))
            ch in '۰'..'۹' -> sb.append('0' + (ch - '۰'))
            ch == '٫' || ch == ',' || ch == '،' -> sb.append('.')
            ch.isDigit() || ch == '.' -> sb.append(ch)
        }
        i++
    }
    return sb.toString()
}

/** «11.5» من أعشار الفولت 115. */
private fun dv(d: Int): String = (d / 10).toString() + "." + (d % 10).toString()

private suspend fun routerKey(routerId: String): String =
    AuthService.authorized { tok: String -> RadiusSubscription.api.rpc("tg_router_key", JSONObject().put("p_router", routerId), tok) }
        .toString().trim().trim('"')

/** البطاقتان تحت «تنبيه ترجيع ايبي» في صفحة إشعارات تلجرام. */
@Composable
fun TgAlertCards() {
    val ctx = LocalContext.current
    val scope = rememberCoroutineScope()
    val dev = Session.device
    var volt by remember { mutableStateOf<Int?>(null) }      // الحد بأعشار الفولت، أو null = متوقف
    var cpu by remember { mutableStateOf<Int?>(null) }       // الحد %، أو null = متوقف
    var v7 by remember { mutableStateOf(true) }
    var nowVolt by remember { mutableStateOf("") }
    var nowCpu by remember { mutableStateOf("") }
    var dlg by remember { mutableStateOf(0) }                 // 0 لا شيء، 1 الفولط، 2 المعالج
    var busy by remember { mutableStateOf(false) }
    fun toast(m: String) = Toast.makeText(ctx, m, Toast.LENGTH_LONG).show()

    LaunchedEffect(dev?.id) {
        if (dev == null) return@LaunchedEffect
        runCatching {
            val api = Session.api()
            val res = api.exec("/system/resource/print", emptyMap()).rows
            if (res.isNotEmpty()) { v7 = !(res[0]["version"] ?: "7").startsWith("6"); nowCpu = res[0]["cpu-load"] ?: "" }
            val sch = api.exec("/system/scheduler/print", emptyMap()).rows
            var i = 0
            while (i < sch.size) {
                val r = sch[i]; val parts = (r["comment"] ?: "").split(" ")
                if (r["name"] == VOLT_NAME && parts.size >= 3) volt = parts[2].toIntOrNull()
                if (r["name"] == CPU_NAME && parts.size >= 3) cpu = parts[2].toIntOrNull()
                i++
            }
            val h = api.exec("/system/health/print", emptyMap()).rows
            var j = 0
            while (j < h.size) {
                val r = h[j]
                val n = r["name"]
                if (n == "voltage" || (n == "psu1-voltage" && nowVolt.isEmpty())) nowVolt = r["value"] ?: ""
                if (n == null && r["voltage"] != null) nowVolt = r["voltage"] ?: ""
                j++
            }
            if (nowVolt.isNotEmpty() && !nowVolt.contains(".")) { val x = nowVolt.toIntOrNull(); if (x != null && x > 99) nowVolt = dv(x) }
        }
    }

    fun apply(kind: Int, value: Int?) {
        val d = dev ?: run { toast("اتصل بالراوتر أولاً"); return }
        busy = true
        scope.launch {
            try {
                val api = Session.api()
                if (kind == 1) {
                    val g = listOf("shamelVoltLow")
                    if (value == null) { TgAlertScripts.remove(api, VOLT_NAME, g); volt = null; toast("🔕 تم إيقاف إشعار فولط البطارية") }
                    else {
                        val key = routerKey(d.id)
                        TgAlertScripts.install(api, VOLT_NAME, "shamel-tg volt $value", "1m", TgAlertScripts.volt(v7, TG_EVENT, key, value), g)
                        volt = value; toast("✅ سيصلك إشعار عندما ينقص الفولط عن \u200E${dv(value)} V")
                    }
                } else {
                    val g = listOf("shamelCpuHigh", "shamelCpuN")
                    if (value == null) { TgAlertScripts.remove(api, CPU_NAME, g); cpu = null; toast("🔕 تم إيقاف إشعار المعالج") }
                    else {
                        val key = routerKey(d.id)
                        TgAlertScripts.install(api, CPU_NAME, "shamel-tg cpu $value", "30s", TgAlertScripts.cpu(TG_EVENT, key, value), g)
                        cpu = value; toast("✅ سيصلك إشعار عندما يتجاوز المعالج \u200E$value%")
                    }
                }
                dlg = 0
            } catch (e: Exception) { toast(e.message ?: "خطأ") }
            busy = false
        }
    }

    AlertCard(Icons.Filled.BatteryFull, AGreen, Color(0xFFE3F6EA), Color(0xFFBFE6CC), "فولط البطارية",
        if (volt != null) "إشعار عند نقص الفولط عن \u200E${dv(volt!!)} V" else "---", volt != null, busy) { on ->
        if (dev == null) toast("اتصل بالراوتر أولاً") else if (on) dlg = 1 else apply(1, null)
    }
    AlertCard(Icons.Filled.Favorite, ACyan, Color(0xFFE0F7FB), Color(0xFFB8E3EE), "نسبة ارتفاع المعالج",
        if (cpu != null) "إشعار عند تجاوز المعالج \u200E$cpu%" else "---", cpu != null, busy) { on ->
        if (dev == null) toast("اتصل بالراوتر أولاً") else if (on) dlg = 2 else apply(2, null)
    }
    if (!TgNav.linked) Text("⚠️ فعّل البوت أولاً لتصلك هذه الإشعارات على تلجرام", color = Color(0xFFB7791F), fontSize = 12.sp)

    if (dlg == 1) ThresholdDialog(Icons.Filled.BatteryFull, AGreen, "اكتب فولط البطارية", "التي تريد استلام إشعار عند نقصانها", "V",
        if (volt != null) dv(volt!!) else "", if (nowVolt.isNotEmpty()) "الفولط الحالي: \u200E$nowVolt V" else "", busy, { dlg = 0 }) { txt ->
        val x = normNum(txt).toDoubleOrNull()
        if (x == null || x < 5.0 || x > 60.0) toast("اكتب فولطاً صحيحاً بين 5 و 60") else apply(1, Math.round(x * 10).toInt())
    }
    if (dlg == 2) ThresholdDialog(Icons.Filled.Favorite, ACyan, "اكتب نسبة المعالج", "التي تريد استلام إشعار عند تجاوزها", "%",
        (cpu ?: 50).toString(), if (nowCpu.isNotEmpty()) "المعالج الآن: \u200E$nowCpu%" else "", busy, { dlg = 0 }) { txt ->
        val x = normNum(txt).toIntOrNull()
        if (x == null || x < 1 || x > 99) toast("اكتب نسبة بين 1 و 99") else apply(2, x)
    }
}

@Composable
private fun AlertCard(icon: ImageVector, tint: Color, iconBg: Color, border: Color, title: String, sub: String, on: Boolean, busy: Boolean, onToggle: (Boolean) -> Unit) {
    Row(Modifier.fillMaxWidth().clip(RoundedCornerShape(22.dp)).background(Color.White).border(1.5.dp, border, RoundedCornerShape(22.dp))
        .clickable(enabled = on && !busy) { onToggle(true) }.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
        Box(Modifier.size(50.dp).clip(RoundedCornerShape(14.dp)).background(iconBg), contentAlignment = Alignment.Center) { Icon(icon, contentDescription = null, tint = tint, modifier = Modifier.size(28.dp)) }
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f), horizontalAlignment = Alignment.CenterHorizontally) {
            Text(title, fontWeight = FontWeight.Bold, color = AInk, fontSize = 16.sp, textAlign = TextAlign.Center)
            Text(sub, color = ADim, fontSize = 12.5.sp, textAlign = TextAlign.Center)
        }
        Switch(checked = on, onCheckedChange = { if (!busy) onToggle(it) },
            colors = SwitchDefaults.colors(checkedTrackColor = ATeal, checkedThumbColor = Color.White, uncheckedThumbColor = Color(0xFFA4A8AF)))   // مقبض رمادي وهو مطفأ (الأبيض يختفي على المسار الفاتح)
    }
}

@Composable
private fun ThresholdDialog(icon: ImageVector, tint: Color, line1: String, line2: String, unit: String, initial: String, current: String, busy: Boolean,
                            onDismiss: () -> Unit, onDone: (String) -> Unit) {
    var txt by remember { mutableStateOf(initial) }
    Dialog(onDismissRequest = onDismiss) {
        Surface(shape = RoundedCornerShape(28.dp), color = Color.White) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Icon(icon, contentDescription = null, tint = tint, modifier = Modifier.padding(top = 22.dp).size(84.dp))
                Text(line1, color = Color(0xFF6B7280), fontSize = 19.sp, textAlign = TextAlign.Center, modifier = Modifier.padding(top = 10.dp, start = 16.dp, end = 16.dp))
                Text(line2, color = Color(0xFF6B7280), fontSize = 19.sp, textAlign = TextAlign.Center, modifier = Modifier.padding(horizontal = 16.dp))
                if (current.isNotEmpty()) Text(current, color = ATeal, fontSize = 13.sp, modifier = Modifier.padding(top = 6.dp))
                // الوحدة أولاً في الكود ← تظهر يمين الرقم في الواجهة العربية: «50 %» و«11.5 V»
                Row(Modifier.padding(top = 14.dp, bottom = 20.dp), verticalAlignment = Alignment.CenterVertically) {
                    Text(unit, color = Color(0xFF6B7280), fontSize = 30.sp)
                    Spacer(Modifier.width(10.dp))
                    TextField(value = txt, onValueChange = { v -> if (v.length <= 5) txt = v }, singleLine = true,
                        textStyle = TextStyle(fontSize = 30.sp, textAlign = TextAlign.Center, color = AInk, textDirection = TextDirection.Ltr),   // المؤشر بعد آخر رقم
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal, imeAction = ImeAction.Done),
                        keyboardActions = KeyboardActions(onDone = { if (!busy) onDone(txt) }),   // زر ✓ في لوحة المفاتيح = «تم» (الزر قد يختفي خلف اللوحة)
                        colors = TextFieldDefaults.colors(focusedContainerColor = Color.Transparent, unfocusedContainerColor = Color.Transparent,
                            focusedIndicatorColor = APurple, unfocusedIndicatorColor = Color(0xFF9CA3AF)),
                        modifier = Modifier.width(130.dp))
                }
                Button(onClick = { onDone(txt) }, enabled = !busy, modifier = Modifier.fillMaxWidth().height(64.dp),
                    shape = RoundedCornerShape(bottomStart = 28.dp, bottomEnd = 28.dp, topStart = 0.dp, topEnd = 0.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = APurple)) {
                    Text(if (busy) "…" else "تم", fontSize = 20.sp, fontWeight = FontWeight.Bold)
                }
            }
        }
    }
}
