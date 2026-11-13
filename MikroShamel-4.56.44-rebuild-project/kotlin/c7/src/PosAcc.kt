package com.zarinet.netcontrol.ui.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.subscription.SupabaseApi
import com.zarinet.netcontrol.util.PosRep
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class PosPay(val id: String, val amount: Long, val note: String, val at: String)

/** حساب نقاط البيع: المسحوب (قيمة كل الكروت المسلَّمة) − المسدد = المتبقي. الدفعات محفوظة في السحابة (pos_payments). */
object PosAcc {
    @JvmField var allTime: Boolean = true
    @JvmField var accountsMode: Boolean = false
    /** المصدر الحالي: 0 هوتسبوت، 1 يوزر منجر، 2 راديوس — لكل مصدر حساب مستقل. */
    @JvmField var src: Int = 0
    fun key(pos: String) = "$src:$pos"
    fun of(pos: String): List<PosPay> = pays[key(pos)] ?: emptyList()
    val pays = mutableStateMapOf<String, List<PosPay>>()
    var loadedFor by mutableStateOf("")
    var error by mutableStateOf<String?>(null)

    @JvmStatic fun setPeriod(from: Long?, until: Long?) { allTime = from == null && until == null }

    private fun rid() = Session.device?.id ?: ""

    suspend fun load(force: Boolean = false) {
        val r = rid()
        if (!force && loadedFor == r) return
        try {
            val api = SupabaseApi()
            val txt = AuthService.authorized { t -> api.rest("GET", "pos_payments?select=id,pos,amount,note,paid_at&router_id=eq.$r&order=paid_at.desc", null, t) }
            val a = JSONArray(txt); val m = HashMap<String, MutableList<PosPay>>()
            for (i in 0 until a.length()) {
                val o = a.getJSONObject(i)
                m.getOrPut(o.optString("pos")) { ArrayList() }.add(PosPay(o.optString("id"), o.optDouble("amount", 0.0).toLong(),
                    if (o.isNull("note")) "" else o.optString("note"), o.optString("paid_at").take(10)))
            }
            pays.clear(); for (e in m.entries) pays[e.key] = e.value
            loadedFor = r; error = null
        } catch (e: Exception) { error = if ((e.message ?: "").contains("pos_payments")) "جدول السداد غير مُعد على السيرفر" else e.message }
    }

    suspend fun add(pos: String, amount: Long, note: String) {
        val api = SupabaseApi()
        val body = JSONObject().put("router_id", rid()).put("pos", key(pos)).put("amount", amount).put("note", note.ifBlank { JSONObject.NULL })
        AuthService.authorized { t -> api.rest("POST", "pos_payments", body.toString(), t) }
        load(true)
    }

    /** حذف حساب نقطة البيع (كل دفعات السداد لهذا المصدر). */
    suspend fun clear(pos: String) {
        val api = SupabaseApi()
        val k = java.net.URLEncoder.encode(key(pos), "UTF-8")
        AuthService.authorized { t -> api.rest("DELETE", "pos_payments?router_id=eq.${rid()}&pos=eq.$k", null, t) }
        load(true)
    }

    suspend fun remove(id: String) {
        val api = SupabaseApi()
        AuthService.authorized { t -> api.rest("DELETE", "pos_payments?id=eq.$id", null, t) }
        load(true)
    }
}

private val Teal = Color(0xFF14A37F); private val Red = Color(0xFFDC2626); private val Green = Color(0xFF16A34A)
private val Ink = Color(0xFF1F2937); private val Dim = Color(0xFF64748B)

internal fun issuedValue(r: PosRep): Long { var s = 0L; for (b in r.batches) s += b.issued.toLong() * b.price; return s }
internal fun fmt(n: Long): String = String.format(Locale.US, "%,d", n)

/** شريط الحساب تحت بطاقة نقطة البيع في تقرير المبيعات + زر السداد. */
@Composable
fun PosAccountStrip(r: PosRep) {
    val scope = rememberCoroutineScope()
    LaunchedEffect(Session.device?.id) { PosAcc.load() }
    var open by remember { mutableStateOf(false) }
    val list = PosAcc.of(r.pos)
    var paid = 0L; for (p in list) paid += p.amount
    val issued = issuedValue(r)
    val left = issued - paid
    Surface(Modifier.fillMaxWidth().padding(top = 4.dp, bottom = 8.dp), shape = RoundedCornerShape(16.dp),
        color = if (left > 0 && PosAcc.allTime) Color(0xFFFFF5F5) else Color(0xFFF0FDF4),
        border = BorderStroke(1.dp, if (left > 0 && PosAcc.allTime) Color(0xFFFECACA) else Color(0xFFBBF7D0))) {
        Row(Modifier.padding(horizontal = 12.dp, vertical = 10.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(Modifier.weight(1f)) {
                Text("💼 حساب نقطة البيع", fontWeight = FontWeight.Bold, color = Ink, fontSize = 14.sp)
                if (PosAcc.error != null) Text("⚠️ ${PosAcc.error}", color = Red, fontSize = 12.sp)
                else if (!PosAcc.allTime) Text("المسدد: ${fmt(paid)} ﷼ — اختر الفترة «الكل» لعرض الدين الكامل", color = Dim, fontSize = 12.sp)
                else {
                    Text("المسحوب ${fmt(issued)} • المسدد ${fmt(paid)}", color = Dim, fontSize = 12.sp)
                    Text(if (left > 0) "المتبقي: ${fmt(left)} ﷼" else if (left < 0) "رصيد له: ${fmt(-left)} ﷼" else "✓ مسدد بالكامل",
                        color = if (left > 0) Red else Green, fontWeight = FontWeight.Bold, fontSize = 15.sp)
                }
            }
            Button({ open = true }, shape = RoundedCornerShape(14.dp), colors = ButtonDefaults.buttonColors(containerColor = Teal),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp)) { Text("💵 سداد", color = Color.White, fontSize = 14.sp) }
        }
    }
    if (open) PayDialog(r.pos, issued, paid, list, onClose = { open = false })
}

