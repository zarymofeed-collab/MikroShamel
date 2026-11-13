package com.zarinet.netcontrol.ui.screens

import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.speech.RecognizerIntent
import android.util.Base64
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.horizontalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextDirection
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.subscription.SupabaseApi
import com.zarinet.netcontrol.ui.theme.C
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayOutputStream

/* ================= مساعد ميكروتك الذكي — AI Doctor v3 =================
 * مستقل: لا يغيّر أي شاشة أو دالة موجودة.
 * الفحص قراءة فقط. التنفيذ فقط بعد موافقة صريحة، لأوامر من قائمة مسموحة، ومرة واحدة.
 * المحادثة: ترسل ملخص الفحص (بدون أي كلمة مرور أو سر) إلى دالة ai-doctor على السيرفر. */

object AiPrefs {
    private fun sp(c: Context) = c.getSharedPreferences("ai_doctor", Context.MODE_PRIVATE)
    fun enabled(c: Context) = sp(c).getBoolean("enabled", false)
    fun setEnabled(c: Context, v: Boolean) { sp(c).edit().putBoolean("enabled", v).apply() }
    fun log(c: Context): List<JSONObject> {
        val out = ArrayList<JSONObject>()
        try { val a = JSONArray(sp(c).getString("log", "[]")); var i = 0; while (i < a.length()) { out.add(a.getJSONObject(i)); i++ } } catch (_: Exception) {}
        return out
    }
    fun addLog(c: Context, kind: String, title: String, detail: String, ok: Boolean) {
        val old = log(c); val a = JSONArray()
        val o = JSONObject(); o.put("k", kind); o.put("t", title); o.put("d", detail); o.put("ok", ok); o.put("at", System.currentTimeMillis())
        a.put(o); var i = 0; while (i < old.size && i < 99) { a.put(old[i]); i++ }
        sp(c).edit().putString("log", a.toString()).apply()
    }
    fun used(c: Context, token: String) = sp(c).getBoolean("x_$token", false)
    fun markUsed(c: Context, token: String) { sp(c).edit().putBoolean("x_$token", true).apply() }
}

class AiFix(val title: String, val explain: String, val cmdText: String, val path: String, val params: Map<String, String>)
class AiFinding(val sev: Int, val cat: String, val title: String, val cause: String, val evidence: List<String>, val impact: String, val advice: String, val fix: AiFix?)
class AiCheck(val icon: String, val title: String, val sev: Int, val detail: String)
class AiScan(val ok: Boolean, val error: String?, val facts: List<Pair<String, String>>, val findings: List<AiFinding>, val checks: List<AiCheck>,
             val raw: Map<String, String>, val context: String, val at: Long, val failed: List<String> = emptyList())

private fun n(s: String?): Long { if (s == null) return 0; var r = 0L; var seen = false; for (ch in s) { if (ch in '0'..'9') { r = r * 10 + (ch - '0'); seen = true } else if (seen) break }; return r }
private fun mb(b: Long) = if (b >= 1073741824) "${b / 1073741824} GB" else "${b / 1048576} MB"
private fun mx(a: Int, b: Int) = if (a > b) a else b

/* ---------- محرك التحقق: قائمة مسموحة فقط ---------- */
object AiValidator {
    private val ALLOWED = setOf("/radius/enable", "/ip/firewall/nat/disable", "/interface/enable", "/ip/dns/set", "/ip/service/disable")
    private val BLOCK = listOf("reset", "remove", "/system", "/user", "/file", "/password", "/import", "/export", "/tool/fetch", "/certificate")
    fun check(f: AiFix): String? {
        val p = f.path.lowercase()
        for (b in BLOCK) if (p.contains(b)) return "أمر محظور: ${f.path}"
        if (!ALLOWED.contains(f.path)) return "الأمر ليس ضمن القائمة المسموحة"
        if (f.path == "/ip/dns/set") { for (k in f.params.keys) if (k != "allow-remote-requests") return "معامل غير مسموح: $k" }
        else { for (k in f.params.keys) if (k != ".id") return "معامل غير مسموح: $k" }
        return null
    }
    fun token(f: AiFix) = (f.path + "|" + f.params.toString()).hashCode().toString(16)
}

