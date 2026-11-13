@file:JvmName("RadiusPlanWindowsKt")
package com.zarinet.netcontrol.ui.screens

import android.app.TimePickerDialog
import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowForward
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.account.RadiusSubscription
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject

private val PTeal = Color(0xFF13A884)
private val PTealSoft = Color(0xFFCDE8DF)
private val PGreen = Color(0xFF0E8F5A)
private val PInk = Color(0xFF1A2233)
private val PDim = Color(0xFF6B778A)
private val PSeg = Color(0xFFEEF2F8)
private val PLine = Color(0xFFD6DEE9)
private val PRed = Color(0xFFC0392B)

private suspend fun pRpc(fn: String, body: JSONObject = JSONObject()): String =
    AuthService.authorized { tok: String -> RadiusSubscription.api.rpc(fn, body, tok) }

private class PPlan(val id: String, val name: String, val cards: Int)
private class PWin(val id: Long, val plans: List<String>, val off: Int, val on: Int, val active: Boolean)

private fun fmt(m: Int): String {
    val h = m / 60; val mm = m % 60
    val h12 = if (h % 12 == 0) 12 else h % 12
    return "%d:%02d %s".format(h12, mm, if (h < 12) "ص" else "م")
}
private fun hint(m: Int) = when (m / 60) { 0 -> "منتصف الليل"; in 1..3 -> "بعد منتصف الليل"; 4, 5 -> "الفجر"; in 6..11 -> "صباحاً"; 12 -> "الظهر"; in 13..17 -> "العصر"; else -> "مساءً" }

/** شاشة جدولة الكروت الأصلية + مدخل «فترة إيقاف للباقات». */
@Composable
fun RadiusScheduleWithPlans(onBack: () -> Unit) {
    var page by remember { mutableStateOf(false) }
    if (page) { PlanWindowsPage { page = false }; return }
    Box(Modifier.fillMaxSize()) {
        RadiusScheduleScreen(onBack)
        Row(Modifier.align(Alignment.BottomCenter).padding(bottom = 22.dp).shadow(10.dp, RoundedCornerShape(30.dp))
            .clip(RoundedCornerShape(30.dp)).background(Brush.horizontalGradient(listOf(Color(0xFF0E8F7E), PTeal)))
            .clickable { page = true }.padding(horizontal = 22.dp, vertical = 13.dp), verticalAlignment = Alignment.CenterVertically) {
            Text("📦", fontSize = 18.sp); Spacer(Modifier.width(8.dp))
            Text("فترة إيقاف للباقات", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 15.sp)
        }
    }
}

