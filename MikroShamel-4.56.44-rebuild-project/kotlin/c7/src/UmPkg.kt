package com.zarinet.netcontrol.util

import com.zarinet.netcontrol.data.Session

/**
 * إضافة باقة يوزر منجر: Profile + Limitation دائماً + ربطهما (حتى لو كانت الباقة مفتوحة بلا ميغات/سرعة).
 * يوزر منجر v6 يحتاج Limitation مربوطة بالبروفايل حتى تظهر وتُطبَّق القيود.
 */
/** يحوّل الوقت المسموح إلى صيغة RouterOS: "10" = 10h، ويقبل 30m و10h و3d و1w ومجموعات مثل 1d12h. فارغ/0 = بلا حد. */
fun umUptimeNorm(raw: String): String {
    val t = raw.trim().lowercase().replace(" ", "")
        .replace("دقيقة", "m").replace("د", "m").replace("ساعة", "h").replace("س", "h").replace("يوم", "d").replace("ي", "d")
    if (t.isEmpty() || t == "0") return ""
    if (t.all { it.isDigit() }) return t + "h"
    if (!Regex("^(\\d+[wdhms])+$").matches(t)) error("صيغة الوقت المسموح غير صحيحة — أمثلة: 30m أو 10h أو 3d")
    return t
}

/** السرعة قد تحمل الوقت المسموح من نافذة الإضافة: "1M/4M|u=10h". */
internal fun splitSpeedUptime(raw: String): Pair<String, String> {
    val i = raw.indexOf("|u=")
    if (i < 0) return raw.trim() to ""
    return raw.substring(0, i).trim() to umUptimeNorm(raw.substring(i + 3))
}

suspend fun umAddPackage(name: String, days: Int, mb: Long, speedRaw: String, price: String): Any {
    val sh = splitSpeedUptime(speedRaw); val speed = sh.first; val uptime = sh.second
    val v6 = UserManager.version() == UserManager.Ver.V6
    val api = Session.api()
    val customer = UserManager.customerName()
    val limName = "lim-$name"
    val l = linkedMapOf("name" to limName)
    if (mb > 0) l["transfer-limit"] = (mb * 1048576).toString()
    if (speed.isNotBlank()) {
        val parts = speed.split("/").map { it.trim() }
        l["rate-limit-rx"] = parts[0]
        l["rate-limit-tx"] = if (parts.size > 1) parts[1] else parts[0]
    }
    if (uptime.isNotEmpty()) l["uptime-limit"] = uptime
    if (v6) {
        val p = linkedMapOf("name" to name, "owner" to customer, "name-for-users" to name, "starts-at" to "logon",
            "validity" to if (days > 0) "${days}d" else "0s")
        if (price.isNotBlank()) p["price"] = price
        api.exec("/tool/user-manager/profile/add", p)
        val limPath = "/tool/user-manager/profile/limitation"
        val old = api.print(limPath, listOf(".id", "name"), listOf("?name=$limName"))
        if (old.isEmpty()) api.exec("$limPath/add", l + ("owner" to customer))
        else api.exec("$limPath/set", l + (".id" to (old[0][".id"] ?: "")))
        api.exec("/tool/user-manager/profile/profile-limitation/add", mapOf("profile" to name, "limitation" to limName))
    } else {
        val p = linkedMapOf("name" to name, "name-for-users" to name, "starts-when" to "first-auth",
            "validity" to if (days > 0) "${days}d" else "unlimited")
        if (price.isNotBlank()) p["price"] = price
        api.exec("/user-manager/profile/add", p)
        val old = api.print("/user-manager/limitation", listOf(".id", "name"), listOf("?name=$limName"))
        if (old.isEmpty()) api.exec("/user-manager/limitation/add", l)
        else api.exec("/user-manager/limitation/set", l + (".id" to (old[0][".id"] ?: "")))
        api.exec("/user-manager/profile-limitation/add", mapOf("profile" to name, "limitation" to limName))
    }
    return Unit
}

/** تعديل باقة: Profile + Limitation (تُنشأ وتُربط إن لم تكن موجودة) مع الوقت المسموح. */
suspend fun umUpdatePackage(p: UmPackageRow, name: String, days: Int, mb: Long, speedRaw: String, price: String): Any {
    val sh = splitSpeedUptime(speedRaw); val speed = sh.first; val uptime = sh.second
    val v6 = UserManager.version() == UserManager.Ver.V6
    val api = Session.api()
    val customer = UserManager.customerName()
    val profPath = if (v6) "/tool/user-manager/profile" else "/user-manager/profile"
    val limPath = if (v6) "/tool/user-manager/profile/limitation" else "/user-manager/limitation"
    val linkPath = if (v6) "/tool/user-manager/profile/profile-limitation" else "/user-manager/profile-limitation"
    api.exec("$profPath/set", linkedMapOf(".id" to p.id, "name" to name, "name-for-users" to name,
        "validity" to if (days > 0) "${days}d" else if (v6) "0s" else "unlimited", "price" to price.ifBlank { "0" }))
    val parts = speed.split("/").map { it.trim() }.filter { it.isNotBlank() }
    val rx = if (parts.isNotEmpty()) parts[0] else "0"
    val tx = if (parts.size > 1) parts[1] else rx
    val vals = linkedMapOf("transfer-limit" to (mb * 1048576).toString(), "rate-limit-rx" to rx, "rate-limit-tx" to tx,
        "uptime-limit" to uptime.ifEmpty { "0s" })
    if (p.limitationIds.isNotEmpty()) {
        api.exec("$limPath/set", vals + (".id" to p.limitationIds.first()))
    } else {
        val limName = "lim-$name"
        val old = api.print(limPath, listOf(".id", "name"), listOf("?name=$limName"))
        if (old.isEmpty()) api.exec("$limPath/add", linkedMapOf("name" to limName) + vals + (if (v6) mapOf("owner" to customer) else emptyMap()))
        else api.exec("$limPath/set", vals + (".id" to (old[0][".id"] ?: "")))
        api.exec("$linkPath/add", mapOf("profile" to name, "limitation" to limName))
    }
    return Unit
}

/** يقرأ الوقت المسموح من Limitation الباقة بصيغة قصيرة (30m / 10h / 3d / 1d12h). */
suspend fun umPackageUptime(p: UmPackageRow): String {
    if (p.limitationIds.isEmpty()) return ""
    val v6 = UserManager.version() == UserManager.Ver.V6
    val limPath = if (v6) "/tool/user-manager/profile/limitation" else "/user-manager/limitation"
    val r = Session.api().print(limPath, listOf(".id", "uptime-limit"), listOf("?.id=" + p.limitationIds.first()))
    val u = if (r.isEmpty()) "" else (r[0]["uptime-limit"] ?: "")
    var sec = Fmt.seconds(u)
    if (sec <= 0) return ""
    val sb = StringBuilder()
    val units = listOf(604800L to "w", 86400L to "d", 3600L to "h", 60L to "m", 1L to "s")
    for (pair in units) { val n = sec / pair.first; if (n > 0) { sb.append(n).append(pair.second); sec -= n * pair.first } }
    return sb.toString()
}
