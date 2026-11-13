package com.zarinet.netcontrol.ui.screens

import android.app.AlertDialog
import android.content.Context
import android.text.InputType
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.Toast
import androidx.compose.runtime.MutableState
import com.zarinet.netcontrol.account.AuthService
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.subscription.SupabaseApi
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.lang.ref.WeakReference

/** تعديل جهاز بث (الاسم/IP) أو حذفه من صفحة إشعارات تلجرام. */
object BcastEdit {
    private var ctxRef: WeakReference<Context>? = null
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private const val BCAST = "https://yvykqdaqfbzzvouytfop.supabase.co/functions/v1/tg-bcast"

    @JvmStatic fun setCtx(c: Context?) { if (c != null) ctxRef = WeakReference(c) }

    private suspend fun rpc(fn: String, body: JSONObject): String {
        val api = SupabaseApi()
        return AuthService.authorized { t -> api.rpc(fn, body, t) }
    }

    private suspend fun removeWatch(ip: String) {
        val api = Session.api()
        for (r in api.print("/tool/netwatch", listOf(".id", "comment"), listOf("?host=$ip")))
            if ((r["comment"] ?: "").startsWith("shamel-tg")) api.exec("/tool/netwatch/remove", mapOf(".id" to (r[".id"] ?: "")))
    }

    @JvmStatic
    fun open(id: String, name: String, ip: String, tick: MutableState<Int>?) {
        val ctx = ctxRef?.get() ?: return
        val pad = (16 * ctx.resources.displayMetrics.density).toInt()
        val box = LinearLayout(ctx).apply { orientation = LinearLayout.VERTICAL; setPadding(pad, pad / 2, pad, 0) }
        val nameEt = EditText(ctx).apply { setText(name); hint = "اسم الجهاز" }
        val ipEt = EditText(ctx).apply { setText(ip); hint = "عنوان IP"; inputType = InputType.TYPE_CLASS_PHONE }
        box.addView(nameEt); box.addView(ipEt)
        fun toast(m: String) = Toast.makeText(ctx, m, Toast.LENGTH_LONG).show()
        fun bump() { if (tick != null) tick.value = (tick.value ?: 0) + 1 }
        AlertDialog.Builder(ctx)
            .setTitle("تعديل جهاز البث")
            .setView(box)
            .setPositiveButton("حفظ") { _, _ ->
                val n = nameEt.text.toString().trim(); val p = ipEt.text.toString().trim()
                if (n.isEmpty() || !Regex("^\\d{1,3}(\\.\\d{1,3}){3}$").matches(p)) { toast("اكتب الاسم و IP صحيحاً"); return@setPositiveButton }
                if (n == name && p == ip) return@setPositiveButton
                val dev = Session.device
                if (dev == null) { toast("اتصل بالراوتر أولاً"); return@setPositiveButton }
                scope.launch {
                    try {
                        withContext(Dispatchers.IO) {
                            rpc("bcast_device_remove", JSONObject().put("p_id", id))
                            val key = JSONObject(rpc("bcast_device_add", JSONObject().put("p_router", dev.id).put("p_name", n).put("p_ip", p))).optString("key")
                            try { removeWatch(ip) } catch (_: Exception) {}
                            if (p != ip) try { removeWatch(p) } catch (_: Exception) {}
                            val f = { s: String -> "/tool fetch url=\"$BCAST?k=$key&s=$s\" keep-result=no" }
                            Session.api().exec("/tool/netwatch/add", mapOf("host" to p, "interval" to "30s", "timeout" to "2s",
                                "comment" to "shamel-tg " + n.filter { it.isLetterOrDigit() || it == ' ' || it == '-' },
                                "down-script" to f("down"), "up-script" to f("up")))
                        }
                        toast("✅ تم تعديل جهاز البث")
                    } catch (e: Exception) { toast(e.message ?: "خطأ") }
                    bump()
                }
            }
            .setNeutralButton("حذف") { _, _ ->
                AlertDialog.Builder(ctx).setMessage("حذف «$name» من مراقبة البث؟")
                    .setPositiveButton("حذف") { _, _ ->
                        scope.launch {
                            try {
                                withContext(Dispatchers.IO) {
                                    rpc("bcast_device_remove", JSONObject().put("p_id", id))
                                    try { removeWatch(ip) } catch (_: Exception) {}
                                }
                                toast("🗑 تم الحذف")
                            } catch (e: Exception) { toast(e.message ?: "خطأ") }
                            bump()
                        }
                    }.setNegativeButton("إلغاء", null).show()
            }
            .setNegativeButton("إلغاء", null)
            .show()
    }
}