/* ---------- جامع البيانات + المحلل (قراءة فقط) ---------- */
object AiEngine {
    suspend fun scan(): AiScan {
        try { Session.api() } catch (e: Exception) { return AiScan(false, "لا يوجد اتصال بالراوتر — اتصل براوتر أولاً", emptyList(), emptyList(), emptyList(), emptyMap(), "", System.currentTimeMillis()) }
        val facts = ArrayList<Pair<String, String>>(); val fs = ArrayList<AiFinding>(); val checks = ArrayList<AiCheck>(); val raw = HashMap<String, String>()
        val cx = StringBuilder(); val failed = ArrayList<String>()
        // كل قراءة تطلب الاتصال من جديد، فلو انقطع الاتصال يُعاد تلقائياً بدل فشل باقي الفحص
        suspend fun rd(path: String, props: List<String>): List<Map<String, String>> =
            try { Session.api().print(path, props) } catch (_: Exception) { if (!failed.contains(path)) failed.add(path); emptyList() }
        suspend fun cnt(path: String): Int = try { Session.api().count(path, emptyList()) } catch (_: Exception) { if (!failed.contains(path)) failed.add(path); -1 }
        fun chk(icon: String, title: String, sev: Int, detail: String, vararg paths: String): AiCheck {
            for (p in paths) if (failed.contains(p)) return AiCheck(icon, title, -1, "⚠️ تعذّرت القراءة من الراوتر")
            return AiCheck(icon, title, sev, detail)
        }
        fun num(v: Int) = if (v < 0) "؟" else v.toString()

        // ===== النظام =====
        val res = rd("/system/resource", listOf("cpu-load", "free-memory", "total-memory", "free-hdd-space", "total-hdd-space", "version", "uptime", "board-name", "architecture-name", "cpu-count"))
        var ver = ""; var cpu = 0L; var memPct = 0L; var hddFree = 0L
        val ident = rd("/system/identity", listOf("name")).firstOrNull()?.get("name").orEmpty()
        if (res.isNotEmpty()) {
            val r = res[0]; ver = r["version"].orEmpty(); cpu = n(r["cpu-load"])
            val tot = n(r["total-memory"]); val free = n(r["free-memory"]); memPct = if (tot > 0) (tot - free) * 100 / tot else 0
            hddFree = n(r["free-hdd-space"])
            facts.add("الاسم" to ident); facts.add("الجهاز" to r["board-name"].orEmpty()); facts.add("RouterOS" to ver)
            facts.add("المعالج" to "$cpu% (${r["cpu-count"] ?: "1"} نواة)"); facts.add("الذاكرة" to "$memPct% من ${mb(tot)}")
            facts.add("التخزين الحر" to mb(hddFree)); facts.add("مدة التشغيل" to r["uptime"].orEmpty())
            raw["cpu"] = cpu.toString(); raw["mem"] = memPct.toString(); raw["ver"] = ver
            cx.append("النظام: $ident | ${r["board-name"]} | RouterOS $ver | CPU $cpu% | RAM $memPct% من ${mb(tot)} | تخزين حر ${mb(hddFree)} | تشغيل ${r["uptime"]}\n")
        }
        val v7 = ver.startsWith("7")
        var sysSev = 0
        if (cpu >= 85) { sysSev = 2; fs.add(AiFinding(2, "النظام", "ارتفاع استهلاك المعالج", "المعالج عند $cpu%", listOf("cpu-load=$cpu%"), "بطء وتقطع للمشتركين", "راجع Queues والاتصالات وقواعد Mangle الثقيلة، واستخدم Torch على منفذ WAN", null)) }
        else if (cpu >= 60) { sysSev = 1; fs.add(AiFinding(1, "النظام", "المعالج مرتفع نسبياً", "المعالج عند $cpu%", listOf("cpu-load=$cpu%"), "ارتفاع Ping وقت الذروة", "راقب الاستهلاك وقت الذروة", null)) }
        if (memPct >= 90) { sysSev = 2; fs.add(AiFinding(2, "النظام", "الذاكرة شبه ممتلئة", "الذاكرة $memPct%", listOf("memory=$memPct%"), "قد يعيد الراوتر التشغيل", "قلل Address Lists الكبيرة والاتصالات، أو أعد التشغيل وقت الهدوء", null)) }
        if (hddFree in 1..5242880) { sysSev = mx(sysSev, 1); fs.add(AiFinding(1, "النظام", "التخزين شبه ممتلئ", "المتبقي ${mb(hddFree)}", listOf("free-hdd-space=${mb(hddFree)}"), "فشل حفظ الإعدادات أو النسخ الاحتياطي", "احذف الملفات القديمة (نسخ وسجلات) من قسم الملفات", null)) }
        val health = rd("/system/health", if (v7) listOf("name", "value") else listOf("temperature", "voltage", "cpu-temperature"))
        var temp = 0L; var volt = ""
        if (v7) { for (h in health) { val nm = h["name"].orEmpty(); if (nm.contains("temperature") && temp == 0L) temp = n(h["value"]); if (nm == "voltage") volt = h["value"].orEmpty() } }
        else if (health.isNotEmpty()) { temp = n(health[0]["temperature"] ?: health[0]["cpu-temperature"]); volt = health[0]["voltage"].orEmpty() }
        if (temp > 0) { facts.add("الحرارة" to "$temp°م"); raw["temp"] = temp.toString(); cx.append("الحرارة $temp°م الفولت $volt\n")
            if (temp >= 70) { sysSev = 2; fs.add(AiFinding(2, "النظام", "حرارة الراوتر عالية", "الحرارة $temp°م", listOf("temperature=$temp"), "قد يفصل الراوتر أو يتلف", "حسّن التهوية وتأكد من المروحة", null)) }
            else if (temp >= 45) fs.add(AiFinding(0, "النظام", "ارتفاع بسيط في درجة الحرارة", "الحرارة $temp°م", listOf("temperature=$temp"), "لا تأثير حالياً", "راقب التهوية", null)) }
        val rb = rd("/system/routerboard", listOf("current-firmware", "upgrade-firmware"))
        if (rb.isNotEmpty()) { val c = rb[0]["current-firmware"].orEmpty(); val u = rb[0]["upgrade-firmware"].orEmpty()
            if (c.isNotBlank() && u.isNotBlank() && c != u) fs.add(AiFinding(0, "النظام", "تحديث Firmware متاح", "الحالي $c والمتاح $u", listOf("current=$c", "upgrade=$u"), "لا تأثير مباشر", "حدّث من System › RouterBOARD › Upgrade ثم أعد التشغيل في وقت هادئ", null)) }
        checks.add(chk("🖥️", "حالة النظام", sysSev, "CPU $cpu% · RAM $memPct%" + if (temp > 0) " · $temp°م" else "", "/system/resource"))

        // ===== الواجهات =====
        val ifs = rd("/interface", listOf("name", "type", "running", "disabled", "comment"))
        var down = 0; val downNames = ArrayList<String>()
        for (i in ifs) if (i["type"] == "ether" && i["disabled"] != "true" && i["running"] != "true") { down++; if (downNames.size < 6) downNames.add(i["name"].orEmpty()) }
        cx.append("الواجهات (${ifs.size}): ")
        var k = 0; for (i in ifs) { if (k >= 40) break; cx.append("${i["name"]}[${i["type"]}${if (i["disabled"] == "true") ",معطلة" else if (i["running"] == "true") ",تعمل" else ",لا تعمل"}] "); k++ }
        cx.append("\n")
        checks.add(chk("🔌", "المنافذ والواجهات", 0, "${ifs.size} واجهة · $down منفذ إيثرنت بلا كابل" + if (downNames.isNotEmpty()) " (${downNames.joinToString("، ")})" else "", "/interface"))

        // ===== التوجيه =====
        val routes = rd("/ip/route", listOf("dst-address", "gateway", "active", "disabled", "distance"))
        var defOk = false; val defs = ArrayList<String>()
        for (r in routes) if (r["dst-address"] == "0.0.0.0/0") { defs.add("${r["gateway"]}${if (r["active"] == "true") "(نشط)" else "(غير نشط)"}"); if (r["active"] == "true") defOk = true }
        cx.append("المسارات الافتراضية: ${defs.joinToString(" ، ").ifBlank { "لا يوجد" }}\n")
        if (!defOk && !failed.contains("/ip/route")) fs.add(AiFinding(2, "الإنترنت", "لا يوجد مسار افتراضي نشط", "لا يوجد 0.0.0.0/0 نشط", listOf("المسارات: ${defs.joinToString("، ").ifBlank { "لا يوجد" }}"), "لا إنترنت للمشتركين", "تحقق من منفذ WAN وعميل DHCP/PPPoE للمزود أو أضف بوابة افتراضية", null))
        checks.add(chk("🧭", "التوجيه", if (defOk) 0 else 2, if (defOk) "المسار الافتراضي نشط" else "لا يوجد مسار افتراضي نشط", "/ip/route"))

        // ===== DHCP / DNS =====
        val dhcp = rd("/ip/dhcp-server", listOf("name", "disabled", "interface", "address-pool"))
        val leases = cnt("/ip/dhcp-server/lease")
        val dns = rd("/ip/dns", listOf("servers", "dynamic-servers", "allow-remote-requests", "cache-size", "cache-used"))
        var dnsSev = 0
        cx.append("DHCP: ${dhcp.size} خادم (${dhcp.joinToString { "${it["name"]}@${it["interface"]}" }}) · عقود ${num(leases)}\n")
        if (dns.isNotEmpty()) {
            val d = dns[0]; val srv = (d["servers"].orEmpty() + "," + d["dynamic-servers"].orEmpty()).trim(',')
            cx.append("DNS: خوادم=$srv remote=${d["allow-remote-requests"]} cache=${d["cache-used"]}/${d["cache-size"]}\n")
            if (srv.isBlank()) { dnsSev = 2; fs.add(AiFinding(2, "DNS", "لا يوجد خادم DNS", "إعدادات DNS فارغة", listOf("servers=\"\""), "المشتركون لا يفتحون المواقع", "أضف 8.8.8.8 و1.1.1.1 من إعدادات DNS", null)) }
            if (d["allow-remote-requests"] != "true" && dhcp.isNotEmpty()) { dnsSev = mx(dnsSev, 1)
                fs.add(AiFinding(1, "DNS", "الراوتر لا يجيب طلبات DNS", "allow-remote-requests معطّل", listOf("allow-remote-requests=no"), "إذا كان DHCP يعطي الراوتر كـ DNS فلن تفتح المواقع", "تفعيل استقبال طلبات DNS",
                    AiFix("تفعيل استقبال طلبات DNS", "يسمح للمشتركين باستخدام الراوتر كخادم DNS. لا يغيّر الخوادم الحالية.", "/ip dns set allow-remote-requests=yes", "/ip/dns/set", mapOf("allow-remote-requests" to "yes")))) }
        }
        checks.add(chk("📡", "DHCP و DNS", dnsSev, "${dhcp.size} خادم DHCP · ${num(leases)} عقد", "/ip/dhcp-server", "/ip/dns"))

        // ===== Firewall =====
        val nat = rd("/ip/firewall/nat", listOf(".id", "chain", "action", "out-interface", "src-address", "disabled", "comment"))
        val seen = HashMap<String, String>(); var natSev = 0
        for (r in nat) {
            if (r["disabled"] == "true" || r["action"] != "masquerade") continue
            val key = r["chain"].orEmpty() + "|" + r["out-interface"].orEmpty() + "|" + r["src-address"].orEmpty()
            val first = seen[key]
            if (first == null) seen[key] = r[".id"].orEmpty() else { natSev = 1
                fs.add(AiFinding(1, "Firewall", "قاعدة NAT مكررة", "قاعدتا masquerade متطابقتان", listOf("out-interface=${r["out-interface"].orEmpty()}", "القاعدة ${r[".id"]} تكرار لـ $first"), "استهلاك إضافي للمعالج", "تعطيل القاعدة المكررة (لا تُحذف)",
                    AiFix("تعطيل قاعدة NAT المكررة", "يعطّل القاعدة الثانية ويبقيها للتراجع. الأولى تبقى تعمل.", "/ip firewall nat disable ${r[".id"]}", "/ip/firewall/nat/disable", mapOf(".id" to r[".id"].orEmpty())))) }
        }
        val filt = cnt("/ip/firewall/filter"); val mangle = cnt("/ip/firewall/mangle"); val conns = cnt("/ip/firewall/connection")
        val lists = cnt("/ip/firewall/address-list")
        cx.append("Firewall: filter=${num(filt)} nat=${nat.size} mangle=${num(mangle)} اتصالات=${num(conns)} address-list=${num(lists)}\n")
        if (conns > 50000) fs.add(AiFinding(1, "Firewall", "عدد اتصالات كبير جداً", "$conns اتصال متتبَّع", listOf("connections=$conns"), "استهلاك ذاكرة ومعالج وقد يدل على تورنت/فيروس", "قلل مهلات Connection Tracking أو اكتشف الجهاز المسبب", null))
        checks.add(chk("🛡️", "Firewall / NAT / Mangle", natSev, "Filter ${num(filt)} · NAT ${nat.size} · Mangle ${num(mangle)} · اتصالات ${num(conns)}", "/ip/firewall/nat"))

        // ===== Queues =====
        val qs = rd("/queue/simple", listOf("name", "max-limit", "disabled", "dynamic", "target"))
        val qt = cnt("/queue/tree")
        var noLimit = 0; var dyn = 0
        for (q in qs) { if (q["dynamic"] == "true") { dyn++; continue }; if (q["disabled"] != "true" && (q["max-limit"].orEmpty() == "0/0" || q["max-limit"].isNullOrBlank())) noLimit++ }
        cx.append("Queues: simple=${qs.size} (ديناميكية $dyn، بلا حد $noLimit) tree=${num(qt)}\n")
        if (noLimit > 0) fs.add(AiFinding(1, "Queues", "وجود $noLimit قواعد في Queue بدون حد أقصى", "max-limit=0/0", listOf("$noLimit من ${qs.size - dyn} قاعدة ثابتة"), "قد يستهلك جهاز واحد السرعة كاملة", "حدد max-limit لكل قاعدة من قسم السرعات", null))
        checks.add(chk("🚦", "السرعات (Queues)", if (noLimit > 0) 1 else 0, "${qs.size} Simple · ${num(qt)} Tree", "/queue/simple"))

        // ===== Hotspot =====
        val hs = rd("/ip/hotspot", listOf("name", "disabled", "profile", "interface"))
        val act = cnt("/ip/hotspot/active"); val hsUsers = cnt("/ip/hotspot/user"); val hosts = cnt("/ip/hotspot/host")
        if (act >= 0) raw["active"] = act.toString()
        cx.append("Hotspot: ${hs.size} سيرفر (${hs.joinToString { "${it["name"]}@${it["interface"]}${if (it["disabled"] == "true") "(معطل)" else ""}" }}) متصل=${num(act)} مستخدمين=${num(hsUsers)} hosts=${num(hosts)}\n")
        var hsSev = 0; for (h in hs) if (h["disabled"] == "true") hsSev = 1
        checks.add(chk("📶", "الهوتسبوت", hsSev, "${hs.size} سيرفر · ${num(act)} متصل · ${num(hsUsers)} كرت", "/ip/hotspot", "/ip/hotspot/active"))

        // ===== User Manager =====
        val umPath = if (v7) "/user-manager/user" else "/tool/user-manager/user"
        val um = try { Session.api().count(umPath, emptyList()) } catch (_: Exception) { -1 }
        cx.append("User Manager: ${if (um < 0) "غير مثبت أو تعذّرت القراءة" else "$um مستخدم"}\n")
        checks.add(AiCheck("👥", "يوزر منجر", 0, if (um < 0) "غير مثبت أو غير مستخدم" else "$um كرت"))

        // ===== RADIUS =====
        val rad = rd("/radius", listOf(".id", "address", "service", "disabled", "authentication-port", "src-address", "comment", "timeout"))
        var radSev = 0
        cx.append("RADIUS: ")
        for (r in rad) cx.append("${r["address"]}:${r["authentication-port"] ?: "1812"}[${r["service"]},${if (r["disabled"] == "true") "معطل" else "مفعل"},timeout=${r["timeout"]},src=${r["src-address"]},${r["comment"]}] ")
        cx.append("\n")
        for (r in rad) if (r["disabled"] == "true" && r["comment"].orEmpty().startsWith("shamel")) { radSev = 2
            fs.add(AiFinding(2, "RADIUS", "مدخل RADIUS معطّل", "المدخل ${r["address"]} معطّل", listOf("comment=${r["comment"]}"), "كروت الراديوس لا تدخل عبر هذا الخادم", "تفعيل المدخل",
                AiFix("تفعيل مدخل RADIUS", "يعيد تفعيل المدخل كما هو بدون تغيير العنوان أو السر.", "/radius enable ${r[".id"]}", "/radius/enable", mapOf(".id" to r[".id"].orEmpty())))) }
        val l2 = try { Session.api().print("/interface/l2tp-client", listOf("name", "connect-to", "running", "disabled")) } catch (_: Exception) { emptyList<Map<String, String>>() }
        for (t in l2) if (t["name"].orEmpty().startsWith("shamel")) cx.append("نفق ${t["name"]} → ${t["connect-to"]} ${if (t["running"] == "true") "متصل" else "غير متصل"}\n")
        for (t in l2) if (t["name"].orEmpty().startsWith("shamel-rad") && t["disabled"] != "true" && t["running"] != "true") { radSev = mx(radSev, 1)
            fs.add(AiFinding(1, "RADIUS", "نفق الراديوس ${t["name"]} غير متصل", "النفق المباشر إلى ${t["connect-to"]} لا يعمل", listOf("running=false"), "الدخول ينتقل للخادم الآخر أو يتوقف", "افتح «السيرفرات» في التطبيق ليتحدّث النفق تلقائياً", null)) }

        // ===== PPP =====
        val pppA = cnt("/ppp/active"); val pppS = cnt("/ppp/secret")
        cx.append("PPP: حسابات=${num(pppS)} نشط=${num(pppA)}\n")
        checks.add(chk("🔗", "PPP / PPPoE", 0, "${num(pppA)} نشط من ${num(pppS)} حساب", "/ppp/active"))

        // ===== الوايرلس =====
        val wl = try { Session.api().count("/interface/wireless/registration-table", emptyList()) } catch (_: Exception) { -1 }
        if (wl >= 0) { cx.append("Wireless: عملاء مسجلين=$wl\n"); checks.add(AiCheck("📻", "الوايرلس", 0, "$wl عميل مسجّل")) }

        // ===== الأمان =====
        val svc = rd("/ip/service", listOf(".id", "name", "port", "disabled", "address"))
        var secSev = 0
        cx.append("الخدمات: ${svc.joinToString { "${it["name"]}:${it["port"]}${if (it["disabled"] == "true") "(معطلة)" else if (it["address"].isNullOrBlank()) "(مفتوحة للجميع)" else "(${it["address"]})"}" }}\n")
        for (s in svc) { val nm = s["name"].orEmpty()
            if ((nm == "telnet" || nm == "ftp") && s["disabled"] != "true") { secSev = mx(secSev, 1)
                fs.add(AiFinding(1, "الأمان", "خدمة $nm مفعّلة", "$nm غير مشفّرة وتعرض كلمة المرور", listOf("$nm port ${s["port"]}"), "خطر اختراق الراوتر", "تعطيل $nm (Winbox وAPI يبقيان يعملان)",
                    AiFix("تعطيل خدمة $nm", "يعطّل خدمة $nm فقط. لا يؤثر على Winbox أو التطبيق.", "/ip service disable $nm", "/ip/service/disable", mapOf(".id" to s[".id"].orEmpty())))) } }
        val users = rd("/user", listOf("name", "group", "disabled"))
        cx.append("مستخدمو الراوتر: ${users.joinToString { "${it["name"]}(${it["group"]})" }}\n")
        if (users.any { it["name"] == "admin" && it["disabled"] != "true" }) fs.add(AiFinding(0, "الأمان", "المستخدم الافتراضي admin مفعّل", "اسم المستخدم الافتراضي معروف للجميع", listOf("user=admin"), "تخمين أسهل لكلمة المرور", "أنشئ مستخدماً باسم مختلف بصلاحية full ثم عطّل admin", null))
        checks.add(chk("🔒", "الأمان", secSev, "${svc.count { it["disabled"] != "true" }} خدمة مفعّلة · ${users.size} مستخدم", "/ip/service", "/user"))

        // ===== السجلات =====
        val logs = rd("/log", listOf("time", "topics", "message"))
        var radTo = 0; var errs = 0; var loginFail = 0; val lastErr = ArrayList<String>()
        for (l in logs) { val m = l["message"].orEmpty(); val t = l["topics"].orEmpty()
            if (m.contains("radius", true) && (m.contains("timeout", true) || m.contains("not responding", true))) radTo++
            if (m.contains("login failure", true)) loginFail++
            if (t.contains("error") || t.contains("critical")) { errs++; if (lastErr.size < 8) lastErr.add("${l["time"]} ${m.take(110)}") } }
        cx.append("السجل (${logs.size} سطر): أخطاء=$errs مهلة-راديوس=$radTo فشل-دخول=$loginFail\nآخر الأخطاء:\n${lastErr.joinToString("\n")}\n")
        if (radTo > 0) { radSev = 2; fs.add(AiFinding(2, "RADIUS", "RADIUS لا يستجيب", "$radTo مهلة/عدم استجابة في سجل الراوتر", listOf("radius timeout × $radTo", "مداخل RADIUS: ${rad.size}"), "الكروت تظهر: الخادم لا يستجيب", "تحقق من نفق الراديوس وعنوان الخادم في «السيرفرات»", null)) }
        if (loginFail >= 10) fs.add(AiFinding(1, "الأمان", "محاولات دخول فاشلة كثيرة للراوتر", "$loginFail محاولة فاشلة", listOf("login failure × $loginFail"), "قد تكون محاولة اختراق", "قيّد الخدمات بعناوين محددة وغيّر كلمة المرور", null))
        if (errs > 0) fs.add(AiFinding(0, "السجلات", "$errs رسالة خطأ في السجل", "أخطاء حديثة", lastErr.take(3), "حسب نوع الخطأ", "اسأل المساعد عنها أو راجع قسم السجلات", null))
        checks.add(chk("🗄️", "RADIUS", radSev, if (rad.isEmpty()) "لا توجد مداخل RADIUS" else "${rad.size} مدخل" + if (radTo > 0) " · $radTo مهلة" else "", "/radius"))
        checks.add(chk("📜", "السجلات", if (errs > 5) 1 else 0, "${logs.size} سطر · $errs خطأ · $loginFail فشل دخول", "/log"))

        // ===== الإنترنت (آخر الفحص لأن ping يأخذ ثواني) =====
        var loss = -1L; var rtt = ""; var dnsLoss = -1L
        try { val p = Session.api().exec("/ping", mapOf("address" to "8.8.8.8", "count" to "3", "interval" to "200ms"))
            val last = if (p is List<*> && p.isNotEmpty()) p[p.size - 1] as? Map<*, *> else null
            if (last != null) { loss = n(last["packet-loss"]?.toString()); rtt = last["avg-rtt"]?.toString().orEmpty() } } catch (_: Exception) {}
        try { val p = Session.api().exec("/ping", mapOf("address" to "google.com", "count" to "2", "interval" to "200ms"))
            val last = if (p is List<*> && p.isNotEmpty()) p[p.size - 1] as? Map<*, *> else null
            if (last != null) dnsLoss = n(last["packet-loss"]?.toString()) } catch (_: Exception) { dnsLoss = 100 }
        cx.append("الإنترنت: ping 8.8.8.8 فقد=$loss% متوسط=$rtt | ping google.com فقد=$dnsLoss%\n")
        if (loss >= 100) fs.add(AiFinding(2, "الإنترنت", "لا يوجد اتصال بالإنترنت", "ping إلى 8.8.8.8 فشل", listOf("packet-loss=100%"), "كل المشتركين بلا إنترنت", "تحقق من منفذ WAN والمسار الافتراضي ومزود الخدمة", null))
        else if (loss in 0..99 && dnsLoss >= 100) fs.add(AiFinding(2, "DNS", "الإنترنت يعمل لكن DNS لا يحل الأسماء", "ping بالـ IP ينجح وبالاسم يفشل", listOf("8.8.8.8 فقد $loss%", "google.com فشل"), "المواقع لا تفتح بالأسماء", "تحقق من خوادم DNS في الراوتر", null))
        else if (loss in 1..99) fs.add(AiFinding(1, "الإنترنت", "فقد في الحزم", "فقد $loss% إلى 8.8.8.8", listOf("packet-loss=$loss%", "avg=$rtt"), "تقطع وبطء", "افحص الرابط مع المزود وجودة الإشارة", null))
        checks.add(if (checks.size > 0) 1 else 0, AiCheck("🌐", "الاتصال بالإنترنت", if (loss < 0) -1 else if (loss >= 100) 2 else if (loss > 0 || dnsLoss >= 100) 1 else 0, if (loss < 0) "⚠️ تعذّر القياس" else "فقد $loss% · $rtt"))

        if (failed.isNotEmpty()) {
            fs.add(AiFinding(1, "الفحص", "تعذّرت قراءة ${failed.size} قسم من الراوتر", "الاتصال انقطع أو القسم غير متاح", failed.take(8), "النتائج ناقصة لهذه الأقسام", "أعد الفحص، وإذا تكرر تأكد من صلاحيات مستخدم API", null))
            cx.append("تنبيه: تعذّرت قراءة: ${failed.joinToString()}\n")
        }
        val sorted = fs.sortedByDescending { it.sev }
        cx.append("\nالملاحظات المكتشفة:\n")
        for (f in sorted) cx.append("- [${if (f.sev == 2) "عالية" else if (f.sev == 1) "متوسطة" else "منخفضة"}] ${f.title}: ${f.cause}\n")
        return AiScan(true, null, facts, sorted, checks, raw, cx.toString(), System.currentTimeMillis(), failed)
    }

