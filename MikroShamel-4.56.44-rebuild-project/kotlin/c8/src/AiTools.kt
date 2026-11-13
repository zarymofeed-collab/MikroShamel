package com.zarinet.netcontrol.ui.screens

import com.zarinet.netcontrol.api.RouterOsClient
import org.json.JSONArray
import org.json.JSONObject

/**
 * أدوات الراوتر للمساعد الذكي — قراءة فقط، تُنفَّذ على الهاتف عبر RouterOS API.
 * كل نتيجة تمر بالحجب: لا كلمات مرور ولا أسرار ولا مفاتيح تغادر الهاتف.
 * لا يوجد هنا أي أمر يغيّر إعدادات الراوتر (لا add/set/remove/enable/disable).
 */
object AiTools {
    private val SECRET_KEY = Regex("(^|[-_.])(pass|password|passwd|secret|psk|token|private-key|preshared-key|pre-shared-key|ipsec-secret|wpa-pre-shared-key|wpa2-pre-shared-key|api-key|auth-key|certificate|passphrase)($|[-_.])", RegexOption.IGNORE_CASE)
    private val SECRET_TXT = Regex("((?:password|passwd|pass|secret|ipsec-secret|private-key|preshared-key|pre-shared-key|wpa2?-pre-shared-key|token|api-?key)\\s*[=:]\\s*)(\"[^\"]*\"|\\S+)", RegexOption.IGNORE_CASE)
    private val NOISE = setOf(".nextid", ".dead", ".about")

    fun redactText(s: String): String = s.replace(SECRET_TXT, "$1***")
        .replace(Regex("-----BEGIN [A-Z ]*PRIVATE KEY-----[\\s\\S]*?-----END [A-Z ]*PRIVATE KEY-----"), "[مفتاح خاص محذوف]")

    fun clean(rows: List<Map<String, String>>, max: Int = 60, keep: Set<String>? = null): JSONArray {
        val a = JSONArray()
        for ((i, r) in rows.withIndex()) {
            if (i >= max) break
            val o = JSONObject()
            for ((k, v) in r) {
                if (k in NOISE) continue
                if (keep != null && k !in keep && k != ".id") continue
                o.put(k, if (SECRET_KEY.containsMatchIn(k)) "***" else redactText(if (v.length > 160) v.take(160) + "…" else v))
            }
            a.put(o)
        }
        return a
    }

    /** أسماء عربية لعرض ما يقرأه المساعد. */
    fun label(name: String): String = when (name) {
        "router_status" -> "حالة الراوتر"; "router_resources" -> "الموارد"; "router_interfaces" -> "الواجهات"
        "router_routes" -> "التوجيه"; "router_firewall" -> "Firewall"; "router_nat" -> "NAT"; "router_mangle" -> "Mangle"
        "router_queues" -> "السرعات"; "router_hotspot" -> "الهوتسبوت"; "router_ppp" -> "PPPoE"; "router_dhcp_dns" -> "DHCP و DNS"
        "router_radius" -> "إعداد الراديوس على الراوتر"; "router_wireless" -> "الوايرلس"; "router_security" -> "الأمان"
        "router_logs" -> "السجلات"; "router_ping" -> "Ping"
        "radius_status" -> "خوادم الراديوس"; "radius_database" -> "قاعدة الراديوس"; "radius_cards" -> "كروت الراديوس"
        "radius_users" -> "كرت راديوس"; "radius_auth_logs" -> "سجل دخول الراديوس"; "radius_sessions" -> "جلسات الراديوس"
        "server_monitor" -> "الخوادم"; "application_search", "application_help" -> "قاعدة المعرفة"; "propose_change" -> "اقتراح تعديل"
        else -> name
    }

    private suspend fun rd(api: RouterOsClient, out: JSONObject, key: String, path: String, max: Int = 60, keep: Set<String>? = null, q: List<String> = emptyList()): List<Map<String, String>> {
        return try { val r = api.print(path, null, q); out.put(key, clean(r, max, keep)); if (r.size > max) out.put(key + "_total", r.size); r }
        catch (e: Exception) { out.put(key, "غير متاح: " + (e.message ?: "").take(80)); emptyList() }
    }
    private suspend fun cnt(api: RouterOsClient, out: JSONObject, key: String, path: String, q: List<String> = emptyList()) {
        try { out.put(key, api.count(path, q)) } catch (_: Exception) { out.put(key, "غير متاح") }
    }

