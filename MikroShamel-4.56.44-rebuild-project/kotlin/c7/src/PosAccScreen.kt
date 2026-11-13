package com.zarinet.netcontrol.ui.screens

import android.content.Intent
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.ui.components.*
import com.zarinet.netcontrol.util.PosRep
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

private val TealC = Color(0xFF14A37F); private val RedC = Color(0xFFDC2626); private val GreenC = Color(0xFF16A34A)
private val BlueC = Color(0xFF2563EB); private val OrangeC = Color(0xFFEA7A1F); private val InkC = Color(0xFF0F172A)
private val DimC = Color(0xFF64748B); private val BorderC = Color(0xFFDBE3EE); private val HeadC = Color(0xFF1F3F8F)

@Composable
private fun Box1(label: String, value: String, icon: ImageVector, tint: Color, bg: Color, valColor: Color, modifier: Modifier) {
    Surface(modifier, shape = RoundedCornerShape(20.dp), color = Color.White, border = BorderStroke(1.5.dp, BorderC)) {
        Row(Modifier.padding(horizontal = 12.dp, vertical = 10.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(Modifier.weight(1f)) {
                Text(label, color = Color(0xFF475569), fontSize = 13.sp)
                Text(value, color = valColor, fontSize = 22.sp, fontWeight = FontWeight.Bold)
            }
            Box(Modifier.size(44.dp).clip(RoundedCornerShape(14.dp)).background(bg), contentAlignment = Alignment.Center) {
                Icon(icon, null, tint = tint, modifier = Modifier.size(24.dp))
            }
        }
    }
}

@Composable
private fun CardBox(content: @Composable ColumnScope.() -> Unit) {
    Surface(Modifier.fillMaxWidth(), shape = RoundedCornerShape(22.dp), color = Color.White, border = BorderStroke(1.5.dp, BorderC)) {
        Column(content = content)
    }
}

private class PkgRow(val name: String, var qty: Int = 0, var sold: Int = 0, var rem: Int = 0, var soldV: Long = 0, var remV: Long = 0)

private fun debtOf(r: PosRep): Long { var p = 0L; for (x in PosAcc.of(r.pos)) p += x.amount; return issuedValue(r) - p }

/** صفحة «حساب نقاط البيع»: اختيار نقطة البيع من قائمة ← الحساب والتفاصيل والسداد. */
@Composable
fun PosAccountsContent(source: Int, reps: List<PosRep>, loading: Boolean, error: String?, onBack: () -> Unit, onRefresh: () -> Unit, onPosPdf: (PosRep) -> Unit,
                       onSource: (Int) -> Unit, onPreset: (Int) -> Unit) {
    val ctx = LocalContext.current
    PosAcc.src = source
    val scope = rememberCoroutineScope()
    var ask by remember { mutableStateOf<String?>(null) }
    LaunchedEffect(Session.device?.id) { PosAcc.load(true) }
    // الحساب يحتاج كل الفترات: نضبط الفترة على «الكل» تلقائياً
    LaunchedEffect(Unit) { if (!PosAcc.allTime) onPreset(3) }
    var sel by remember { mutableStateOf<String?>(null) }
    var menu by remember { mutableStateOf(false) }
    var pay by remember { mutableStateOf(false) }
    val r = reps.firstOrNull { it.pos == sel }
    val back = { PosAcc.accountsMode = false; onBack() }
    val dfm = SimpleDateFormat("yyyy-MM-dd", Locale.US)

    Column(Modifier.fillMaxSize()) {
        TopBar("حساب نقاط البيع", if (r != null) r.pos else "كل الفترات", back) {
            if (r != null) {
                IconButton({ PosStatementPdf.share(ctx, r, PosAcc.of(r.pos), listOf("الهوتسبوت", "يوزر منجر", "الراديوس").getOrElse(source) { "" }) }) { Icon(Icons.Filled.PictureAsPdf, null, tint = InkC) }
                IconButton({
                    val list = PosAcc.of(r.pos); var paid = 0L; for (p in list) paid += p.amount
                    val t = "💼 حساب نقطة البيع: ${r.pos}\n📦 مسحوب: ${r.issued} كرت\n🛒 مباع: ${r.sold}\n🧾 قيمة المسحوب: ${fmt(issuedValue(r))} ﷼\n🤝 المسدد: ${fmt(paid)} ﷼\n💰 المتبقي: ${fmt(issuedValue(r) - paid)} ﷼"
                    try { ctx.startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).setType("text/plain").putExtra(Intent.EXTRA_TEXT, t), "مشاركة").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) } catch (_: Exception) {}
                }) { Icon(Icons.Filled.Share, null, tint = InkC) }
            } else IconButton(onRefresh) { Icon(Icons.Filled.Refresh, null, tint = InkC) }
        }
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(horizontal = 12.dp).padding(bottom = 24.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)) {
            // ── المصدر ──
            Surface(Modifier.fillMaxWidth(), shape = RoundedCornerShape(20.dp), color = Color.White) {
                Row(Modifier.padding(6.dp), horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    val names = listOf("الهوتسبوت", "يوزر منجر", "الراديوس")
                    for (i in names.indices) {
                        val on = i == source
                        Text(names[i], color = if (on) Color.White else Color(0xFF334155), fontSize = 15.sp, textAlign = TextAlign.Center,
                            fontWeight = if (on) FontWeight.SemiBold else FontWeight.Normal,
                            modifier = Modifier.weight(1f).clip(RoundedCornerShape(16.dp)).background(if (on) TealC else Color.Transparent)
                                .clickable { if (!on) { sel = null; onSource(i) } }.padding(vertical = 10.dp))
                    }
                }
            }
            // ── قائمة نقاط البيع ──
            Box {
                Surface(Modifier.fillMaxWidth().clickable { menu = true }, shape = RoundedCornerShape(16.dp),
                    color = if (sel == null) Color.White else Color(0xFFF6F8FC), border = BorderStroke(if (sel == null) 2.dp else 1.5.dp, if (sel == null) TealC else Color(0xFFCDD7E3))) {
                    Row(Modifier.padding(horizontal = 14.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                        Column(Modifier.weight(1f)) {
                            Text("نقطة البيع", color = DimC, fontSize = 12.sp)
                            Text(sel ?: "اختر نقطة البيع", color = if (sel == null) Color(0xFF94A3B8) else InkC, fontSize = 16.sp, fontWeight = FontWeight.SemiBold)
                        }
                        Icon(Icons.Filled.UnfoldMore, null, tint = Color(0xFF475569))
                    }
                }
                DropdownMenu(menu, { menu = false }) {
                    for (x in reps) DropdownMenuItem(text = {
                        Row(Modifier.widthIn(min = 240.dp), verticalAlignment = Alignment.CenterVertically) {
                            Text(x.pos, fontSize = 16.sp, modifier = Modifier.weight(1f))
                            val d = debtOf(x)
                            Text(if (d > 0) "${fmt(d)} ﷼" else "✓ مسدد", color = if (d > 0) RedC else GreenC, fontWeight = FontWeight.Bold, fontSize = 14.sp)
                        }
                    }, onClick = { sel = x.pos; menu = false })
                }
            }
            if (loading) LinearProgressIndicator(Modifier.fillMaxWidth(), color = TealC)
            if (error != null) Text(error, color = RedC, fontSize = 13.sp)
            if (PosAcc.error != null) Text("⚠️ ${PosAcc.error}", color = RedC, fontSize = 13.sp)

            if (r == null) {
                var tDebt = 0L; var tPaid = 0L
                for (x in reps) { val d = debtOf(x); if (d > 0) tDebt += d }
                for (e in PosAcc.pays.entries) if (e.key.startsWith("$source:")) for (p in e.value) tPaid += p.amount
                Box1("إجمالي ديون نقاط البيع", "${fmt(tDebt)} ﷼", Icons.Filled.Payments, RedC, Color(0xFFFDE2E2), RedC, Modifier.fillMaxWidth())
                Box1("إجمالي المسدد", "${fmt(tPaid)} ﷼", Icons.Filled.CheckCircle, GreenC, Color(0xFFDCF5E8), GreenC, Modifier.fillMaxWidth())
                if (reps.isEmpty() && !loading) Text(if (PosAcc.allTime) "لا توجد نقاط بيع في هذا المصدر. جرّب مصدراً آخر من الأعلى." else "جارٍ ضبط الفترة على «الكل»…", color = DimC, fontSize = 13.sp)
            } else {
                val list = PosAcc.of(r.pos)
                var paid = 0L; for (p in list) paid += p.amount
                val iv = issuedValue(r); val left = iv - paid
                Row(horizontalArrangement = Arrangement.spacedBy(9.dp)) {
                    Box1("مسحوب", "${r.issued}", Icons.Filled.Inventory2, BlueC, Color(0xFFE3ECFB), InkC, Modifier.weight(1f))
                    Box1("مباع / مستخدم", "${r.sold}", Icons.Filled.ShoppingCart, GreenC, Color(0xFFDCF5E8), GreenC, Modifier.weight(1f))
                }
                Row(horizontalArrangement = Arrangement.spacedBy(9.dp)) {
                    Box1("قيمة المسحوب", fmt(iv), Icons.Filled.ReceiptLong, BlueC, Color(0xFFE3ECFB), BlueC, Modifier.weight(1f))
                    Box1("المسدد", fmt(paid), Icons.Filled.Handshake, GreenC, Color(0xFFDCF5E8), GreenC, Modifier.weight(1f))
                }
                Surface(Modifier.fillMaxWidth(), shape = RoundedCornerShape(22.dp), color = if (left > 0) Color(0xFFFFF5F5) else Color(0xFFF0FDF4),
                    border = BorderStroke(1.5.dp, if (left > 0) Color(0xFFF8C9C9) else Color(0xFFBBF7D0))) {
                    Row(Modifier.padding(horizontal = 14.dp, vertical = 12.dp), verticalAlignment = Alignment.CenterVertically) {
                        Column(Modifier.weight(1f)) {
                            Text("💼 الدين المتبقي", color = DimC, fontSize = 13.sp)
                            Text(if (left > 0) "${fmt(left)} ﷼" else if (left < 0) "رصيد له ${fmt(-left)} ﷼" else "✓ مسدد بالكامل",
                                color = if (left > 0) RedC else GreenC, fontSize = 26.sp, fontWeight = FontWeight.Bold)
                        }
                        Button({ pay = true }, shape = RoundedCornerShape(18.dp), colors = ButtonDefaults.buttonColors(containerColor = TealC)) {
                            Text("💵 سداد", color = Color.White, fontSize = 17.sp)
                        }
                    }
                }
                // ── جدول الباقات ──
                val rows = LinkedHashMap<String, PkgRow>()
                for (b in r.batches) { val k = rows.getOrPut(b.profile) { PkgRow(b.profile) }
                    k.qty += b.issued; k.sold += b.sold; k.rem += b.remaining; k.soldV += b.revenue; k.remV += b.stockValue }
                CardBox {
                    Row(Modifier.fillMaxWidth().padding(start = 14.dp, end = 14.dp, top = 10.dp, bottom = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                        Text(r.pos, fontWeight = FontWeight.Bold, fontSize = 16.sp, color = InkC, modifier = Modifier.weight(1f))
                        Text("${r.batches.size} دفعة • ${r.issued} كرت", color = TealC, fontSize = 13.sp)
                    }
                    Column(Modifier.padding(horizontal = 8.dp).padding(bottom = 10.dp).clip(RoundedCornerShape(16.dp)).background(Color.White)) {
                        val w = listOf(0.6f, 1.5f, 1f, 0.9f, 0.9f, 1.2f, 1.2f)
                        Row(Modifier.background(HeadC).padding(vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                            val hs = listOf("#", "اسم الباقة", "الكمية", "مباع", "متبقي", "قيمة\nالمباع", "قيمة\nالمتبقي")
                            for (i in hs.indices) Text(hs[i], color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.SemiBold, textAlign = TextAlign.Center, modifier = Modifier.weight(w[i]), lineHeight = 15.sp)
                        }
                        var n = 0; var tq = 0; var ts = 0; var tr = 0; var tsv = 0L; var trv = 0L
                        for (k in rows.values) {
                            n++; tq += k.qty; ts += k.sold; tr += k.rem; tsv += k.soldV; trv += k.remV
                            HorizontalDivider(color = Color(0xFFE3E9F2))
                            Row(Modifier.padding(vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                                Box(Modifier.weight(w[0]), contentAlignment = Alignment.Center) {
                                    Box(Modifier.size(24.dp).clip(CircleShape).background(Color(0xFF3B74D8)), contentAlignment = Alignment.Center) { Text("$n", color = Color.White, fontSize = 12.sp) }
                                }
                                Text(k.name, fontSize = 13.sp, fontWeight = FontWeight.SemiBold, textAlign = TextAlign.Center, modifier = Modifier.weight(w[1]), maxLines = 1)
                                Text("${k.qty}", fontSize = 13.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[2]))
                                Text("${k.sold}", color = GreenC, fontSize = 13.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[3]))
                                Text("${k.rem}", color = OrangeC, fontSize = 13.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[4]))
                                Text("${fmt(k.soldV)} ﷼", fontSize = 12.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[5]))
                                Text("${fmt(k.remV)} ﷼", fontSize = 12.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[6]))
                            }
                        }
                        Row(Modifier.background(Color(0xFFE2ECFB)).padding(vertical = 9.dp), verticalAlignment = Alignment.CenterVertically) {
                            Text("الإجمالي", fontWeight = FontWeight.Bold, fontSize = 14.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[0] + w[1]))
                            Text("$tq", fontWeight = FontWeight.Bold, textAlign = TextAlign.Center, modifier = Modifier.weight(w[2]))
                            Text("$ts", color = GreenC, fontWeight = FontWeight.Bold, textAlign = TextAlign.Center, modifier = Modifier.weight(w[3]))
                            Text("$tr", color = OrangeC, fontWeight = FontWeight.Bold, textAlign = TextAlign.Center, modifier = Modifier.weight(w[4]))
                            Text("${fmt(tsv)} ﷼", fontWeight = FontWeight.Bold, fontSize = 12.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[5]))
                            Text("${fmt(trv)} ﷼", fontWeight = FontWeight.Bold, fontSize = 12.sp, textAlign = TextAlign.Center, modifier = Modifier.weight(w[6]))
                        }
                    }
                }
                // ── الدفعات ──
                CardBox {
                    Text("🗂 الدفعات (السحوبات)", fontWeight = FontWeight.Bold, fontSize = 15.sp, modifier = Modifier.padding(start = 14.dp, end = 14.dp, top = 10.dp, bottom = 4.dp))
                    for (b in r.batches) {
                        HorizontalDivider(color = Color(0xFFEEF2F6))
                        Row(Modifier.padding(horizontal = 14.dp, vertical = 8.dp), verticalAlignment = Alignment.CenterVertically) {
                            Column(Modifier.weight(1f)) {
                                Text(b.tag, fontSize = 13.5.sp, color = InkC)
                                Text("${b.profile} • ${b.issued} كرت • ${b.date?.let { dfm.format(Date(it)) } ?: "—"}", color = DimC, fontSize = 12.sp)
                            }
                            Text("مباع ${b.sold}", color = Color(0xFF0F766E), fontSize = 12.sp,
                                modifier = Modifier.clip(RoundedCornerShape(14.dp)).background(Color(0xFFE7F6F1)).padding(horizontal = 10.dp, vertical = 3.dp))
                        }
                    }
                }
                // ── سجل السداد ──
                CardBox {
                    Text("💵 سجل السداد", fontWeight = FontWeight.Bold, fontSize = 15.sp, modifier = Modifier.padding(start = 14.dp, end = 14.dp, top = 10.dp, bottom = 4.dp))
                    if (list.isEmpty()) Text("لا توجد دفعات بعد", color = DimC, fontSize = 13.sp, modifier = Modifier.padding(start = 14.dp, end = 14.dp, bottom = 10.dp))
                    for (p in list) {
                        HorizontalDivider(color = Color(0xFFEEF2F6))
                        Column(Modifier.padding(horizontal = 14.dp, vertical = 8.dp)) {
                            Text("${fmt(p.amount)} ﷼", color = GreenC, fontWeight = FontWeight.Bold)
                            Text(p.at + (if (p.note.isNotBlank()) " • " + p.note else ""), color = DimC, fontSize = 12.sp)
                        }
                    }
                }
                // ── كشف الحساب ──
                class Ln(val t: Long, val text: String, val v: Long)
                val lines = ArrayList<Ln>()
                for (b in r.batches) lines.add(Ln(b.date ?: 0L, "سحب ${b.profile} (${b.issued})", b.issued.toLong() * b.price))
                for (p in list) { val t = try { dfm.parse(p.at)?.time ?: 0L } catch (_: Exception) { 0L }; lines.add(Ln(t, "سداد" + (if (p.note.isNotBlank()) " — " + p.note else ""), -p.amount)) }
                lines.sortByDescending { it.t }
                val sdf = SimpleDateFormat("MM-dd", Locale.US)
                CardBox {
                    Text("📒 كشف الحساب", fontWeight = FontWeight.Bold, fontSize = 15.sp, modifier = Modifier.padding(start = 14.dp, end = 14.dp, top = 10.dp, bottom = 4.dp))
                    for (l in lines) {
                        HorizontalDivider(color = Color(0xFFEEF2F6))
                        Row(Modifier.padding(horizontal = 14.dp, vertical = 8.dp)) {
                            Text((if (l.t > 0) sdf.format(Date(l.t)) + " " else "") + l.text, fontSize = 13.5.sp, modifier = Modifier.weight(1f))
                            Text(if (l.v >= 0) "+${fmt(l.v)}" else "−${fmt(-l.v)}", color = if (l.v >= 0) RedC else GreenC, fontWeight = FontWeight.Bold)
                        }
                    }
                    Row(Modifier.fillMaxWidth().background(Color(0xFFFFF5F5)).padding(horizontal = 14.dp, vertical = 10.dp)) {
                        Text("الرصيد", fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f))
                        Text("${fmt(left)} ﷼", color = if (left > 0) RedC else GreenC, fontWeight = FontWeight.Bold)
                    }
                }
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button({ pay = true }, Modifier.weight(1f).height(48.dp), shape = RoundedCornerShape(16.dp), colors = ButtonDefaults.buttonColors(containerColor = TealC)) { Text("💵 سداد", color = Color.White) }
                    Button({ PosStatementPdf.share(ctx, r, list, listOf("الهوتسبوت", "يوزر منجر", "الراديوس").getOrElse(source) { "" }) }, Modifier.weight(1f).height(48.dp), shape = RoundedCornerShape(16.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFE7F6F1))) { Text("🖨 كشف حساب PDF", color = Color(0xFF0F766E)) }
                }
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedButton({ ask = "reset" }, Modifier.weight(1f).height(46.dp), shape = RoundedCornerShape(16.dp),
                        border = BorderStroke(1.5.dp, Color(0xFFF59E0B))) { Text("🔄 تصفير الحساب", color = Color(0xFFB45309)) }
                    OutlinedButton({ ask = "delete" }, Modifier.weight(1f).height(46.dp), shape = RoundedCornerShape(16.dp),
                        border = BorderStroke(1.5.dp, RedC)) { Text("🗑 حذف الحساب", color = RedC) }
                }
                if (ask != null) AlertDialog(onDismissRequest = { ask = null },
                    title = { Text(if (ask == "reset") "تصفير حساب ${r.pos}" else "حذف حساب ${r.pos}", fontWeight = FontWeight.Bold) },
                    text = { Text(if (ask == "reset") (if (left > 0) "سيُسجَّل سداد بقيمة ${fmt(left)} ﷼ باسم «تصفير الحساب» فيصبح المتبقي صفراً. يبقى السجل محفوظاً." else "الحساب مُصفَّر بالفعل — لا يوجد دين.")
                        else "سيُحذف كل سجل السداد لهذه النقطة (${list.size} دفعة) في ${listOf("الهوتسبوت", "يوزر منجر", "الراديوس").getOrElse(source) { "" }}، ويعود الدين كما كان قبل السداد. لا يمكن التراجع.") },
                    confirmButton = { TextButton({
                        val a = ask; ask = null
                        scope.launch { try { if (a == "reset") { if (left > 0) PosAcc.add(r.pos, left, "تصفير الحساب") } else PosAcc.clear(r.pos) } catch (_: Exception) {} }
                    }) { Text(if (ask == "reset") "تصفير" else "حذف", color = if (ask == "reset") Color(0xFFB45309) else RedC) } },
                    dismissButton = { TextButton({ ask = null }) { Text("إلغاء") } })
                if (pay) PayDialog(r.pos, iv, paid, list, onClose = { pay = false })
            }
        }
    }
}