    suspend fun execute(c: Context, f: AiFix): String {
        val bad = AiValidator.check(f); if (bad != null) { AiPrefs.addLog(c, "deny", "رفض أمر غير آمن", f.cmdText + " — " + bad, false); return bad }
        val tok = AiValidator.token(f)
        if (AiPrefs.used(c, tok)) return "هذا الأمر نُفّذ سابقاً — منع التكرار"
        return try { Session.api().exec(f.path, f.params); AiPrefs.markUsed(c, tok); AiPrefs.addLog(c, "exec", f.title, f.cmdText, true); "تم التنفيذ بنجاح" }
        catch (e: Exception) { AiPrefs.addLog(c, "exec", f.title, f.cmdText + " — " + (e.message ?: "خطأ"), false); "فشل التنفيذ: ${e.message}" }
    }

    /** معرّف المحادثة الحالية على السيرفر (يُحفظ عبر الجلسة). */
    @Volatile var convId: String? = null
    /** مرحلة العمل الحالية لعرضها للمستخدم (مثلاً: يقرأ Firewall…). */
    val step = androidx.compose.runtime.mutableStateOf("")

    private fun post(token: String, body: JSONObject): JSONObject {
        val c = java.net.URL(com.zarinet.netcontrol.BuildConfig.SUPABASE_URL.trimEnd('/') + "/functions/v1/ai-doctor").openConnection() as java.net.HttpURLConnection
        try {
            c.requestMethod = "POST"; c.connectTimeout = 15000; c.readTimeout = 170000; c.doOutput = true
            c.setRequestProperty("apikey", com.zarinet.netcontrol.BuildConfig.SUPABASE_ANON_KEY)
            c.setRequestProperty("Authorization", "Bearer $token"); c.setRequestProperty("Content-Type", "application/json; charset=utf-8")
            val os = c.outputStream; os.write(body.toString().toByteArray(Charsets.UTF_8)); os.close()
            val code = c.responseCode
            val txt = (if (code in 200..299) c.inputStream else c.errorStream)?.bufferedReader(Charsets.UTF_8)?.readText().orEmpty()
            if (code == 401) throw SupabaseApi.ApiError(401, "سجّل الدخول أولاً")
            return try { JSONObject(txt) } catch (_: Exception) { JSONObject().put("status", "error").put("error", "رد غير مفهوم من السيرفر ($code)") }
        } finally { c.disconnect() }
    }
    private suspend fun call(body: JSONObject): JSONObject = kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.IO) {
        try { AuthService.authorized { t -> post(t, body) } }
        catch (e: java.io.IOException) {
            // انقطاع شبكة عابر (تبديل واي فاي/بيانات): محاولة واحدة فقط، وللرسالة الأولى فقط حتى لا تتكرر نتائج الأدوات
            // متابعة نتائج الأدوات آمنة للإعادة (السيرفر يتجاهل النتائج المكررة)، فتُعاد حتى 3 مرات. الرسالة الأولى مرة واحدة.
            if (e is java.net.SocketTimeoutException) throw e
            val tries = if (body.has("tool_results")) 3 else 1
            var last: java.io.IOException = e; var out: JSONObject? = null; var i = 0
            while (i < tries && out == null) { i++
                kotlinx.coroutines.delay(2000L * i)
                try { out = AuthService.authorized { t -> post(t, body) } } catch (e2: java.io.IOException) { last = e2 }
            }
            out ?: throw last
        }
    }
    private fun isBusy(err: String): Boolean { val e = err.lowercase(); if (e.contains("insufficient") || e.contains("api key")) return false
        return e.contains("quota") || e.contains("429") || e.contains("rate limit") || e.contains("exceeded") || e.contains("overloaded") || e.contains("503") || e.contains("502") }
    /** رسالة عربية واضحة بدل نص الخطأ الخام. */
    fun friendly(err: String?): String {
        val e = (err ?: "").lowercase()
        return when {
            // الرصيد والمفتاح أولاً (أخطاء OpenRouter 402/401 تأتي من السيرفر مع وصف إنجليزي)
            e.contains("insufficient") || e.contains("more credits") || e.contains("credit balance") || e.contains("billing") || e.contains(" 402") ->
                "رصيد خدمة الذكاء الاصطناعي نفد أو غير كافٍ حالياً. أبلغ الإدارة لشحن الرصيد، ثم أعد المحاولة."
            e.contains("api key") || e.contains("api_key") || e.contains(" 401") || e.contains("غير مُعد") ->
                "المساعد غير مُعدّ على السيرفر حالياً (مفتاح خدمة الذكاء الاصطناعي غير صالح أو غير مضبوط). أبلغ الإدارة."
            e.contains("quota") || e.contains("429") || e.contains("rate limit") || e.contains("exceeded") || e.contains("overloaded") || e.contains("503") || e.contains("502") ->
                "المساعد مشغول الآن بسبب ضغط الطلبات. انتظر دقيقة ثم أعد إرسال سؤالك."
            e.contains("connection abort") || e.contains("unable to resolve") || e.contains("failed to connect") || e.contains("timeout") || e.contains("timed out") || e.contains("reset") || e.contains("network") || e.contains("socket") || e.contains("ssl") ->
                "انقطع الاتصال بالإنترنت أثناء الطلب. تحقق من الشبكة ثم أعد إرسال سؤالك."
            (err ?: "").any { it in '\u0600'..'\u06FF' } -> err!!.take(160)
            else -> "تعذّر الوصول إلى المساعد الآن. أعد المحاولة بعد قليل."
        }
    }

    /** آخر نموذج أجاب، ومصدر بيانات آخر رد (عدد القراءات من الراوتر والسيرفر والمعرفة). */
    @Volatile var lastModel: String = ""
    @Volatile var lastSrc: String = ""
    /** «مصدر الرد: الراوتر (11) · السيرفر (1)» — يوضح للمستخدم أن الرد مبني على قراءات حقيقية وعددها. */
    fun srcText(tools: JSONArray?): String {
        if (tools == null) return ""
        var r = 0; var s = 0; var k = 0; var i = 0
        while (i < tools.length()) { val n = tools.optString(i); if (n.startsWith("router_")) r++ else if (n.startsWith("application_")) k++ else if (n != "propose_change") s++; i++ }
        val sb = StringBuilder()
        if (r > 0) sb.append("الراوتر (").append(r).append(")")
        if (s > 0) { if (sb.length > 0) sb.append(" · "); sb.append("السيرفر (").append(s).append(")") }
        if (k > 0) { if (sb.length > 0) sb.append(" · "); sb.append("المعرفة (").append(k).append(")") }
        return if (sb.length == 0) "" else "مصدر الرد: " + sb.toString()
    }
    private var infoKey: String? = null
    private var infoVal: Pair<String, String>? = null

    /** إصدار RouterOS وطراز الراوتر بقراءة واحدة خفيفة (بدل فحص شامل قبل كل سؤال). */
    suspend fun routerInfo(): Pair<String, String>? {
        val d = Session.device ?: return null
        val cached = infoVal
        if (infoKey == d.id && cached != null) return cached
        val r = try { Session.api().print("/system/resource", listOf("version", "board-name")) } catch (_: Exception) { null }
        if (r == null || r.isEmpty()) return null
        val v = Pair(r[0]["version"].orEmpty(), r[0]["board-name"].orEmpty())
        infoKey = d.id; infoVal = v
        return v
    }

    fun proposalText(p: JSONObject): String =
        "### 🛠️ اقتراح: " + p.optString("title") + "\n" + p.optString("explain") + "\n**الخطورة:** " + when (p.optString("risk")) { "high" -> "عالية"; "low" -> "منخفضة"; else -> "متوسطة" } +
            (if (p.optString("ros_version").isNotBlank()) " · RouterOS v" + p.optString("ros_version") else "") +
            "\n```\n" + p.optString("commands") + "\n```\n**التراجع:**\n```\n" + p.optString("rollback") + "\n```\n⚠️ لم يُنفَّذ شيء. انسخ الأوامر ونفّذها بنفسك بعد المراجعة."

    /** المحادثات السابقة للمستخدم (RLS: يرى محادثاته فقط). */
    suspend fun conversations(): List<JSONObject> = kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.IO) {
        val txt = AuthService.authorized { t -> SupabaseApi().rest("GET", "ai_conversations?select=id,title,router_name,net_key,updated_at&order=updated_at.desc&limit=40", null, t) }
        val a = JSONArray(txt); val out = ArrayList<JSONObject>()
        var i = 0; while (i < a.length()) { out.add(a.getJSONObject(i)); i++ }
        out
    }

    /** رسائل محادثة سابقة كما ظهرت للمستخدم (بدون طلبات الأدوات ونتائجها الداخلية). */
    suspend fun loadConversation(id: String): List<AiMsg> = kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.IO) {
        val txt = AuthService.authorized { t -> SupabaseApi().rest("GET", "ai_messages?conv_id=eq.$id&select=role,content,meta,created_at&order=id.asc&limit=300", null, t) }
        val a = JSONArray(txt); val out = ArrayList<AiMsg>()
        var i = 0
        while (i < a.length()) {
            val o = a.getJSONObject(i); i++
            val meta = o.optJSONObject("meta") ?: JSONObject(); val c = o.optString("content")
            val role = o.optString("role")
            if (role == "user") {
                var t = c
                if (meta.has("image_hash")) t = (t + "\n📷 صورة مرفقة").trim()
                val fn = meta.optString("file_name"); if (fn.isNotBlank()) t = (t + "\n📄 " + fn).trim()
                out.add(AiMsg(1, t.ifBlank { "—" }))
            } else if (role == "assistant" && c.isNotBlank() && !meta.optBoolean("hidden") && !meta.has("tool_calls")) {
                out.add(AiMsg(0, c, src = srcText(meta.optJSONArray("tools"))))
                val ps = meta.optJSONArray("proposals")
                if (ps != null) { var k = 0; while (k < ps.length()) { out.add(AiMsg(0, proposalText(ps.getJSONObject(k)))); k++ } }
            }
        }
        out
    }

    /**
     * سؤال المساعد عبر ai-doctor. أدوات الراوتر يطلبها النموذج وتُنفَّذ هنا قراءةً فقط
     * عبر AiTools ثم تُعاد نتائجها بعد حجب الأسرار. يُرجع (الرد، الاقتراحات، الخطأ).
     * المحرك يحدده السيرفر (OpenRouter)؛ التطبيق لا يرسل أي مفتاح ولا يختار المزود.
     */
    suspend fun ask(q: String, info: Pair<String, String>?, image: String?, file: Pair<String, String>? = null, mode: String = "diagnose"): Triple<String?, JSONArray?, String?> {
        val d = Session.device
        val router = JSONObject()
        if (d != null) { router.put("name", d.name); router.put("version", info?.first ?: ""); router.put("board", info?.second ?: "") }
        val net = d?.id ?: "none"
        fun base(): JSONObject {
            val b = JSONObject().put("action", "chat").put("net_key", net).put("mode", mode)
            if (d != null) b.put("router", router)
            return b
        }
        var body = base().put("message", q)
        if (image != null) body.put("image", image)
        if (file != null) body.put("file", JSONObject().put("name", file.first).put("text", AiTools.redactText(file.second)))
        val cid = convId; if (cid != null) body.put("conv_id", cid)
        lastModel = ""; lastSrc = ""
        return try {
            var round = 0; var busyRetries = 0
            while (true) {
                round++
                step.value = if (round == 1) "يفكّر ويحلّل…" else "يحلّل النتائج…"
                val r = call(body)
                r.optString("conv_id").takeIf { it.isNotBlank() }?.let { convId = it }
                when (r.optString("status")) {
                    "done" -> { step.value = ""; lastModel = r.optString("model"); lastSrc = srcText(r.optJSONArray("tools_used")); return Triple(r.optString("answer"), r.optJSONArray("proposals"), null) }
                    "tools" -> {
                        if (round > 8) return Triple(null, null, "تجاوز عدد الجولات")
                        val calls = r.getJSONArray("calls"); val res = JSONArray()
                        val api = try { Session.api() } catch (_: Exception) { null }
                        for (i in 0 until calls.length()) {
                            val c = calls.getJSONObject(i); val name = c.getString("name")
                            step.value = "يقرأ من الراوتر: " + AiTools.label(name) + "…"
                            val out = if (api == null) JSONObject().put("error", "لا يوجد اتصال بالراوتر")
                                      else try { AiTools.run(api, name, c.optJSONObject("args") ?: JSONObject()) } catch (e: Exception) { JSONObject().put("error", (e.message ?: "فشل").take(120)) }
                            res.put(JSONObject().put("id", c.getString("id")).put("name", name).put("output", out))
                        }
                        body = base().put("conv_id", convId).put("tool_results", res)
                        if (image != null) body.put("image", image)
                    }
                    else -> {
                        val err = r.optString("error").ifBlank { "لا يوجد رد" }
                        // ضغط مؤقت عند المزود أثناء متابعة الأدوات: انتظر وأعد نفس المتابعة (لا تُخصم حصة جديدة ولا تتكرر النتائج)
                        if (r.optString("status") != "quota" && body.has("tool_results") && busyRetries < 2 && isBusy(err)) {
                            busyRetries++; round--
                            step.value = "المساعد مشغول، إعادة المحاولة خلال لحظات…"
                            kotlinx.coroutines.delay(20000L * busyRetries)
                        } else { step.value = ""; return Triple(null, null, err) }
                    }
                }
            }
            @Suppress("UNREACHABLE_CODE") Triple(null, null, null)
        } catch (e: Exception) { step.value = ""; Triple(null, null, e.message ?: "تعذّر الاتصال بالسيرفر") }
    }

    fun offline(q: String, s: AiScan?): String {
        if (s == null || !s.ok) return "اضغط «فحص الشبكة» أولاً حتى أجيب من بيانات شبكتك الفعلية."
        val t = q.lowercase(); val rel = ArrayList<AiFinding>()
        fun has(vararg k: String): Boolean { for (x in k) if (t.contains(x)) return true; return false }
        val cat = when { has("كرت", "كروت", "راديوس", "radius") -> "RADIUS"; has("dns", "مواقع") -> "DNS"; has("فايروول", "firewall", "nat") -> "Firewall"
            has("سرع", "queue", "بنق", "ping") -> "Queues"; has("أمان", "امان", "اختراق") -> "الأمان"; else -> "" }
        for (f in s.findings) if (cat.isEmpty() || f.cat == cat) rel.add(f)
        val sb = StringBuilder()
        if (rel.isEmpty()) sb.append("✅ لم أجد مشكلة مرتبطة بسؤالك في آخر فحص.")
        for (f in rel.take(5)) sb.append("• **${f.title}**\nالسبب: ${f.cause}\nالحل: ${f.advice}\n\n")
        return sb.toString().trim()
    }
}