    suspend fun run(api: RouterOsClient, name: String, args: JSONObject): JSONObject {
        val o = JSONObject()
        when (name) {
            "router_status" -> {
                rd(api, o, "identity", "/system/identity")
                rd(api, o, "resource", "/system/resource")
                rd(api, o, "routerboard", "/system/routerboard", keep = setOf("routerboard", "model", "serial-number", "current-firmware", "upgrade-firmware", "firmware-type"))
                rd(api, o, "clock", "/system/clock")
                rd(api, o, "packages", "/system/package", 40, setOf("name", "version", "disabled"))
            }
            "router_resources" -> { rd(api, o, "resource", "/system/resource"); rd(api, o, "health", "/system/health") }
            "router_interfaces" -> {
                rd(api, o, "interfaces", "/interface", 80, setOf("name", "type", "running", "disabled", "mtu", "comment", "rx-byte", "tx-byte", "link-downs", "last-link-down-time"))
                rd(api, o, "addresses", "/ip/address", 60, setOf("address", "network", "interface", "disabled", "dynamic", "comment"))
                rd(api, o, "bridges", "/interface/bridge", 20, setOf("name", "vlan-filtering", "protocol-mode", "disabled"))
                rd(api, o, "bridge_ports", "/interface/bridge/port", 80, setOf("interface", "bridge", "pvid", "disabled", "inactive"))
                rd(api, o, "vlans", "/interface/vlan", 60, setOf("name", "interface", "vlan-id", "running", "disabled"))
            }
            "router_routes" -> {
                rd(api, o, "routes", "/ip/route", 80, setOf("dst-address", "gateway", "immediate-gw", "distance", "active", "disabled", "dynamic", "routing-mark", "routing-table", "check-gateway", "scope", "target-scope", "comment"))
                rd(api, o, "dhcp_clients", "/ip/dhcp-client", 10, setOf("interface", "status", "address", "gateway", "add-default-route", "disabled"))
                rd(api, o, "pppoe_clients", "/interface/pppoe-client", 10, setOf("name", "interface", "running", "disabled", "user", "add-default-route"))
                rd(api, o, "routing_tables", "/routing/table", 20)
            }
            "router_firewall" -> {
                rd(api, o, "filter", "/ip/firewall/filter", 90, setOf("chain", "action", "protocol", "src-address", "dst-address", "dst-port", "in-interface", "in-interface-list", "out-interface", "connection-state", "src-address-list", "dst-address-list", "disabled", "dynamic", "comment", "bytes", "packets"))
                cnt(api, o, "connections", "/ip/firewall/connection")
                cnt(api, o, "address_list_entries", "/ip/firewall/address-list")
                rd(api, o, "connection_tracking", "/ip/firewall/connection/tracking")
            }
            "router_nat" -> rd(api, o, "nat", "/ip/firewall/nat", 80, setOf("chain", "action", "protocol", "src-address", "dst-address", "dst-port", "in-interface", "out-interface", "out-interface-list", "to-addresses", "to-ports", "disabled", "dynamic", "comment", "bytes", "packets"))
            "router_mangle" -> {
                rd(api, o, "mangle", "/ip/firewall/mangle", 100, setOf("chain", "action", "protocol", "src-address", "dst-address", "in-interface", "in-interface-list", "out-interface", "connection-mark", "new-connection-mark", "packet-mark", "new-packet-mark", "new-routing-mark", "routing-mark", "per-connection-classifier", "connection-state", "new-ttl", "passthrough", "disabled", "dynamic", "comment", "bytes", "packets"))
                rd(api, o, "routing_tables", "/routing/table", 20)
            }
            "router_queues" -> {
                val qs = try { api.print("/queue/simple", null, emptyList()) } catch (_: Exception) { emptyList() }
                val fixed = qs.filter { it["dynamic"] != "true" }
                o.put("simple_total", qs.size); o.put("simple_dynamic", qs.size - fixed.size)
                o.put("simple_static", clean(fixed, 60, setOf("name", "target", "max-limit", "limit-at", "burst-limit", "queue", "parent", "disabled", "comment")))
                rd(api, o, "tree", "/queue/tree", 60, setOf("name", "parent", "packet-mark", "max-limit", "limit-at", "priority", "queue", "disabled", "comment"))
                rd(api, o, "types", "/queue/type", 30, setOf("name", "kind", "pcq-rate", "pcq-classifier"))
            }
            "router_hotspot" -> {
                rd(api, o, "servers", "/ip/hotspot", 20, setOf("name", "interface", "profile", "address-pool", "disabled", "addresses-per-mac", "idle-timeout"))
                rd(api, o, "server_profiles", "/ip/hotspot/profile", 20, setOf("name", "login-by", "use-radius", "radius-interim-update", "html-directory", "dns-name", "hotspot-address"))
                rd(api, o, "user_profiles", "/ip/hotspot/user/profile", 40, setOf("name", "rate-limit", "shared-users", "session-timeout", "idle-timeout", "keepalive-timeout", "address-pool", "on-login"))
                cnt(api, o, "active", "/ip/hotspot/active"); cnt(api, o, "users", "/ip/hotspot/user"); cnt(api, o, "hosts", "/ip/hotspot/host")
                rd(api, o, "ip_bindings", "/ip/hotspot/ip-binding", 30, setOf("mac-address", "address", "type", "disabled", "comment"))
                val u = args.optString("user").trim()
                if (u.isNotEmpty()) {
                    rd(api, o, "user", "/ip/hotspot/user", 3, setOf("name", "profile", "limit-uptime", "limit-bytes-total", "uptime", "bytes-in", "bytes-out", "disabled", "comment", "mac-address", "server"), listOf("?name=$u"))
                    rd(api, o, "user_active", "/ip/hotspot/active", 5, setOf("user", "address", "mac-address", "uptime", "session-time-left", "bytes-in", "bytes-out", "login-by", "radius"), listOf("?user=$u"))
                }
            }
            "router_ppp" -> {
                rd(api, o, "pppoe_servers", "/interface/pppoe-server/server", 10, setOf("service-name", "interface", "default-profile", "one-session-per-host", "disabled", "authentication"))
                rd(api, o, "profiles", "/ppp/profile", 30, setOf("name", "local-address", "remote-address", "rate-limit", "dns-server", "only-one", "change-tcp-mss", "use-encryption"))
                rd(api, o, "aaa", "/ppp/aaa")
                cnt(api, o, "secrets", "/ppp/secret"); cnt(api, o, "active_count", "/ppp/active")
                rd(api, o, "active", "/ppp/active", 30, setOf("name", "service", "address", "caller-id", "uptime"))
                val u = args.optString("user").trim()
                if (u.isNotEmpty()) rd(api, o, "secret", "/ppp/secret", 3, setOf("name", "service", "profile", "disabled", "comment", "last-logged-out", "remote-address"), listOf("?name=$u"))
            }
            "router_dhcp_dns" -> {
                rd(api, o, "dhcp_servers", "/ip/dhcp-server", 20, setOf("name", "interface", "address-pool", "lease-time", "disabled", "authoritative"))
                rd(api, o, "dhcp_networks", "/ip/dhcp-server/network", 20, setOf("address", "gateway", "dns-server"))
                rd(api, o, "pools", "/ip/pool", 20, setOf("name", "ranges", "next-pool"))
                cnt(api, o, "leases", "/ip/dhcp-server/lease")
                rd(api, o, "dns", "/ip/dns")
            }
            "router_radius" -> {
                val rs = rd(api, o, "radius", "/radius", 20, setOf("address", "service", "authentication-port", "accounting-port", "timeout", "src-address", "disabled", "comment", "called-id", "domain"))
                rd(api, o, "incoming", "/radius/incoming")
                val tun = JSONArray()
                for (p in listOf("/interface/l2tp-client", "/interface/sstp-client")) try {
                    for (t in api.print(p, null, emptyList())) if (t["name"].orEmpty().startsWith("shamel")) tun.put(clean(listOf(t), 1, setOf("name", "connect-to", "running", "disabled", "comment")).get(0))
                } catch (_: Exception) {}
                o.put("tunnels", tun)
                rd(api, o, "hotspot_profiles", "/ip/hotspot/profile", 20, setOf("name", "use-radius", "radius-interim-update", "login-by"))
                rd(api, o, "ppp_aaa", "/ppp/aaa")
                val mon = JSONArray()
                for ((i, r) in rs.withIndex()) { if (i >= 4) break
                    try { val m = api.exec("/radius/monitor", mapOf("numbers" to (r[".id"] ?: "$i"), "once" to "")).rows; if (m.isNotEmpty()) mon.put(clean(m, 1).get(0)) } catch (_: Exception) {} }
                o.put("monitor", mon)
            }
            "router_wireless" -> {
                rd(api, o, "wireless", "/interface/wireless", 20, setOf("name", "mode", "ssid", "band", "frequency", "channel-width", "wireless-protocol", "running", "disabled", "tx-power", "country"))
                rd(api, o, "wireless_clients", "/interface/wireless/registration-table", 50, setOf("interface", "mac-address", "radio-name", "signal-strength", "signal-to-noise", "tx-ccq", "tx-rate", "rx-rate", "uptime"))
                rd(api, o, "wifi", "/interface/wifi", 20, setOf("name", "configuration.ssid", "configuration.mode", "channel", "running", "disabled"))
                rd(api, o, "wifi_clients", "/interface/wifi/registration-table", 50, setOf("interface", "mac-address", "signal", "tx-rate", "rx-rate", "uptime"))
            }
            "router_security" -> {
                rd(api, o, "services", "/ip/service", 20, setOf("name", "port", "disabled", "address", "certificate"))
                rd(api, o, "users", "/user", 30, setOf("name", "group", "disabled", "address", "last-logged-in"))
                rd(api, o, "groups", "/user/group", 20, setOf("name", "policy"))
                rd(api, o, "socks", "/ip/socks", 1, setOf("enabled", "port"))
                rd(api, o, "proxy", "/ip/proxy", 1, setOf("enabled", "port"))
                rd(api, o, "mac_server", "/tool/mac-server", 1)
                rd(api, o, "dns", "/ip/dns", 1, setOf("allow-remote-requests", "servers"))
                rd(api, o, "neighbor_discovery", "/ip/neighbor/discovery-settings", 1)
            }
            "router_logs" -> {
                val f = args.optString("topics").trim().lowercase()
                val lim = args.optInt("limit", 40).coerceIn(5, 80)
                val all = try { api.print("/log", null, emptyList()) } catch (e: Exception) { o.put("error", e.message); emptyList() }
                val sel = (if (f.isEmpty()) all else all.filter { (it["topics"].orEmpty() + " " + it["message"].orEmpty()).lowercase().contains(f) }).takeLast(lim)
                o.put("total_lines", all.size); o.put("matched", sel.size)
                o.put("lines", clean(sel, lim, setOf("time", "topics", "message")))
            }
            "router_ping" -> {
                val addr = args.optString("address").trim()
                if (!Regex("^[A-Za-z0-9.:\\-]{1,80}$").matches(addr)) { o.put("error", "عنوان غير صالح"); return o }
                val n = args.optInt("count", 3).coerceIn(1, 5)
                try {
                    val rows = api.exec("/ping", mapOf("address" to addr, "count" to n.toString(), "interval" to "300ms")).rows
                    o.put("replies", clean(rows, 5, setOf("seq", "host", "time", "ttl", "status", "sent", "received", "packet-loss", "avg-rtt", "min-rtt", "max-rtt")))
                } catch (e: Exception) { o.put("error", (e.message ?: "فشل").take(120)) }
            }
            else -> o.put("error", "أداة غير معروفة")
        }
        return o
    }
}
