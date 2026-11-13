package com.zarinet.netcontrol.ui.screens

import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Typeface
import android.graphics.pdf.PdfDocument
import androidx.core.content.FileProvider
import com.zarinet.netcontrol.data.Session
import com.zarinet.netcontrol.util.PosRep
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/** كشف حساب نقطة البيع PDF: المسحوب، المسدد، المتبقي + الباقات + الدفعات + سجل السداد + كشف الحساب. */
object PosStatementPdf {
    private const val W = 595f; private const val H = 842f; private const val M = 28f

    private fun font(ctx: Context, name: String): Typeface {
        val id = ctx.resources.getIdentifier(name, "font", ctx.packageName)
        return try { if (id != 0) ctx.resources.getFont(id) else Typeface.DEFAULT } catch (_: Exception) { Typeface.DEFAULT }
    }

    @JvmStatic
    fun share(ctx: Context, r: PosRep, pays: List<PosPay>, source: String) {
        try {
            val f = build(ctx, r, pays, source)
            val uri = FileProvider.getUriForFile(ctx, ctx.packageName + ".files", f)
            val i = Intent(Intent.ACTION_VIEW).setDataAndType(uri, "application/pdf").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            val s = Intent(Intent.ACTION_SEND).setType("application/pdf").putExtra(Intent.EXTRA_STREAM, uri).addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            ctx.startActivity(Intent.createChooser(s, "كشف حساب ${r.pos}").putExtra(Intent.EXTRA_INITIAL_INTENTS, arrayOf(i)).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
        } catch (e: Exception) {
            android.widget.Toast.makeText(ctx, e.message ?: "تعذر إنشاء الملف", android.widget.Toast.LENGTH_LONG).show()
        }
    }

    fun build(ctx: Context, r: PosRep, pays: List<PosPay>, source: String): File {
        val reg = font(ctx, "cairo_regular"); val bold = font(ctx, "cairo_bold")
        val dark = Color.rgb(20, 30, 50); val gray = Color.rgb(100, 116, 139); val red = Color.rgb(220, 38, 38)
        val green = Color.rgb(22, 163, 74); val head = Color.rgb(31, 63, 143); val teal = Color.rgb(20, 150, 115)
        val doc = PdfDocument()
        var pageNo = 0
        var page: PdfDocument.Page? = null
        var y = 0f
        val p = Paint(Paint.ANTI_ALIAS_FLAG)
        val fill = Paint(Paint.ANTI_ALIAS_FLAG)
        fun text(s: String, x: Float, yy: Float, size: Float, color: Int = dark, b: Boolean = false, align: Paint.Align = Paint.Align.RIGHT) {
            p.typeface = if (b) bold else reg; p.textSize = size; p.color = color; p.textAlign = align
            page!!.canvas.drawText(s, x, yy, p)
        }
        fun newPage() {
            page?.let { text("ميكروتك الشامل — صفحة $pageNo", W / 2, H - 16f, 8f, gray, align = Paint.Align.CENTER); doc.finishPage(it) }
            pageNo++
            page = doc.startPage(PdfDocument.PageInfo.Builder(W.toInt(), H.toInt(), pageNo).create())
            y = M
        }
        fun need(h: Float) { if (y + h > H - 40f) newPage() }
        fun fmt(n: Long) = String.format(Locale.US, "%,d", n)

        var paid = 0L; for (x in pays) paid += x.amount
        var issuedV = 0L; for (b in r.batches) issuedV += b.issued.toLong() * b.price
        val left = issuedV - paid

        newPage()
        // ── الرأس ──
        fill.color = Color.rgb(20, 33, 54); page!!.canvas.drawRoundRect(RectF(M, y, W - M, y + 62f), 12f, 12f, fill)
        text("كشف حساب نقطة البيع: ${r.pos}", W - M - 14f, y + 26f, 16f, Color.WHITE, true)
        text("$source • ${Session.device?.name ?: ""} • كل الفترات", W - M - 14f, y + 48f, 9.5f, Color.rgb(190, 205, 222))
        text(SimpleDateFormat("yyyy/MM/dd HH:mm", Locale.US).format(Date()), M + 14f, y + 26f, 9f, Color.rgb(190, 205, 222), align = Paint.Align.LEFT)
        y += 76f
        // ── البطاقات ──
        val boxes = listOf(Triple("المسحوب", "${r.issued} كرت", dark), Triple("مباع / مستخدم", "${r.sold}", green),
            Triple("قيمة المسحوب", "${fmt(issuedV)} ﷼", head), Triple("المسدد", "${fmt(paid)} ﷼", green))
        val bw = (W - 2 * M - 3 * 8f) / 4
        for (i in boxes.indices) {
            val right = W - M - i * (bw + 8f)
            fill.color = Color.rgb(244, 247, 251); page!!.canvas.drawRoundRect(RectF(right - bw, y, right, y + 50f), 8f, 8f, fill)
            text(boxes[i].first, right - 8f, y + 17f, 9f, gray)
            text(boxes[i].second, right - 8f, y + 40f, 14f, boxes[i].third, true)
        }
        y += 60f
        fill.color = if (left > 0) Color.rgb(255, 245, 245) else Color.rgb(240, 253, 244)
        page!!.canvas.drawRoundRect(RectF(M, y, W - M, y + 44f), 10f, 10f, fill)
        text("الدين المتبقي (قيمة المسحوب − المسدد)", W - M - 12f, y + 27f, 11f, gray)
        text(if (left > 0) "${fmt(left)} ﷼" else if (left < 0) "رصيد له ${fmt(-left)} ﷼" else "مسدد بالكامل ✓", M + 12f, y + 29f, 17f, if (left > 0) red else green, true, Paint.Align.LEFT)
        y += 58f

        // ── جدول ──
        fun table(title: String, cols: List<String>, ws: List<Float>, rows: List<List<String>>, colors: List<Int?>, hc: Int) {
            need(60f)
            text(title, W - M, y + 12f, 12f, dark, true); y += 20f
            val tw = W - 2 * M; var sum = 0f; for (q in ws) sum += q
            fun row(cells: List<String>, bg: Int, fc: Int, b: Boolean, size: Float) {
                need(22f)
                fill.color = bg; page!!.canvas.drawRect(M, y, W - M, y + 20f, fill)
                var right = W - M
                for (i in cells.indices) {
                    val cw = tw * ws[i] / sum
                    text(cells[i], right - cw / 2, y + 14f, size, if (fc == Color.WHITE) fc else (colors.getOrNull(i) ?: fc), b, Paint.Align.CENTER)
                    right -= cw
                }
                y += 20f
            }
            row(cols, hc, Color.WHITE, true, 9.5f)
            for (n in rows.indices) { val cells = rows[n]; row(cells, if (n % 2 == 0) Color.WHITE else Color.rgb(244, 247, 251), dark, false, 9.5f) }
            y += 12f
        }
        // الباقات
        class Pk(var q: Int = 0, var s: Int = 0, var rm: Int = 0, var sv: Long = 0, var rv: Long = 0, var tv: Long = 0)
        val pk = LinkedHashMap<String, Pk>()
        for (b in r.batches) { val k = pk.getOrPut(b.profile) { Pk() }; k.q += b.issued; k.s += b.sold; k.rm += b.remaining; k.sv += b.revenue; k.rv += b.stockValue; k.tv += b.issued.toLong() * b.price }
        val prow = ArrayList<List<String>>(); var n = 0
        for (e in pk.entries) { val name = e.key; val k = e.value; n++; prow.add(listOf("$n", name, "${k.q}", "${k.s}", "${k.rm}", fmt(k.sv), fmt(k.rv), fmt(k.tv))) }
        prow.add(listOf("", "الإجمالي", "${r.issued}", "${r.sold}", "${r.remaining}", fmt(r.revenue), fmt(r.stockValue), fmt(issuedV)))
        table("تفصيل الباقات", listOf("#", "الباقة", "الكمية", "مباع", "متبقي", "قيمة المباع", "قيمة المتبقي", "الإجمالي"),
            listOf(0.5f, 1.6f, 0.9f, 0.8f, 0.8f, 1.2f, 1.2f, 1.1f), prow, listOf(null, null, null, green, Color.rgb(234, 122, 31), null, null, head), head)
        // الدفعات (السحوبات)
        val df = SimpleDateFormat("yyyy/MM/dd", Locale.US)
        val brow = ArrayList<List<String>>()
        for (b in r.batches) brow.add(listOf(b.tag, b.date?.let { df.format(Date(it)) } ?: "—", b.profile, fmt(b.price), "${b.sold}/${b.issued}", fmt(b.issued.toLong() * b.price)))
        table("الدفعات (${r.batches.size})", listOf("الدفعة", "التاريخ", "الباقة", "السعر", "مباع/مسحوب", "القيمة"),
            listOf(1.6f, 1.2f, 1.2f, 0.8f, 1f, 1f), brow, listOf(null, null, null, null, null, head), teal)
        // سجل السداد
        val prow2 = ArrayList<List<String>>()
        for (x in pays) prow2.add(listOf(x.at, fmt(x.amount), x.note.ifBlank { "—" }))
        if (prow2.isEmpty()) prow2.add(listOf("—", "لا توجد دفعات", "—"))
        prow2.add(listOf("الإجمالي", fmt(paid), ""))
        table("سجل السداد", listOf("التاريخ", "المبلغ", "ملاحظة"), listOf(1f, 1f, 2f), prow2, listOf(null, green, null), green)
        // كشف الحساب
        class Ln(val t: Long, val d: String, val v: Long)
        val ls = ArrayList<Ln>()
        for (b in r.batches) ls.add(Ln(b.date ?: 0L, "سحب ${b.profile} (${b.issued} كرت)", b.issued.toLong() * b.price))
        for (x in pays) ls.add(Ln(try { df.parse(x.at.replace('-', '/'))?.time ?: 0L } catch (_: Exception) { 0L }, "سداد" + (if (x.note.isNotBlank()) " — " + x.note else ""), -x.amount))
        java.util.Collections.sort(ls, Comparator { a, b -> a.t.compareTo(b.t) })
        var bal = 0L; val lrow = ArrayList<List<String>>()
        for (l in ls) { bal += l.v; lrow.add(listOf(if (l.t > 0) df.format(Date(l.t)) else "—", l.d, if (l.v >= 0) "+${fmt(l.v)}" else "−${fmt(-l.v)}", fmt(bal))) }
        table("كشف الحساب", listOf("التاريخ", "البيان", "المبلغ", "الرصيد"), listOf(1f, 2.4f, 1f, 1f), lrow, listOf(null, null, null, red), head)

        page?.let { text("ميكروتك الشامل — صفحة $pageNo", W / 2, H - 16f, 8f, gray, align = Paint.Align.CENTER); doc.finishPage(it) }
        val dir = File(ctx.cacheDir, "pdf").apply { mkdirs() }
        val f = File(dir, "حساب-" + r.pos.replace(Regex("[\\\\/:*?\"<>|]"), "_") + ".pdf")
        val os = java.io.FileOutputStream(f)
        try { doc.writeTo(os) } finally { os.close() }
        doc.close()
        return f
    }
}
