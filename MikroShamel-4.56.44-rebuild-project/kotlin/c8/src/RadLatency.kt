package com.zarinet.netcontrol.ui.screens

import androidx.compose.ui.graphics.Color
import com.zarinet.netcontrol.ui.theme.C

/** نص ولون مؤشر الاستجابة في بطاقتي «تفعيل الراديوس الخارجي» و«الحماية بالخادم الاحتياطي».
 *  القيمة المعروضة = زمن الاستجابة كما يقيسه التطبيق (ping من الراوتر إلى خادم الراديوس) دون تغيير في طريقة القياس.
 *  الشكل: «متصل • الاستجابة 62 ms» في سطر واحد، والتصنيف يظهر باللون فقط. */
object RadLatency {
    @JvmStatic
    fun label(ping: Int?, @Suppress("UNUSED_PARAMETER") node: String): kotlin.Pair<String, Color> {
        if (ping == null) return "لا استجابة من سيرفر الراديوس" to C.Red
        // أقل من 50ms ممتاز جداً · 50–100 ممتاز · 101–200 جيد · 201–500 مقبول · أكثر من 500 بطيء
        val col = when {
            ping < 50 -> Color(0xFF0D9488)   // ممتاز جداً — فيروزي
            ping <= 100 -> C.Green           // ممتاز — أخضر
            ping <= 200 -> C.Blue            // جيد — أزرق
            ping <= 500 -> C.Gold            // مقبول — ذهبي
            else -> C.Red                    // بطيء — أحمر
        }
        return "متصل • الاستجابة $ping ms" to col
    }
}