/** رسالة في المحادثة: kind 0 = المساعد، 1 = المستخدم، 2 = بطاقة فحص محلي، 3 = خطأ (مع إعادة المحاولة) */
class AiMsg(val kind: Int, val text: String, val scan: AiScan? = null, val img: ImageBitmap? = null, val retry: String? = null, val model: String = "", val src: String = "")

/* =================== الألوان: تدرج أخضر ← برتقالي (مطابق للتصميم المرجعي) =================== */
private class AiPal(dark: Boolean) {
    val g1 = Color(0xFF3B7A68)                  // أخضر
    val g2 = Color(0xFFFF7849)                  // برتقالي
    val grad = Brush.horizontalGradient(listOf(g1, g2))
    val gradD = Brush.linearGradient(listOf(g1, g2))
    val head1 = g1; val head2 = Color(0xFF2E6656)
    val green = Color(0xFF2E9C7C); val greenD = if (dark) Color(0xFF6FD3B3) else Color(0xFF2F6F5E)
    val sheet = if (dark) Color(0xFF0E1A1F) else Color(0xFFF6F8F8)
    val body = if (dark) Color(0xFF101C21) else Color(0xFFFFFFFF)
    val botBub = if (dark) Color(0xFF18292F) else Color(0xFFF3F5F6)
    val botBd = if (dark) Color(0xFF243A41) else Color(0xFFE6EBEA)
    val userBub = if (dark) Color(0xFF2F6F5E) else Color(0xFF3B7A68)
    val chipBg = if (dark) Color(0xFF132328) else Color(0xFFFFFFFF)
    val chipBd = if (dark) Color(0xFF2A4047) else Color(0xFFDCE6E2)
    val divider = if (dark) Color(0xFF22343A) else Color(0xFFE6ECEA)
    val errBg = if (dark) Color(0xFF3A1E22) else Color(0xFFFFF3EF)
    val errBd = if (dark) Color(0xFF6B2E35) else Color(0xFFFFD3C6)
    val codeBg = if (dark) Color(0xFF0B1A1E) else Color(0xFFE9F1EE)
    val codeFg = if (dark) Color(0xFF9EF0D2) else Color(0xFF1F5C4C)
    val card = if (dark) Color(0xFF14252A) else Color(0xFFF2F8F6)
    val cardBd = if (dark) Color(0xFF24443C) else Color(0xFFC9E2D8)
    val text = if (dark) Color(0xFFE7F0EE) else Color(0xFF1B2430)
    val dim = if (dark) Color(0xFF9DB1B5) else Color(0xFF6B7684)
    val purpleBg = if (dark) Color(0xFF2B2550) else Color(0xFFEDE7FB)
    val purple = if (dark) Color(0xFFC6B8FF) else Color(0xFF6B4BC8)
    val field = if (dark) Color(0xFF172A30) else Color(0xFFF4F6F9)
    val red = Color(0xFFE5484D); val amber = Color(0xFFE5A100)
    val userAv = if (dark) Color(0xFF2A3A44) else Color(0xFFD5DBE5)
}
private fun sevColor(s: Int): Color = when (s) { 2 -> C.Red; 1 -> C.Gold; -1 -> C.Dim; else -> C.Green }
private fun sevText(s: Int) = when (s) { 2 -> "عالية"; 1 -> "متوسطة"; else -> "منخفضة" }

object AiDoctorState {
    val enabled = mutableStateOf<Boolean?>(null)
    val scan = mutableStateOf<AiScan?>(null)
    val chat = mutableStateListOf<AiMsg>()
}

/* اقتراحات سريعة: (النص، الوضع) */
private val AI_SUGG = listOf(
    Pair("افحص شبكتي وأخبرني بالمشاكل", "diagnose"),
    Pair("لماذا لا تعمل كروت الراديوس؟", "diagnose"),
    Pair("حلّل أداء الراوتر وإعداداته", "diagnose"),
    Pair("اشرح لي أقسام تطبيق ميكروتك الشامل", "consult"),
    Pair("كيف أطبع كروت هوتسبوت من التطبيق؟", "consult"),
)
private fun followUps(mode: String): List<String> = when (mode) {
    "consult" -> listOf("اشرح أكثر بمثال عملي", "أين أجد ذلك في التطبيق؟")
    "execute" -> listOf("اعرض أوامر التراجع", "ما تأثير ذلك على المشتركين؟")
    else -> listOf("اقترح الحل خطوة بخطوة", "أعطني أوامر RouterOS للإصلاح", "اعرض آخر أخطاء سجل الراوتر")
}