@Composable
private fun PlanWindowsPage(onClose: () -> Unit) {
    BackHandler { onClose() }
    val ctx = LocalContext.current; val scope = rememberCoroutineScope()
    var tab by remember { mutableIntStateOf(0) }
    var plans by remember { mutableStateOf<List<PPlan>>(emptyList()) }
    var wins by remember { mutableStateOf<List<PWin>?>(null) }
    var tick by remember { mutableIntStateOf(0) }
    var editId by remember { mutableStateOf<Long?>(null) }
    val sel = remember { mutableStateListOf<String>() }
    var off by remember { mutableIntStateOf(0) }
    var on by remember { mutableIntStateOf(180) }
    var busy by remember { mutableStateOf(false) }
    fun toast(m: String) = Toast.makeText(ctx, m, Toast.LENGTH_LONG).show()
    LaunchedEffect(tick) {
        runCatching {
            val o = JSONObject(pRpc("radius_plan_windows"))
            val pa = o.optJSONArray("plans") ?: JSONArray()
            plans = (0 until pa.length()).map { val p = pa.getJSONObject(it); PPlan(p.getString("id"), p.optString("name"), p.optInt("cards")) }
            val wa = o.optJSONArray("windows") ?: JSONArray()
            wins = (0 until wa.length()).map { val w = wa.getJSONObject(it); val pl = w.optJSONArray("plans") ?: JSONArray()
                PWin(w.getLong("id"), (0 until pl.length()).map { i -> pl.getString(i) }, w.optInt("off_min"), w.optInt("on_min"), w.optBoolean("active")) }
        }.onFailure { toast(it.message ?: "خطأ"); wins = wins ?: emptyList() }
    }
    fun pick(init: Int, set: (Int) -> Unit) = TimePickerDialog(ctx, { _, h, m -> set(h * 60 + m) }, init / 60, init % 60, false).show()
    fun reset() { editId = null; sel.clear(); off = 0; on = 180 }

    Column(Modifier.fillMaxSize().background(Brush.verticalGradient(listOf(Color(0xFFE8EEF6), Color(0xFFEAF3F0))))) {
        Row(Modifier.fillMaxWidth().padding(start = 8.dp, end = 20.dp, top = 18.dp, bottom = 10.dp), verticalAlignment = Alignment.CenterVertically) {
            IconButton(onClick = onClose) { Icon(Icons.AutoMirrored.Filled.ArrowForward, null, tint = PInk) }
            Column(Modifier.weight(1f)) {
                Text("فترة إيقاف للباقات", fontWeight = FontWeight.Bold, fontSize = 22.sp, color = PInk)
                Text("إيقاف كروت باقات محددة يومياً في وقت محدد", color = PDim, fontSize = 13.sp)
            }
        }
        Row(Modifier.padding(horizontal = 14.dp).fillMaxWidth().clip(RoundedCornerShape(18.dp)).background(Color.White).padding(6.dp)) {
            listOf("الفترات", if (editId != null) "تعديل الفترة" else "إضافة فترة").forEachIndexed { i, t ->
                Box(Modifier.weight(1f).clip(RoundedCornerShape(14.dp)).background(if (tab == i) PTeal else Color.Transparent)
                    .clickable { tab = i; if (i == 0) reset() }.padding(vertical = 12.dp), contentAlignment = Alignment.Center) {
                    Text(t, color = if (tab == i) Color.White else PInk, fontWeight = if (tab == i) FontWeight.Bold else FontWeight.Normal, fontSize = 15.sp)
                }
            }
        }
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(14.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            if (tab == 0) {
                val w = wins
                if (w == null) Text("جارٍ التحميل…", color = PDim, modifier = Modifier.padding(20.dp))
                else if (w.isEmpty()) Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(22.dp)).background(Color.White).border(1.dp, PLine, RoundedCornerShape(22.dp)).padding(24.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Text("🌙", fontSize = 34.sp); Text("لا توجد فترات إيقاف للباقات بعد", color = PDim, modifier = Modifier.padding(top = 6.dp))
                }
                w?.forEach { x ->
                    Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(22.dp)).background(Color.White).border(1.dp, PLine, RoundedCornerShape(22.dp)).padding(16.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Text("🌙 فترة الإيقاف", fontWeight = FontWeight.Bold, fontSize = 16.sp, color = PInk, modifier = Modifier.weight(1f))
                            Text(if (x.active) "⏸ موقوفة الآن — ترجع ${fmt(x.on)}" else "✓ تعمل الآن — تتوقف ${fmt(x.off)}",
                                color = if (x.active) PRed else PGreen, fontSize = 12.sp, fontWeight = FontWeight.Bold,
                                modifier = Modifier.clip(RoundedCornerShape(10.dp)).background(if (x.active) Color(0xFFFDECEA) else Color(0xFFE6F6F1)).padding(horizontal = 10.dp, vertical = 5.dp))
                        }
                        Text("يومياً من ${fmt(x.off)} إلى ${fmt(x.on)}", color = PInk, fontSize = 14.sp, modifier = Modifier.padding(top = 8.dp))
                        val names = x.plans.mapNotNull { id -> plans.firstOrNull { it.id == id }?.name }
                        Text("📦 الباقات: " + names.joinToString("، ").ifEmpty { "—" }, color = PGreen, fontSize = 13.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(top = 6.dp))
                        Row(Modifier.padding(top = 12.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            Box(Modifier.weight(1f).clip(RoundedCornerShape(12.dp)).background(PSeg).clickable {
                                editId = x.id; sel.clear(); sel.addAll(x.plans); off = x.off; on = x.on; tab = 1
                            }.padding(10.dp), contentAlignment = Alignment.Center) { Text("✏️ تعديل", fontWeight = FontWeight.Bold, fontSize = 14.sp, color = PInk) }
                            Box(Modifier.weight(1f).clip(RoundedCornerShape(12.dp)).background(Color(0xFFFDECEA)).clickable {
                                scope.launch { runCatching { pRpc("radius_plan_window_delete", JSONObject().put("p_id", x.id)) }.onSuccess { toast("تم حذف فترة الإيقاف، وتعود الكروت للعمل فوراً"); tick++ }.onFailure { toast(it.message ?: "خطأ") } }
                            }.padding(10.dp), contentAlignment = Alignment.Center) { Text("حذف", fontWeight = FontWeight.Bold, fontSize = 14.sp, color = PRed) }
                        }
                    }
                }
                Box(Modifier.fillMaxWidth().clip(RoundedCornerShape(20.dp)).background(Color.White.copy(alpha = 0.6f)).clickable { reset(); tab = 1 }.padding(16.dp), contentAlignment = Alignment.Center) {
                    Text("＋  إضافة فترة إيقاف", color = PDim, fontSize = 16.sp)
                }
            } else {
                Column(Modifier.fillMaxWidth().clip(RoundedCornerShape(26.dp)).background(Color.White).border(1.5.dp, PLine, RoundedCornerShape(26.dp)).padding(16.dp)) {
                    Text("الباقات", color = PDim, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                    Spacer(Modifier.height(6.dp))
                    if (plans.isEmpty()) Text("لا توجد باقات راديوس", color = PDim, modifier = Modifier.padding(8.dp))
                    plans.forEach { p ->
                        val on1 = p.id in sel
                        Row(Modifier.fillMaxWidth().padding(vertical = 3.dp).clip(RoundedCornerShape(14.dp)).background(if (on1) PTealSoft.copy(alpha = 0.55f) else PSeg)
                            .clickable { if (on1) sel.remove(p.id) else sel.add(p.id) }.padding(horizontal = 6.dp, vertical = 2.dp), verticalAlignment = Alignment.CenterVertically) {
                            Checkbox(on1, { if (it) sel.add(p.id) else sel.remove(p.id) }, colors = CheckboxDefaults.colors(checkedColor = PTeal))
                            Text(p.name, color = PInk, fontSize = 15.sp, fontWeight = if (on1) FontWeight.Bold else FontWeight.Normal, modifier = Modifier.weight(1f))
                            Text("${p.cards} كرت", color = PDim, fontSize = 12.sp, modifier = Modifier.padding(end = 8.dp))
                        }
                    }
                    Spacer(Modifier.height(14.dp))
                    Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                        listOf(Triple("⏸ إيقاف الساعة", off, Color(0xFFFDECEA)), Triple("▶ رجوع الساعة", on, Color(0xFFE6F6F1))).forEachIndexed { i, (lbl, v, bg) ->
                            Column(Modifier.weight(1f).clip(RoundedCornerShape(18.dp)).background(bg).clickable { pick(v) { if (i == 0) off = it else on = it } }.padding(vertical = 14.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(lbl, color = if (i == 0) PRed else PGreen, fontSize = 13.sp, fontWeight = FontWeight.Bold)
                                Text(fmt(v), color = PInk, fontSize = 24.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(top = 4.dp))
                                Text(hint(v), color = PDim, fontSize = 12.sp)
                            }
                        }
                    }
                    Text(if (sel.isEmpty()) "لم تختر أي باقة" else "كروت ${sel.size} باقة لا تدخل من ${fmt(off)} حتى ${fmt(on)} — كل يوم تلقائياً. المتصلون يُفصلون وقت الإيقاف.",
                        color = PDim, fontSize = 13.sp, modifier = Modifier.padding(top = 12.dp))
                }
                Button(onClick = {
                    if (sel.isEmpty()) { toast("اختر باقة واحدة على الأقل"); return@Button }
                    if (off == on) { toast("وقت الإيقاف ووقت الرجوع متساويان"); return@Button }
                    busy = true
                    scope.launch {
                        runCatching { pRpc("radius_plan_window_save", JSONObject().put("p_id", editId ?: JSONObject.NULL).put("p_plans", JSONArray(sel.toList())).put("p_off", off).put("p_on", on)) }
                            .onSuccess { toast(if (editId != null) "تم تعديل فترة الإيقاف" else "تمت إضافة فترة الإيقاف"); reset(); tab = 0; tick++ }
                            .onFailure { toast(it.message ?: "خطأ") }
                        busy = false
                    }
                }, enabled = !busy, modifier = Modifier.fillMaxWidth().height(56.dp), shape = RoundedCornerShape(20.dp), colors = ButtonDefaults.buttonColors(containerColor = PTeal)) {
                    Text(if (editId != null) "حفظ التعديل" else "إضافة فترة الإيقاف", fontWeight = FontWeight.Bold, fontSize = 16.sp)
                }
                Text("تُنفَّذ من قاعدة الراديوس بتوقيت اليمن — حتى لو كان التطبيق مغلقاً", color = PDim, fontSize = 13.sp, textAlign = TextAlign.Center, modifier = Modifier.fillMaxWidth())
            }
            Spacer(Modifier.height(30.dp))
        }
    }
}
