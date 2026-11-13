package com.zarinet.netcontrol.ui.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.subscription.PlanCatalog
import com.zarinet.netcontrol.subscription.SubscriptionPlan
import com.zarinet.netcontrol.subscription.SubscriptionState
import com.zarinet.netcontrol.subscription.SubscriptionStatus
import com.zarinet.netcontrol.subscription.SupabaseApi
import com.zarinet.netcontrol.subscription.WhatsApp
import org.json.JSONArray

private class Extra(val bonus: Int, val features: List<String>)

private fun durationLabel(m: Int): String = when {
    m == 1 -> "شهري"
    m == 12 -> "سنوي"
    m % 12 == 0 && m / 12 == 2 -> "سنتان"
    m % 12 == 0 -> "${m / 12} سنوات"
    m == 2 -> "شهران"
    m <= 10 -> "$m أشهر"
    else -> "$m شهراً"
}
private fun bonusLabel(d: Int): String = when {
    d <= 0 -> ""
    d == 1 -> "🎁 +يوم مجاناً"
    d == 2 -> "🎁 +يومان مجاناً"
    d <= 10 -> "🎁 +$d أيام مجاناً"
    else -> "🎁 +$d يوماً مجاناً"
}

/** باقات اشتراك التطبيق في بطاقة واحدة: يختار المستخدم المدة (شهري/سنوي/…) والسعر بالريال السعودي. */
@Composable
fun PlanPickerOne(st: SubscriptionStatus, id: String?, onWhatsApp: (String) -> Unit) {
    val catalog by PlanCatalog.all.collectAsState()
    var extras by remember { mutableStateOf<Map<String, Extra>>(emptyMap()) }
    LaunchedEffect(Unit) {
        try { if (catalog.isEmpty()) PlanCatalog.refresh(SupabaseApi()) } catch (_: Exception) {}
        try {
            val api = SupabaseApi()
            val txt = AuthService.authorized { t -> api.rest("GET", "subscription_plans?select=code,bonus_days,features", null, t) }
            val a = JSONArray(txt); val m = HashMap<String, Extra>()
            for (i in 0 until a.length()) {
                val o = a.getJSONObject(i)
                val f = if (o.isNull("features")) "" else o.optString("features")
                m[o.optString("code")] = Extra(o.optInt("bonus_days", 0), f.split("\n").map { it.trim() }.filter { it.isNotEmpty() })
            }
            extras = m
        } catch (_: Exception) {}
    }
    val plans = PlanCatalog.visible(catalog).sortedBy { it.months }
    if (plans.isEmpty()) {
        Text("جاري تحميل الباقات…", color = Color(0xFF6B7280))
        return
    }
    val curCode = if (st.state == SubscriptionState.SUBSCRIPTION_ACTIVE) st.sub?.plan?.code else null
    var selCode by remember { mutableStateOf(curCode ?: plans.firstOrNull { it.months == 12 }?.code ?: plans.first().code) }
    val sel = plans.firstOrNull { it.code == selCode } ?: plans.first()
    val teal = Color(0xFF14A37F); val gold = Color(0xFFB8860B)
    val text = Color(0xFF1F2937); val dim = Color(0xFF6B7280)
    var maxMonths = 0
    for (p in plans) if (p.months > maxMonths) maxMonths = p.months

    Card(Modifier.fillMaxWidth(), shape = RoundedCornerShape(22.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        border = BorderStroke(1.5.dp, if (curCode != null) teal else Color(0xFFDCE3EC))) {
        Column(Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("ميكروتك الشامل", fontSize = 20.sp, fontWeight = FontWeight.Bold, color = text, modifier = Modifier.weight(1f))
                if (curCode != null) Surface(shape = RoundedCornerShape(50), color = Color(0xFFDDF3EC)) {
                    Text("باقتك الحالية", color = teal, fontSize = 13.sp, modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp))
                }
            }
            for (row in plans.chunked(2)) {
                Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                    for (p in row) {
                        val on = p.code == sel.code
                        val ex = extras[p.code]
                        Surface(Modifier.weight(1f).clickable { selCode = p.code }, shape = RoundedCornerShape(18.dp),
                            color = if (on) Color(0xFFDDF3EC) else Color(0xFFF0F3F8),
                            border = if (on) BorderStroke(2.dp, teal) else null) {
                            Column(Modifier.padding(vertical = 14.dp, horizontal = 8.dp).fillMaxWidth(), horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(durationLabel(p.months) + (if (p.months == maxMonths && plans.size > 2) " ⭐" else ""), color = if (on) teal else dim, fontSize = 15.sp)
                                Spacer(Modifier.height(4.dp))
                                Text("${p.priceSar} ريال", color = if (on) teal else text, fontSize = 22.sp, fontWeight = FontWeight.Bold)
                                val b = bonusLabel(ex?.bonus ?: 0)
                                if (b.isNotEmpty()) Text(b, color = gold, fontSize = 13.sp)
                            }
                        }
                    }
                    if (row.size == 1) Spacer(Modifier.weight(1f))
                }
            }
            val ex = extras[sel.code]
            if (sel.months > 1) Text("≈ ${sel.priceSar / sel.months} ريال سعودي / شهر", color = dim, fontSize = 13.sp)
            for (f in ex?.features ?: emptyList()) Text("✓ $f", color = text, fontSize = 15.sp)
            val renew = curCode == sel.code
            Button({ if (id != null) onWhatsApp(WhatsApp.subscribeMessage(id, sel)) }, Modifier.fillMaxWidth().height(52.dp),
                enabled = id != null, shape = RoundedCornerShape(18.dp),
                colors = ButtonDefaults.buttonColors(containerColor = if (renew) Color(0xFFEEF2F8) else teal, contentColor = if (renew) text else Color.White)) {
                Text((if (renew) "✓ تجديد — " else "اشترك — ") + durationLabel(sel.months) + " (${sel.priceSar} ريال)", fontSize = 16.sp, textAlign = TextAlign.Center)
            }
        }
    }
}

/** سطر الباقة في إدارة الباقات: باقة التجربة تُعرض بالأيام وبدون سعر. */
fun adminPlanSubtitle(p: SubscriptionPlan, def: String): String {
    if (p.code != "TRIAL") return def
    val d = p.months
    val days = when { d == 1 -> "يوم واحد"; d == 2 -> "يومان"; d <= 10 -> "$d أيام"; else -> "$d يوماً" }
    return "مجانية • $days"
}