/* ---------- بطاقة التفعيل في «الإضافات» ---------- */
@Composable
fun AiAddonRow() {
    val ctx = LocalContext.current
    var on by remember { mutableStateOf(AiPrefs.enabled(ctx)) }
    val g = Brush.linearGradient(listOf(Color(0xFF3B7A68), Color(0xFFFF7849)))
    Row(Modifier.fillMaxWidth().padding(horizontal = 14.dp, vertical = 6.dp).clip(RoundedCornerShape(18.dp))
        .background(if (on) Brush.horizontalGradient(listOf(Color(0xFF3B7A68).copy(alpha = 0.14f), Color(0xFFFF7849).copy(alpha = 0.10f))) else Brush.horizontalGradient(listOf(C.Card, C.Card)))
        .border(1.5.dp, if (on) Color(0xFF3B7A68) else C.Border, RoundedCornerShape(18.dp)).padding(12.dp),
        verticalAlignment = Alignment.CenterVertically) {
        Box(Modifier.size(46.dp).clip(RoundedCornerShape(14.dp)).background(g), contentAlignment = Alignment.Center) {
            Icon(Icons.Filled.SmartToy, null, tint = Color.White, modifier = Modifier.size(26.dp)) }
        Spacer(Modifier.width(12.dp))
        Column(Modifier.weight(1f)) {
            Text("مساعد ميكروتك الذكي", fontWeight = FontWeight.Bold, color = C.Text, fontSize = 15.sp)
            Text("فحص كامل للراوتر ومهندس يجيب عن أي سؤال. لا ينفّذ شيئاً بدون موافقتك.", color = C.Dim, fontSize = 12.sp, lineHeight = 17.sp)
        }
        Switch(checked = on, onCheckedChange = { on = it; AiPrefs.setEnabled(ctx, it); AiDoctorState.enabled.value = it },
            colors = SwitchDefaults.colors(checkedTrackColor = Color(0xFF3B7A68)))
    }
}

/* ---------- الزر العائم ---------- */
@Composable
fun AiFloat() {
    val ctx = LocalContext.current
    if (AiDoctorState.enabled.value == null) AiDoctorState.enabled.value = AiPrefs.enabled(ctx)
    if (AiDoctorState.enabled.value != true) return
    var open by remember { mutableStateOf(false) }
    var ox by remember { mutableStateOf(0f) }; var oy by remember { mutableStateOf(0f) }
    Popup(alignment = Alignment.BottomStart, offset = IntOffset(ox.toInt() + 36, oy.toInt() - 230), properties = PopupProperties(focusable = false)) {
        Box(Modifier.size(62.dp).shadow(10.dp, CircleShape).clip(CircleShape).background(Brush.linearGradient(listOf(Color(0xFF3B7A68), Color(0xFFFF7849))))
            .border(3.dp, Color.White.copy(alpha = 0.75f), CircleShape)
            .pointerInput(Unit) { detectDragGestures { ch, d -> ch.consume(); ox += d.x; oy += d.y } }
            .clickable { open = true }, contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Icon(Icons.Filled.SmartToy, null, tint = Color.White, modifier = Modifier.size(24.dp))
                Text("AI", color = Color.White, fontSize = 10.sp, fontWeight = FontWeight.Bold, lineHeight = 10.sp)
            }
        }
    }
    if (open) AiSheet { open = false }
}

/* ---------- نافذة المساعد ---------- */
@Composable
fun AiSheet(onClose: () -> Unit) {
    val ctx = LocalContext.current; val scope = rememberCoroutineScope()
    val P = remember { AiPal(C.Bg.luminance() < 0.4f) }
    var full by remember { mutableStateOf(false) }
    var busy by remember { mutableStateOf(false) }
    var thinking by remember { mutableStateOf(false) }
    var details by remember { mutableStateOf(false) }
    var showLog by remember { mutableStateOf(false) }
    var showHist by remember { mutableStateOf(false) }
    var menu by remember { mutableStateOf(false) }
    var q by remember { mutableStateOf("") }
    var pickedB64 by remember { mutableStateOf<String?>(null) }
    var pickedImg by remember { mutableStateOf<ImageBitmap?>(null) }
    var pendingFile by remember { mutableStateOf<Pair<String, String>?>(null) }
    var mode by remember { mutableStateOf("diagnose") }
    val chat = AiDoctorState.chat
    val sc = rememberScrollState()
    val opened = remember { System.currentTimeMillis() }

    fun ask(text: String, img: String? = null, thumb: ImageBitmap? = null, modeOverride: String? = null, echo: Boolean = true) {
        val t = text.trim(); if ((t.isEmpty() && img == null) || thinking) return
        if (modeOverride != null) mode = modeOverride
        val m = mode
        if (echo) chat.add(AiMsg(1, t.ifEmpty { "حلل هذه الصورة" }, null, thumb))
        val file = pendingFile; pendingFile = null
        thinking = true
        scope.launch {
            val info = AiEngine.routerInfo()
            val r = AiEngine.ask(t.ifEmpty { "حلل هذه الصورة واشرح المشكلة والحل" }, info, img, file, m)
            thinking = false
            val ans = r.first
            if (ans != null) {
                chat.add(AiMsg(0, ans, model = AiEngine.lastModel, src = AiEngine.lastSrc))
                val ps = r.second
                if (ps != null) { var i = 0; while (i < ps.length()) { chat.add(AiMsg(0, AiEngine.proposalText(ps.getJSONObject(i)))); i++ } }
            } else chat.add(AiMsg(3, AiEngine.friendly(r.third), retry = if (img == null && file == null && t.isNotEmpty()) t else null))
        }
    }
    fun runScan(userText: String?) {
        if (busy || thinking) return
        if (userText != null) chat.add(AiMsg(1, userText))
        busy = true; thinking = true
        scope.launch {
            val r = AiEngine.scan(); AiDoctorState.scan.value = r; busy = false; thinking = false
            AiPrefs.addLog(ctx, "scan", "فحص شامل", if (r.ok) "${r.findings.size} ملاحظة" else (r.error ?: ""), r.ok)
            if (r.ok) chat.add(AiMsg(2, "", r)) else chat.add(AiMsg(3, r.error ?: "تعذّر الفحص"))
        }
    }
    fun newChat() { if (!thinking) { chat.clear(); AiEngine.convId = null } }
    fun openConv(id: String) {
        if (thinking) return
        thinking = true
        scope.launch {
            try { val l = AiEngine.loadConversation(id); chat.clear(); chat.addAll(l); AiEngine.convId = id }
            catch (e: Exception) { chat.add(AiMsg(3, AiEngine.friendly(e.message))) }
            thinking = false
        }
    }
    fun send() { val t = q.ifBlank { if (pendingFile != null) "حلل هذا الملف" else "" }; val b = pickedB64; val th = pickedImg; if (t.isBlank() && b == null) return; q = ""; pickedB64 = null; pickedImg = null; ask(t, b, th) }

    // الميكروفون: تحويل الكلام إلى نص
    val mic = rememberLauncherForActivityResult(ActivityResultContracts.StartActivityForResult()) { res ->
        val l = res.data?.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS)
        if (!l.isNullOrEmpty()) q = (q + " " + l[0]).trim()
    }
    // المرفق: صورة، أو ملف نصي (.rsc .txt .log .conf …) يُقرأ ويُحجب ما فيه من أسرار قبل الإرسال
    val pick = rememberLauncherForActivityResult(ActivityResultContracts.GetContent()) { uri: Uri? ->
        if (uri != null) {
            val mime = try { ctx.contentResolver.getType(uri) } catch (_: Exception) { null } ?: ""
            if (mime.startsWith("image/")) {
                val r = loadImage(ctx, uri); if (r != null) { pickedB64 = r.first; pickedImg = r.second } else android.widget.Toast.makeText(ctx, "تعذّر قراءة الصورة", android.widget.Toast.LENGTH_SHORT).show()
            } else {
                val f = loadTextFile(ctx, uri)
                if (f != null) pendingFile = f else android.widget.Toast.makeText(ctx, "الملف غير مدعوم — أرسل صورة أو ملفاً نصياً (rsc/txt/log/conf)", android.widget.Toast.LENGTH_LONG).show()
            }
        }
    }
    LaunchedEffect(chat.size, thinking) { if (chat.size > 0 || thinking) sc.animateScrollTo(sc.maxValue) }

    Dialog(onDismissRequest = onClose, properties = DialogProperties(usePlatformDefaultWidth = false, decorFitsSystemWindows = false)) {
        Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.35f)).statusBarsPadding().imePadding(), contentAlignment = Alignment.BottomCenter) {
            Column(Modifier.fillMaxWidth().fillMaxHeight(if (full) 1f else 0.92f).clip(RoundedCornerShape(topStart = 30.dp, topEnd = 30.dp)).background(P.grad)) {
                // ===== الرأس: صورة المساعد + الاسم + (… و —) =====
                Row(Modifier.fillMaxWidth().padding(start = 16.dp, end = 12.dp, top = 14.dp, bottom = 12.dp), verticalAlignment = Alignment.CenterVertically) {
                    Box(Modifier.size(54.dp).clip(CircleShape).background(Color.White).border(2.dp, Color.White.copy(alpha = 0.7f), CircleShape), contentAlignment = Alignment.Center) {
                        Icon(Icons.Filled.SmartToy, null, tint = P.g1, modifier = Modifier.size(32.dp))
                    }
                    Spacer(Modifier.width(12.dp))
                    Column(Modifier.weight(1f)) {
                        Text("مساعد ميكروتك", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 18.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        Text("اسألني عن شبكتك وراوترك", color = Color.White.copy(alpha = 0.9f), fontSize = 12.5.sp, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    }
                    Box {
                        HeadBtn(Icons.Filled.MoreHoriz) { menu = true }
                        DropdownMenu(expanded = menu, onDismissRequest = { menu = false }) {
                            DropdownMenuItem(text = { Text("محادثة جديدة") }, leadingIcon = { Icon(Icons.Filled.Add, null) }, onClick = { menu = false; newChat() })
                            DropdownMenuItem(text = { Text("المحادثات السابقة") }, leadingIcon = { Icon(Icons.Filled.History, null) }, onClick = { menu = false; showHist = true })
                            DropdownMenuItem(text = { Text("فحص محلي سريع (بدون ذكاء اصطناعي)") }, leadingIcon = { Icon(Icons.Filled.MonitorHeart, null) }, onClick = { menu = false; runScan("فحص محلي سريع للشبكة") })
                            DropdownMenuItem(text = { Text("سجل العمليات") }, leadingIcon = { Icon(Icons.Filled.Description, null) }, onClick = { menu = false; showLog = true })
                            DropdownMenuItem(text = { Text(if (full) "تصغير النافذة" else "ملء الشاشة") }, leadingIcon = { Icon(if (full) Icons.Filled.CloseFullscreen else Icons.Filled.OpenInFull, null) }, onClick = { menu = false; full = !full })
                        }
                    }
                    Spacer(Modifier.width(8.dp))
                    HeadBtn(Icons.Filled.Remove) { onClose() }
                }
                // ===== جسم المحادثة (بطاقة بيضاء داخل الإطار المتدرّج) =====
                Column(Modifier.weight(1f).fillMaxWidth().padding(horizontal = 5.dp).clip(RoundedCornerShape(topStart = 26.dp, topEnd = 26.dp)).background(P.body)) {
                    Column(Modifier.weight(1f).verticalScroll(sc).padding(horizontal = 14.dp, vertical = 12.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                        DateSep(P, opened)
                        BotRow(P) {
                            Text("مرحباً، أنا مساعد ميكروتك 👋", color = P.text, fontWeight = FontWeight.Bold, fontSize = 15.sp)
                            Text("كيف يمكنني مساعدتك؟ أقرأ بيانات راوترك الحقيقية (قراءة فقط) وأجيب من قاعدة معرفة التطبيق.", color = P.text, fontSize = 14.sp, lineHeight = 22.sp)
                        }
                        if (chat.isEmpty()) {
                            val labels = ArrayList<String>(); var k = 0; while (k < AI_SUGG.size) { labels.add(AI_SUGG[k].first); k++ }
                            Chips(P, labels, 0) { i -> ask(AI_SUGG[i].first, modeOverride = AI_SUGG[i].second) }
                        }
                        var idx = 0
                        while (idx < chat.size) {
                            val m = chat[idx]; val ms = m.scan; val isLast = idx == chat.size - 1
                            when {
                                m.kind == 1 -> UserRow(P, m)
                                m.kind == 2 && ms != null -> ScanCard(P, ms, onDetails = { details = true }, onSolve = { ask("اقترح حلولاً مفصّلة لكل المشاكل التي وجدتها في الفحص، مع أوامر RouterOS المناسبة لإصدار الراوتر", modeOverride = "diagnose") }, onRescan = { runScan(null) })
                                m.kind == 3 -> {
                                    BotRow(P, err = true) { Text("⚠️ " + m.text, color = P.text, fontSize = 14.sp, lineHeight = 21.sp) }
                                    val rt = m.retry
                                    if (rt != null && isLast && !thinking) Chips(P, listOf("إعادة المحاولة"), 0) { chat.remove(m); ask(rt, echo = false) }
                                }
                                else -> {
                                    BotRow(P) { RichText(P, m.text) }
                                    BubbleTools(P, m)
                                    if (isLast && !thinking) Chips(P, followUps(mode), -1) { i -> ask(followUps(mode)[i]) }
                                }
                            }
                            idx++
                        }
                        if (thinking) BotRow(P) { Row(verticalAlignment = Alignment.CenterVertically) {
                            CircularProgressIndicator(Modifier.size(16.dp), strokeWidth = 2.dp, color = P.g1); Spacer(Modifier.width(8.dp))
                            Text(if (busy) "جارٍ فحص الراوتر (قراءة فقط)…" else AiEngine.step.value.ifBlank { "يفكّر ويحلّل…" }, color = P.dim, fontSize = 13.sp) } }
                    }
                    // ===== المرفقات المختارة =====
                    val pf = pendingFile; val th = pickedImg
                    if (pf != null || th != null) Row(Modifier.fillMaxWidth().padding(horizontal = 14.dp, vertical = 4.dp), verticalAlignment = Alignment.CenterVertically) {
                        Row(Modifier.clip(RoundedCornerShape(14.dp)).background(P.botBub).border(1.dp, P.botBd, RoundedCornerShape(14.dp)).padding(6.dp), verticalAlignment = Alignment.CenterVertically) {
                            if (th != null) Image(th, null, contentScale = ContentScale.Crop, modifier = Modifier.size(40.dp).clip(RoundedCornerShape(10.dp)))
                            else Icon(Icons.Filled.Description, null, tint = P.g1, modifier = Modifier.size(28.dp))
                            Spacer(Modifier.width(8.dp))
                            Text(if (th != null) "صورة مرفقة" else (pf?.first ?: "") + " · " + (pf?.second?.length ?: 0) + " حرف", color = P.text, fontSize = 12.sp, maxLines = 1, overflow = TextOverflow.Ellipsis, modifier = Modifier.widthIn(max = 220.dp))
                            Spacer(Modifier.width(6.dp))
                            Icon(Icons.Filled.Close, "إزالة", tint = P.dim, modifier = Modifier.size(20.dp).clickable { pendingFile = null; pickedB64 = null; pickedImg = null })
                        }
                    }
                    // ===== أوضاع المساعد =====
                    Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(horizontal = 12.dp, vertical = 6.dp), horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                        val modes = listOf(Pair("consult", "استشارة"), Pair("diagnose", "تشخيص"), Pair("execute", "اقتراح تعديلات"))
                        var k = 0
                        while (k < modes.size) {
                            val key = modes[k].first; val on = mode == key; val sh = RoundedCornerShape(50)
                            Text(modes[k].second, color = if (on) Color.White else P.dim, fontSize = 12.sp, fontWeight = FontWeight.Bold, maxLines = 1, softWrap = false,
                                modifier = Modifier.clip(sh).background(if (on) P.grad else SolidColor(P.botBub)).clickable { mode = key }.padding(horizontal = 14.dp, vertical = 6.dp))
                            k++
                        }
                    }
                    Box(Modifier.fillMaxWidth().height(1.dp).background(P.divider))
                    // ===== شريط الكتابة =====
                    Row(Modifier.fillMaxWidth().padding(start = 16.dp, end = 10.dp, top = 8.dp, bottom = 8.dp + navBarDp(ctx)), verticalAlignment = Alignment.CenterVertically) {
                        Box(Modifier.weight(1f).padding(vertical = 8.dp)) {
                            if (q.isEmpty()) Text("اكتب رسالتك…", color = P.dim, fontSize = 15.sp)
                            BasicTextField(q, { q = it }, textStyle = TextStyle(color = P.text, fontSize = 15.sp, textDirection = TextDirection.Content), maxLines = 5, cursorBrush = SolidColor(P.g1), modifier = Modifier.fillMaxWidth())
                        }
                        InBtn(P, Icons.Filled.Mic) {
                            try { mic.launch(Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM).putExtra(RecognizerIntent.EXTRA_LANGUAGE, "ar").putExtra(RecognizerIntent.EXTRA_PROMPT, "تكلّم بسؤالك"))
                            } catch (_: Exception) { android.widget.Toast.makeText(ctx, "التعرف على الصوت غير متاح على هذا الجهاز", android.widget.Toast.LENGTH_SHORT).show() }
                        }
                        InBtn(P, Icons.Filled.AttachFile) { try { pick.launch("*/*") } catch (_: Exception) {} }
                        Spacer(Modifier.width(6.dp))
                        Box(Modifier.size(50.dp).shadow(4.dp, CircleShape).clip(CircleShape).background(P.gradD).clickable { send() }, contentAlignment = Alignment.Center) {
                            if (thinking) CircularProgressIndicator(Modifier.size(20.dp), strokeWidth = 2.dp, color = Color.White)
                            else Icon(Icons.Filled.Send, "إرسال", tint = Color.White, modifier = Modifier.size(22.dp))
                        }
                    }
                }
            }
        }
    }
    val s = AiDoctorState.scan.value
    if (details && s != null) AiDetails(P, s, onClose = { details = false }, onRescan = { details = false; runScan(null) }, onAsk = { details = false; ask(it) })
    if (showLog) AiLogDialog(P) { showLog = false }
    if (showHist) AiHistoryDialog(P, onClose = { showHist = false }, onOpen = { id -> showHist = false; openConv(id) })
}

