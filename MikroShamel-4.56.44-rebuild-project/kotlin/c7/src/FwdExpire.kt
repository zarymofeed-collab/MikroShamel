package com.zarinet.netcontrol.util

import com.zarinet.netcontrol.api.RouterOsClient
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch

/** مهمة على الراوتر تحذف قواعد التحويل (NAT + Filter) تلقائياً بعد 3 ساعات ثم تحذف نفسها. */
object FwdExpire {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    @JvmStatic
    fun arm(ros: RouterOsClient?, f: CloudForward?) {
        if (ros == null || f == null) return
        val tag = CloudAccess.FWD + f.publicPort
        val q = "\"" + tag + "\""
        val script = "/ip firewall nat remove [find comment=$q]; " +
            "/ip firewall filter remove [find comment=$q]; " +
            "/system scheduler remove [find name=$q]"
        scope.launch {
            runCatching {
                for (r in ros.print("/system/scheduler", listOf(".id"), listOf("?name=$tag")))
                    ros.exec("/system/scheduler/remove", mapOf(".id" to (r[".id"] ?: "")))
                ros.exec("/system/scheduler/add", linkedMapOf(
                    "name" to tag, "interval" to "03:00:00", "on-event" to script,
                    "comment" to "shamel: auto-remove remote access after 3h"))
            }
        }
    }
}