@Composable
internal fun PayDialog(pos: String, issued: Long, paid: Long, list: List<PosPay>, onClose: () -> Unit) {
    val scope = rememberCoroutineScope()
    val left = issued - paid
    var amount by remember { mutableStateOf("") }
    var note by remember { mutableStateOf("") }
    var busy by remember { mutableStateOf(false) }
    var err by remember { mutableStateOf<String?>(null) }
    var delId by remember { mutableStateOf<String?>(null) }
    val amt = amount.toLongOrNull() ?: 0L
    Dialog(onDismissRequest = onClose) {
        Surface(shape = RoundedCornerShape(22.dp), color = Color.White) {
            Column(Modifier.padding(18.dp).verticalScroll(rememberScrollState()), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                Text("سداد — $pos", fontWeight = FontWeight.Bold, color = Ink, fontSize = 18.sp)
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    for (pr in listOf("المسحوب" to issued, "المسدد" to paid, "المتبقي" to left)) {
                        Column(Modifier.weight(1f).background(Color(0xFFF1F5F9), RoundedCornerShape(12.dp)).padding(8.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                            Text(pr.first, color = Dim, fontSize = 12.sp)
                            Text(fmt(pr.second), fontWeight = FontWeight.Bold, fontSize = 16.sp,
                                color = if (pr.first == "المتبقي") (if (left > 0) Red else Green) else if (pr.first == "المسدد") Green else Ink)
                        }
                    }
                }
                OutlinedTextField(amount, { amount = it.filter { c -> c.isDigit() } }, label = { Text("المبلغ (﷼)") }, singleLine = true,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number), modifier = Modifier.fillMaxWidth())
                if (left > 0) Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    for (q in listOf(left, left / 2, 100L, 50L)) if (q > 0) {
                        Text(if (q == left) "كامل ${fmt(q)}" else fmt(q), color = Color(0xFF0F766E), fontSize = 13.sp,
                            modifier = Modifier.weight(1f).background(Color(0xFFECFDF5), RoundedCornerShape(10.dp)).clickable { amount = q.toString() }.padding(vertical = 7.dp, horizontal = 4.dp))
                    }
                }
                OutlinedTextField(note, { note = it.take(120) }, label = { Text("ملاحظة (اختياري)") }, singleLine = true, modifier = Modifier.fillMaxWidth())
                if (amt > 0) Text("بعد السداد يصبح المتبقي: ${fmt(left - amt)} ﷼", color = if (left - amt > 0) Red else Green, fontSize = 13.sp)
                err?.let { Text(it, color = Red, fontSize = 13.sp) }
                Button({
                    busy = true; err = null
                    scope.launch {
                        try { PosAcc.add(pos, amt, note.trim()); amount = ""; note = "" } catch (e: Exception) { err = e.message ?: "خطأ" }
                        busy = false
                    }
                }, enabled = amt > 0 && !busy, modifier = Modifier.fillMaxWidth().height(50.dp), shape = RoundedCornerShape(16.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Teal)) { Text(if (busy) "جارٍ الحفظ…" else "✓ تأكيد السداد", color = Color.White, fontSize = 16.sp) }
                Text("سجل السداد", fontWeight = FontWeight.Bold, color = Ink)
                if (list.isEmpty()) Text("لا توجد دفعات بعد", color = Dim, fontSize = 13.sp)
                for (p in list) Row(Modifier.fillMaxWidth().padding(vertical = 4.dp), verticalAlignment = Alignment.CenterVertically) {
                    Column(Modifier.weight(1f)) {
                        Text("${fmt(p.amount)} ﷼", color = Green, fontWeight = FontWeight.Bold)
                        Text(p.at + (if (p.note.isNotBlank()) " • " + p.note else ""), color = Dim, fontSize = 12.sp)
                    }
                    if (delId == p.id) TextButton({ scope.launch { try { PosAcc.remove(p.id) } catch (e: Exception) { err = e.message }; delId = null } }) { Text("تأكيد الحذف", color = Red) }
                    else TextButton({ delId = p.id }) { Text("حذف", color = Dim) }
                }
                TextButton(onClose, Modifier.align(Alignment.End)) { Text("إغلاق") }
            }
        }
    }
}