/* ---------- مكوّنات المحادثة ---------- */
@Composable private fun HeadBtn(ic: ImageVector, onClick: () -> Unit) {
    Box(Modifier.size(42.dp).clip(CircleShape).background(Color.White.copy(alpha = 0.22f)).clickable { onClick() }, contentAlignment = Alignment.Center) { Icon(ic, null, tint = Color.White, modifier = Modifier.size(22.dp)) }
}
@Composable private fun InBtn(P: AiPal, ic: ImageVector, onClick: () -> Unit) {
    Box(Modifier.size(40.dp).clip(CircleShape).clickable { onClick() }, contentAlignment = Alignment.Center) { Icon(ic, null, tint = P.dim, modifier = Modifier.size(24.dp)) }
}
@Composable private fun DateSep(P: AiPal, at: Long) {
    Text("اليوم · " + java.text.SimpleDateFormat("HH:mm", java.util.Locale.US).format(java.util.Date(at)), color = P.dim, fontSize = 12.sp, textAlign = TextAlign.Center, modifier = Modifier.fillMaxWidth())
}
@Composable private fun BotAvatar(P: AiPal) {
    Box(Modifier.size(30.dp).clip(CircleShape).background(P.gradD), contentAlignment = Alignment.Center) { Icon(Icons.Filled.AutoAwesome, null, tint = Color.White, modifier = Modifier.size(16.dp)) }
}
@Composable private fun BotRow(P: AiPal, err: Boolean = false, content: @Composable ColumnScope.() -> Unit) {
    Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.Top) {
        BotAvatar(P); Spacer(Modifier.width(8.dp))
        val sh = RoundedCornerShape(topStart = 4.dp, topEnd = 18.dp, bottomEnd = 18.dp, bottomStart = 18.dp)
        Column(Modifier.weight(1f, fill = false).clip(sh).background(if (err) P.errBg else P.botBub).border(1.dp, if (err) P.errBd else P.botBd, sh).padding(horizontal = 14.dp, vertical = 11.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp), content = content)
        Spacer(Modifier.width(26.dp))
    }
}
@Composable private fun UserRow(P: AiPal, m: AiMsg) {
    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.End) {
        Spacer(Modifier.width(48.dp))
        val sh = RoundedCornerShape(topStart = 18.dp, topEnd = 4.dp, bottomEnd = 18.dp, bottomStart = 18.dp)
        Column(Modifier.weight(1f, fill = false).clip(sh).background(P.userBub).padding(horizontal = 16.dp, vertical = 11.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
            val im = m.img
            if (im != null) Image(im, null, contentScale = ContentScale.Crop, modifier = Modifier.size(160.dp).clip(RoundedCornerShape(12.dp)))
            Text(m.text, color = Color.White, fontSize = 15.sp, lineHeight = 22.sp, style = TextStyle(textDirection = TextDirection.Content))
        }
    }
}
/** نسخ الرد (واسم النموذج في وضع اختبار المحرك فقط). */
@Composable private fun BubbleTools(P: AiPal, m: AiMsg) {
    val cb = LocalClipboardManager.current; val ctx = LocalContext.current
    Row(Modifier.fillMaxWidth().padding(start = 40.dp), verticalAlignment = Alignment.CenterVertically) {
        Text("نسخ الرد", color = P.dim, fontSize = 12.sp, modifier = Modifier.clip(RoundedCornerShape(8.dp)).clickable { cb.setText(AnnotatedString(m.text)); android.widget.Toast.makeText(ctx, "تم النسخ", android.widget.Toast.LENGTH_SHORT).show() }.padding(horizontal = 6.dp, vertical = 2.dp))
        // مصدر الرد: كم قراءة حقيقية بُني عليها (من الراوتر/السيرفر/المعرفة) — يلتف لسطرين بدل أن يُقص
        if (m.src.isNotBlank()) Text("· " + m.src, color = P.greenD, fontSize = 11.5.sp, maxLines = 2, overflow = TextOverflow.Ellipsis, modifier = Modifier.weight(1f, fill = false))
    }
}
/** اقتراحات سريعة بشكل كبسولات (المميَّز بإطار متدرّج). */
@Composable private fun Chips(P: AiPal, items: List<String>, hi: Int, onPick: (Int) -> Unit) {
    Column(Modifier.fillMaxWidth().padding(start = 38.dp), verticalArrangement = Arrangement.spacedBy(8.dp), horizontalAlignment = Alignment.Start) {
        var i = 0
        while (i < items.size) {
            val idx = i; val sh = RoundedCornerShape(50)
            Text(items[i], color = P.text, fontSize = 13.5.sp, style = TextStyle(textDirection = TextDirection.Content),
                modifier = Modifier.clip(sh).background(P.chipBg).border(if (i == hi) 1.5.dp else 1.dp, if (i == hi) P.grad else SolidColor(P.chipBd), sh).clickable { onPick(idx) }.padding(horizontal = 16.dp, vertical = 10.dp))
            i++
        }
    }
}
@Composable private fun ScanCard(P: AiPal, s: AiScan, onDetails: () -> Unit, onSolve: () -> Unit, onRescan: () -> Unit) {
    BotRow(P) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("تم فحص الشبكة بنجاح ", color = P.text, fontWeight = FontWeight.Bold, fontSize = 16.sp)
            Box(Modifier.size(22.dp).clip(RoundedCornerShape(5.dp)).background(Color(0xFF2EB872)), contentAlignment = Alignment.Center) { Icon(Icons.Filled.Check, null, tint = Color.White, modifier = Modifier.size(18.dp)) }
        }
        Text("النتائج:", color = P.text, fontWeight = FontWeight.SemiBold, fontSize = 14.sp)
        val cpu = s.raw["cpu"]?.toIntOrNull(); val mem = s.raw["mem"]?.toIntOrNull()
        CheckLine(P, "اتصال الراوتر: ", "متصل", true)
        if (cpu != null) CheckLine(P, "استهلاك المعالج: ", "$cpu% (${if (cpu < 60) "طبيعي" else if (cpu < 85) "مرتفع" else "مرتفع جداً"})", cpu < 85)
        if (mem != null) CheckLine(P, "الذاكرة: ", "$mem% (${if (mem < 70) "جيدة" else if (mem < 90) "مرتفعة" else "شبه ممتلئة"})", mem < 90)
        val notes = s.findings.filter { it.cat != "الفحص" }
        if (notes.isEmpty()) CheckLine(P, "لا توجد مشاكل", "", true)
        else {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(Icons.Filled.Warning, null, tint = P.amber, modifier = Modifier.size(20.dp)); Spacer(Modifier.width(4.dp))
                Text("ملاحظات: ", color = P.red, fontWeight = FontWeight.Bold, fontSize = 14.sp)
                Text("تم العثور على ${arNum(notes.size)}", color = P.text, fontSize = 14.sp)
            }
            for (i in notes.indices) { if (i >= 5) break; val f = notes[i]
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(Modifier.size(22.dp).clip(CircleShape).background(if (f.sev >= 1) P.red else P.amber), contentAlignment = Alignment.Center) { Text("${i + 1}", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold) }
                    Spacer(Modifier.width(8.dp))
                    Text(f.title + if (f.title.contains("حرارة") && s.raw["temp"] != null) "  (${s.raw["temp"]}°C)" else "", color = P.text, fontSize = 14.sp)
                }
            }
            if (notes.size > 5) Text("ملاحظات أخرى في التفاصيل: ${notes.size - 5}", color = P.dim, fontSize = 12.sp)
        }
        if (s.failed.isNotEmpty()) Text("⚠️ تعذّرت قراءة ${s.failed.size} قسم — أعد الفحص", color = P.amber, fontSize = 12.sp)
    }
    Row(Modifier.fillMaxWidth().padding(start = 38.dp), horizontalArrangement = Arrangement.spacedBy(6.dp)) {
        Pill2(Icons.Filled.ViewAgenda, "التفاصيل", Color.White, P.greenD, null, Modifier.weight(1f), onDetails)
        Pill2(Icons.Filled.Build, "الحلول", P.purple, P.purpleBg, null, Modifier.weight(1f), onSolve)
        Pill2(Icons.Filled.Refresh, "إعادة", P.text, P.sheet, P.botBd, Modifier.weight(1f), onRescan)
    }
}
private fun arNum(n: Int) = when (n) { 1 -> "مشكلة واحدة"; 2 -> "مشكلتين"; in 3..10 -> "$n مشاكل"; else -> "$n مشكلة" }
@Composable private fun CheckLine(P: AiPal, a: String, b: String, ok: Boolean) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Icon(if (ok) Icons.Filled.Check else Icons.Filled.Warning, null, tint = if (ok) Color(0xFF2EB872) else P.amber, modifier = Modifier.size(18.dp)); Spacer(Modifier.width(6.dp))
        Text(a, color = P.text, fontSize = 14.sp); if (b.isNotEmpty()) Text(b, color = P.text, fontSize = 14.sp, fontWeight = FontWeight.SemiBold)
    }
}
@Composable private fun Pill2(ic: ImageVector, t: String, fg: Color, bg: Color, bd: Color?, mod: Modifier, onClick: () -> Unit) {
    Row(mod.height(44.dp).clip(RoundedCornerShape(22.dp)).background(bg).then(if (bd != null) Modifier.border(1.dp, bd, RoundedCornerShape(22.dp)) else Modifier).clickable { onClick() }.padding(horizontal = 6.dp),
        verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.Center) {
        Icon(ic, null, tint = fg, modifier = Modifier.size(15.dp)); Spacer(Modifier.width(3.dp))
        Text(t, color = fg, fontSize = 12.sp, fontWeight = FontWeight.Bold, maxLines = 1)
    }
}

