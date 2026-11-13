package com.zarinet.netcontrol.ui.screens

import android.widget.Toast
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.ui.components.*
import com.zarinet.netcontrol.ui.theme.C
import com.zarinet.netcontrol.util.Fmt
import com.zarinet.netcontrol.util.normalizeMac
import kotlinx.coroutines.launch

private val TYPES = listOf("حظر" to "blocked", "سماح" to "bypassed", "عادي" to "regular")

/** IP Binding بالماك: حظر (blocked) / سماح (bypassed) / عادي (regular). */
suspend fun bindMac(mac: String, type: String, reason: String, server: String) {
    val api = Session.api()
    val exists = api.print("/ip/hotspot/ip-binding", listOf(".id", "mac-address"))
        .firstOrNull { it["mac-address"].orEmpty().equals(mac, true) }
    val params = linkedMapOf("mac-address" to mac, "type" to type, "comment" to reason.ifBlank { "يدوي" }, "server" to server.ifBlank { "all" })
    if (exists != null) api.exec("/ip/hotspot/ip-binding/set", params + (".id" to exists[".id"]!!))
    else api.exec("/ip/hotspot/ip-binding/add", params)
    if (type == "regular") return
    try {
        for (r in api.print("/ip/hotspot/active", listOf(".id", "mac-address"))) if (r["mac-address"].orEmpty().equals(mac, true)) api.exec("/ip/hotspot/active/remove", mapOf(".id" to r[".id"]!!))
    } catch (_: Exception) {}
    try {
        for (r in api.print("/ip/hotspot/host", listOf(".id", "mac-address"))) if (r["mac-address"].orEmpty().equals(mac, true)) api.exec("/ip/hotspot/host/remove", mapOf(".id" to r[".id"]!!))
    } catch (_: Exception) {}
}

@Composable
fun MacBindDialog(onDismiss: () -> Unit, onDone: () -> Unit) {
    val ctx = LocalContext.current
    val scope = rememberCoroutineScope()
    var mac by remember { mutableStateOf("") }
    var kind by remember { mutableStateOf(TYPES[0].first) }
    var reason by remember { mutableStateOf("يدوي") }
    var server by remember { mutableStateOf("all") }
    var servers by remember { mutableStateOf(listOf("all")) }
    var online by remember { mutableStateOf<List<Pair<String, String>>>(emptyList()) }
    var busy by remember { mutableStateOf(false) }
    LaunchedEffect(Unit) {
        runCatching {
            val api = Session.api()
            servers = listOf("all") + api.print("/ip/hotspot", listOf("name")).mapNotNull { it["name"] }
            online = api.print("/ip/hotspot/host", listOf("mac-address", "address"))
                .mapNotNull { h -> h["mac-address"]?.let { it to "${Fmt.ltr(it)}  •  ${h["address"].orEmpty()}" } }
                .distinctBy { it.first }
        }
        runCatching {
            val users = Session.api().print("/ip/hotspot/active", listOf("user", "mac-address")).associate { it["mac-address"].orEmpty() to it["user"].orEmpty() }
            online = online.map { (m, d) -> m to (users[m]?.let { "$d  •  $it" } ?: d) }
        }
    }
    val norm = normalizeMac(mac)
    val type = TYPES.first { it.first == kind }.second
    FormDialog("حظر / سماح جهاز (MAC)", confirmText = kind, enabled = norm != null && !busy, onDismiss = onDismiss, onConfirm = {
        busy = true
        scope.launch {
            try {
                bindMac(norm!!, type, reason.trim(), server)
                Toast.makeText(ctx, "تم: $kind $norm", Toast.LENGTH_SHORT).show()
                onDismiss(); onDone()
            } catch (e: Exception) { Toast.makeText(ctx, e.message ?: "خطأ", Toast.LENGTH_LONG).show(); busy = false }
        }
    }) {
        Field(mac, { mac = it }, "عنوان الجهاز (MAC)", ltr = true, placeholder = "9A:D0:31:C0:29:11")
        if (mac.isNotBlank() && norm == null) Text("صيغة MAC غير صحيحة (12 خانة)", style = MaterialTheme.typography.bodySmall, color = C.Red)
        if (online.isNotEmpty()) Dropdown("أو اختر من الأجهزة المتصلة", online.firstOrNull { it.first.equals(norm, true) }?.second.orEmpty(),
            online.map { it.second }) { v -> mac = online.first { it.second == v }.first }
        Dropdown("النوع", kind, TYPES.map { it.first }) { kind = it }
        Field(reason, { reason = it }, "ملاحظة / السبب", placeholder = "مثال: netshare / مدير")
        Dropdown("السيرفر", server, servers) { server = it }
        if (busy) LinearProgressIndicator(Modifier.fillMaxWidth(), color = C.Teal, trackColor = C.CardHi)
    }
}