/** تنسيق ردود المساعد: كتل الكود ```، العناوين #، القوائم، **العريض**، `الكود السطري`، والجداول | */
@Composable private fun RichText(P: AiPal, text: String) {
    val parts = text.split("```"); var i = 0
    while (i < parts.size) {
        val p = parts[i]
        if (i % 2 == 1) { val code = p.substringAfter('\n', p).trim(); if (code.isNotEmpty()) CodeBox(code) }
        else {
            val lines = p.trim('\n').split('\n'); var j = 0
            while (j < lines.size) {
                val ln = lines[j].trimEnd()
                if (ln.isBlank()) { j++; continue }
                if (ln.trimStart().startsWith("|")) {
                    val rows = ArrayList<List<String>>()
                    while (j < lines.size && lines[j].trimStart().startsWith("|")) {
                        val cells = lines[j].trim().trim('|').split('|')
                        val clean = ArrayList<String>(); var sep = true
                        var c = 0; while (c < cells.size) { val x = cells[c].trim(); clean.add(x); if (x.isEmpty() || !x.all { ch -> ch == '-' || ch == ':' }) sep = false; c++ }
                        if (!sep) rows.add(clean)
                        j++
                    }
                    MdTable(P, rows); continue
                }
                val tl = ln.trim()
                if (tl == "---" || tl == "***" || tl == "___") { Box(Modifier.fillMaxWidth().padding(vertical = 2.dp).height(1.dp).background(P.botBd)); j++; continue }
                val head = ln.startsWith("#")
                var body = ln.trimStart('#', ' ')
                if (body.startsWith("- ") || body.startsWith("* ") || body.startsWith("• ")) body = "•  " + body.substring(2)
                Text(mdInline(P, body), color = if (head) P.greenD else P.text, fontSize = if (head) 15.sp else 14.sp,
                    fontWeight = if (head) FontWeight.Bold else FontWeight.Normal, lineHeight = 22.sp, style = TextStyle(textDirection = TextDirection.Content))
                j++
            }
        }
        i++
    }
}
private fun mdInline(P: AiPal, s: String): AnnotatedString {
    val b = AnnotatedString.Builder(); var k = 0
    while (k < s.length) {
        if (k + 1 < s.length && s[k] == '*' && s[k + 1] == '*') {
            val e = s.indexOf("**", k + 2)
            if (e > k + 2) { b.pushStyle(SpanStyle(fontWeight = FontWeight.Bold)); b.append(s.substring(k + 2, e)); b.pop(); k = e + 2; continue }
        }
        if (s[k] == '`') {
            val e = s.indexOf('`', k + 1)
            if (e > k + 1) { b.pushStyle(SpanStyle(fontFamily = FontFamily.Monospace, background = P.codeBg, color = P.codeFg)); b.append(s.substring(k + 1, e)); b.pop(); k = e + 1; continue }
        }
        b.append(s[k]); k++
    }
    return b.toAnnotatedString()
}
@Composable private fun MdTable(P: AiPal, rows: List<List<String>>) {
    if (rows.isEmpty()) return
    var n = 0; var r0 = 0; while (r0 < rows.size) { if (rows[r0].size > n) n = rows[r0].size; r0++ }
    Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(10.dp)).border(1.dp, P.botBd, RoundedCornerShape(10.dp))) {
        var ri = 0
        while (ri < rows.size) {
            val r = rows[ri]
            Row(Modifier.fillMaxWidth().background(if (ri == 0) P.g1.copy(alpha = 0.12f) else Color.Transparent).padding(horizontal = 6.dp, vertical = 6.dp)) {
                var ci = 0
                while (ci < n) {
                    Text(mdInline(P, if (ci < r.size) r[ci] else ""), color = P.text, fontSize = 12.5.sp, lineHeight = 18.sp, fontWeight = if (ri == 0) FontWeight.Bold else FontWeight.Normal,
                        style = TextStyle(textDirection = TextDirection.Content), modifier = Modifier.weight(1f).padding(horizontal = 3.dp))
                    ci++
                }
            }
            if (ri < rows.size - 1) Box(Modifier.fillMaxWidth().height(1.dp).background(P.botBd))
            ri++
        }
    }
}
@Composable
private fun CodeBox(t: String) {
    val cb = LocalClipboardManager.current; val ctx = LocalContext.current
    Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(12.dp)).background(Color(0xFF0B1A1E))) {
        Row(Modifier.fillMaxWidth().background(Color(0xFF13262B)).padding(horizontal = 10.dp, vertical = 5.dp), verticalAlignment = Alignment.CenterVertically) {
            Text("RouterOS", color = Color(0xFF7FA6A0), fontSize = 11.sp, modifier = Modifier.weight(1f))
            Text("📋 نسخ", color = Color(0xFF9EF0D2), fontSize = 12.sp, modifier = Modifier.clickable { cb.setText(AnnotatedString(t)); android.widget.Toast.makeText(ctx, "تم النسخ", android.widget.Toast.LENGTH_SHORT).show() })
        }
        Text(t, color = Color(0xFF9EF0D2), fontSize = 12.sp, fontFamily = FontFamily.Monospace, style = TextStyle(textDirection = TextDirection.Ltr), modifier = Modifier.fillMaxWidth().padding(10.dp))
    }
}

/* ---------- تفاصيل الفحص (مع طلب التنفيذ والموافقة) ---------- */
@Composable
private fun AiDetails(P: AiPal, s: AiScan, onClose: () -> Unit, onRescan: () -> Unit, onAsk: (String) -> Unit) {
    val ctx = LocalContext.current; val scope = rememberCoroutineScope()
    var openF by remember { mutableStateOf(-1) }
    var pending by remember { mutableStateOf<AiFix?>(null) }
    var msg by remember { mutableStateOf<String?>(null) }
    Dialog(onDismissRequest = onClose, properties = DialogProperties(usePlatformDefaultWidth = false, decorFitsSystemWindows = false)) {
        Column(Modifier.fillMaxSize().background(P.sheet).statusBarsPadding()) {
            Row(Modifier.fillMaxWidth().background(P.grad).padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                HeadBtn(Icons.Filled.Close) { onClose() }; Spacer(Modifier.width(10.dp))
                Column(Modifier.weight(1f)) { Text("تفاصيل الفحص", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 17.sp)
                    Text(java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.US).format(java.util.Date(s.at)) + " · " + (Session.device?.name ?: ""), color = Color.White.copy(alpha = 0.85f), fontSize = 12.sp) }
                HeadBtn(Icons.Filled.Refresh) { onRescan() }
            }
            Column(Modifier.weight(1f).verticalScroll(rememberScrollState()).padding(12.dp).padding(bottom = navBarDp(ctx)), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                if (s.findings.isNotEmpty()) SectionHead("المشاكل والملاحظات (${s.findings.size})")
                for (idx in s.findings.indices) { val f = s.findings[idx]; val ex = openF == idx
                    Row(Modifier.fillMaxWidth().clip(RoundedCornerShape(16.dp)).background(P.botBub).border(1.dp, if (ex) sevColor(f.sev) else P.botBd, RoundedCornerShape(16.dp))) {
                        Box(Modifier.width(5.dp).heightIn(min = 64.dp).background(sevColor(f.sev)))
                        Column(Modifier.weight(1f).padding(12.dp), verticalArrangement = Arrangement.spacedBy(5.dp)) {
                            Row(Modifier.fillMaxWidth().clickable { openF = if (ex) -1 else idx }, verticalAlignment = Alignment.CenterVertically) {
                                Column(Modifier.weight(1f)) { Text(f.title, fontWeight = FontWeight.Bold, color = P.text, fontSize = 14.sp); Text(f.cat + " · " + f.cause, color = P.dim, fontSize = 12.sp, maxLines = if (ex) 4 else 1) }
                                Text(sevText(f.sev), color = sevColor(f.sev), fontSize = 11.sp, fontWeight = FontWeight.Bold); Spacer(Modifier.width(6.dp)); Text(if (ex) "▲" else "▼", color = P.dim, fontSize = 12.sp)
                            }
                            if (ex) {
                                Lbl(P, "الأدلة"); for (e in f.evidence) Text("• $e", color = P.text, fontSize = 12.5.sp, style = TextStyle(textDirection = TextDirection.Content))
                                Lbl(P, "التأثير"); Text(f.impact, color = P.text, fontSize = 13.sp)
                                Lbl(P, "الحل"); Text(f.advice, color = P.text, fontSize = 13.sp)
                                val fx = f.fix
                                if (fx != null) { CodeBox(fx.cmdText); Text(fx.explain, color = P.dim, fontSize = 12.sp)
                                    Button(onClick = { pending = fx }, modifier = Modifier.fillMaxWidth(), shape = RoundedCornerShape(12.dp), colors = ButtonDefaults.buttonColors(containerColor = C.Gold)) { Text("⚙️ طلب تنفيذ — يحتاج موافقتك", fontWeight = FontWeight.Bold) } }
                                OutlinedButton(onClick = { onAsk("اشرح لي مشكلة «${f.title}» بالتفصيل وكيف أحلها خطوة بخطوة") }, modifier = Modifier.fillMaxWidth(), shape = RoundedCornerShape(12.dp)) { Text("💬 اسأل المساعد عن هذه المشكلة", color = P.greenD, fontWeight = FontWeight.Bold) }
                            }
                        }
                    }
                }
                SectionHead("نتائج الفحص الشامل")
                Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(16.dp)).background(P.botBub).border(1.dp, P.botBd, RoundedCornerShape(16.dp)).padding(vertical = 4.dp)) {
                    for (c in s.checks) {
                        Row(Modifier.fillMaxWidth().padding(horizontal = 12.dp, vertical = 9.dp), verticalAlignment = Alignment.CenterVertically) {
                            Box(Modifier.size(36.dp).clip(RoundedCornerShape(10.dp)).background(sevColor(c.sev).copy(alpha = 0.13f)), contentAlignment = Alignment.Center) { Text(c.icon, fontSize = 17.sp) }
                            Spacer(Modifier.width(10.dp))
                            Column(Modifier.weight(1f)) { Text(c.title, color = P.text, fontSize = 13.5.sp, fontWeight = FontWeight.Bold); Text(c.detail, color = if (c.sev == -1) P.amber else P.dim, fontSize = 12.sp) }
                            Box(Modifier.size(10.dp).clip(CircleShape).background(sevColor(c.sev)))
                        }
                    }
                }
                SectionHead("معلومات الجهاز")
                Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(16.dp)).background(P.botBub).border(1.dp, P.botBd, RoundedCornerShape(16.dp)).padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                    for (f in s.facts) Row { Text(f.first, color = P.dim, fontSize = 13.sp, modifier = Modifier.weight(1f)); Text(f.second, color = P.text, fontSize = 13.sp, fontWeight = FontWeight.Bold, style = TextStyle(textDirection = TextDirection.Content)) }
                }
            }
        }
        val fx = pending
        if (fx != null) {
            var agree by remember { mutableStateOf(false) }
            val bad = AiValidator.check(fx)
            AlertDialog(onDismissRequest = { pending = null }, shape = RoundedCornerShape(20.dp),
                title = { Text("موافقة المدير", fontWeight = FontWeight.Bold) },
                text = { Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text("سيُنفَّذ هذا الأمر حرفياً على الراوتر:", fontSize = 13.sp); CodeBox(fx.cmdText); Text(fx.explain, fontSize = 12.sp, color = C.Dim)
                    Text(if (bad == null) "✅ ضمن القائمة المسموحة" else "⛔ $bad", fontSize = 12.sp, color = if (bad == null) C.Green else C.Red)
                    Text(if (AiPrefs.used(ctx, AiValidator.token(fx))) "⛔ نُفّذ سابقاً — منع التكرار" else "✅ لم يُنفَّذ من قبل", fontSize = 12.sp)
                    Row(verticalAlignment = Alignment.CenterVertically) { Checkbox(agree, { agree = it }); Text("قرأت الأمر وأفهم تأثيره", fontSize = 13.sp) } } },
                confirmButton = { Button(enabled = agree && bad == null, onClick = { val f = fx; pending = null; scope.launch { msg = AiEngine.execute(ctx, f) } }, colors = ButtonDefaults.buttonColors(containerColor = C.Teal)) { Text("موافقة وتنفيذ", fontWeight = FontWeight.Bold) } },
                dismissButton = { TextButton(onClick = { AiPrefs.addLog(ctx, "deny", "رفض المدير", fx.cmdText, false); pending = null }) { Text("رفض", color = C.Red) } })
        }
        val m = msg
        if (m != null) AlertDialog(onDismissRequest = { msg = null }, shape = RoundedCornerShape(20.dp), confirmButton = { TextButton(onClick = { msg = null; onRescan() }) { Text("إعادة الفحص") } }, text = { Text(m) })
    }
}

@Composable
private fun AiLogDialog(P: AiPal, onClose: () -> Unit) {
    val ctx = LocalContext.current
    Dialog(onDismissRequest = onClose, properties = DialogProperties(usePlatformDefaultWidth = false)) {
        Column(Modifier.fillMaxWidth(0.94f).fillMaxHeight(0.8f).clip(RoundedCornerShape(22.dp)).background(P.sheet)) {
            Row(Modifier.fillMaxWidth().background(P.grad).padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                HeadBtn(Icons.Filled.Close) { onClose() }; Spacer(Modifier.width(10.dp)); Text("سجل التشخيص والعمليات", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp) }
            Column(Modifier.weight(1f).verticalScroll(rememberScrollState()).padding(12.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                val lg = AiPrefs.log(ctx)
                if (lg.isEmpty()) Text("لا توجد عمليات بعد", color = P.dim, modifier = Modifier.fillMaxWidth().padding(24.dp), textAlign = TextAlign.Center)
                for (o in lg) Row(Modifier.fillMaxWidth().clip(RoundedCornerShape(14.dp)).background(P.botBub).border(1.dp, P.botBd, RoundedCornerShape(14.dp)).padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                    val okk = o.optBoolean("ok")
                    Box(Modifier.size(36.dp).clip(CircleShape).background((if (okk) C.Green else C.Red).copy(alpha = 0.13f)), contentAlignment = Alignment.Center) { Text(when (o.optString("k")) { "exec" -> "⚙️"; "deny" -> "⛔"; else -> "🩺" }, fontSize = 16.sp) }
                    Spacer(Modifier.width(10.dp))
                    Column(Modifier.weight(1f)) { Text(o.optString("t"), color = P.text, fontWeight = FontWeight.Bold, fontSize = 13.sp); Text(o.optString("d"), color = P.dim, fontSize = 12.sp)
                        Text(java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.US).format(java.util.Date(o.optLong("at"))), color = P.dim, fontSize = 11.sp) }
                    Text(if (okk) "✓" else "✗", color = if (okk) C.Green else C.Red, fontWeight = FontWeight.Bold)
                }
            }
        }
    }
}

@Composable private fun SectionHead(t: String) { Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.padding(top = 4.dp)) { Box(Modifier.width(4.dp).height(18.dp).clip(RoundedCornerShape(2.dp)).background(C.Teal)); Spacer(Modifier.width(8.dp)); Text(t, color = C.Text, fontWeight = FontWeight.Bold, fontSize = 15.sp) } }
@Composable private fun Lbl(P: AiPal, t: String) { Text(t, color = P.greenD, fontWeight = FontWeight.Bold, fontSize = 12.sp) }

/* ---------- المحادثات السابقة ---------- */
@Composable
private fun AiHistoryDialog(P: AiPal, onClose: () -> Unit, onOpen: (String) -> Unit) {
    var rows by remember { mutableStateOf<List<JSONObject>?>(null) }
    var err by remember { mutableStateOf<String?>(null) }
    LaunchedEffect(Unit) {
        try { rows = AiEngine.conversations() } catch (e: Exception) { err = AiEngine.friendly(e.message); rows = ArrayList() }
    }
    Dialog(onDismissRequest = onClose, properties = DialogProperties(usePlatformDefaultWidth = false)) {
        Column(Modifier.fillMaxWidth(0.94f).fillMaxHeight(0.8f).clip(RoundedCornerShape(24.dp)).background(P.body)) {
            Row(Modifier.fillMaxWidth().background(P.grad).padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                HeadBtn(Icons.Filled.Close) { onClose() }; Spacer(Modifier.width(10.dp))
                Text("المحادثات السابقة", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp)
            }
            Column(Modifier.weight(1f).verticalScroll(rememberScrollState()).padding(12.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                val r = rows; val e = err
                if (r == null) Row(Modifier.fillMaxWidth().padding(24.dp), horizontalArrangement = Arrangement.Center, verticalAlignment = Alignment.CenterVertically) {
                    CircularProgressIndicator(Modifier.size(18.dp), strokeWidth = 2.dp, color = P.g1); Spacer(Modifier.width(8.dp)); Text("جارٍ التحميل…", color = P.dim) }
                else if (e != null) Text("⚠️ $e", color = P.text, modifier = Modifier.fillMaxWidth().padding(16.dp), textAlign = TextAlign.Center)
                else if (r.isEmpty()) Text("لا توجد محادثات سابقة بعد", color = P.dim, modifier = Modifier.fillMaxWidth().padding(24.dp), textAlign = TextAlign.Center)
                else { var i = 0
                    while (i < r.size) { val o = r[i]; i++
                        val id = o.optString("id")
                        Row(Modifier.fillMaxWidth().clip(RoundedCornerShape(16.dp)).background(P.botBub).border(1.dp, P.botBd, RoundedCornerShape(16.dp)).clickable { onOpen(id) }.padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                            Box(Modifier.size(36.dp).clip(CircleShape).background(P.gradD), contentAlignment = Alignment.Center) { Icon(Icons.Filled.History, null, tint = Color.White, modifier = Modifier.size(20.dp)) }
                            Spacer(Modifier.width(10.dp))
                            Column(Modifier.weight(1f)) {
                                Text(o.optString("title").ifBlank { "محادثة" }, color = P.text, fontWeight = FontWeight.Bold, fontSize = 14.sp, maxLines = 1, overflow = TextOverflow.Ellipsis, style = TextStyle(textDirection = TextDirection.Content))
                                val rn = o.optString("router_name").let { if (it == "null") "" else it }
                                Text((if (rn.isNotBlank()) "$rn · " else "") + aiWhen(o.optString("updated_at")), color = P.dim, fontSize = 12.sp, maxLines = 1)
                            }
                        }
                    }
                }
            }
        }
    }
}
private fun aiWhen(iso: String): String = try {
    val t = java.time.OffsetDateTime.parse(iso).atZoneSameInstant(java.time.ZoneId.systemDefault())
    t.format(java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm", java.util.Locale.US))
} catch (_: Exception) { iso.take(16).replace('T', ' ') }

/** يقرأ صورة ويصغّرها (أقصى ضلع 1024) ويحوّلها JPEG base64 لإرسالها للمساعد. */
private fun loadImage(c: Context, uri: Uri): Pair<String, ImageBitmap>? {
    return try {
        val ins = c.contentResolver.openInputStream(uri) ?: return null
        val bmp0 = try { BitmapFactory.decodeStream(ins) } finally { ins.close() } ?: return null
        val mxs = if (bmp0.width > bmp0.height) bmp0.width else bmp0.height
        val sc = if (mxs > 1024) 1024f / mxs else 1f
        val bmp = if (sc < 1f) Bitmap.createScaledBitmap(bmp0, (bmp0.width * sc).toInt(), (bmp0.height * sc).toInt(), true) else bmp0
        val bo = ByteArrayOutputStream(); bmp.compress(Bitmap.CompressFormat.JPEG, 72, bo)
        ("data:image/jpeg;base64," + Base64.encodeToString(bo.toByteArray(), Base64.NO_WRAP)) to bmp.asImageBitmap()
    } catch (_: Exception) { null }
}

/** يقرأ ملفاً نصياً حتى 200KB (rsc/txt/log/conf/csv/json…) ويرجع (الاسم، النص). */
private fun loadTextFile(c: Context, uri: Uri): Pair<String, String>? {
    return try {
        var name = "ملف"
        val cur = c.contentResolver.query(uri, null, null, null, null)
        if (cur != null) { try { val i = cur.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME); if (i >= 0 && cur.moveToFirst()) name = cur.getString(i) ?: name } finally { cur.close() } }
        val ext = name.substringAfterLast('.', "").lowercase()
        if (ext !in setOf("rsc", "txt", "log", "conf", "cfg", "csv", "json", "sh", "md", "sql", "ini", "yaml", "yml", "xml", "html")) return null
        val ins = c.contentResolver.openInputStream(uri) ?: return null
        val bytes = try { ins.readBytes() } finally { ins.close() }
        if (bytes.size > 200_000) return null
        name to String(bytes, Charsets.UTF_8)
    } catch (_: Exception) { null }
}

/** ارتفاع شريط أزرار أندرويد من إعدادات النظام (لا يعتمد على insets في نوافذ Dialog). */
private fun navBarDp(c: Context): Dp {
    return try {
        val id = c.resources.getIdentifier("navigation_bar_height", "dimen", "android")
        val px = if (id > 0) c.resources.getDimensionPixelSize(id) else 0
        ((px / c.resources.displayMetrics.density) + 4f).dp
    } catch (_: Exception) { 48.dp }
}
