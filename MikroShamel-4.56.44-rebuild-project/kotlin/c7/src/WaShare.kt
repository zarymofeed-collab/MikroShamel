package com.zarinet.netcontrol.ui.screens

import android.content.Context
import android.content.Intent
import android.os.Parcelable

object WaShare {
    private val PKGS = listOf("com.whatsapp" to "واتساب", "com.whatsapp.w4b" to "واتساب الأعمال")

    @JvmStatic
    fun share(ctx: Context, text: String) {
        val installed = PKGS.filter { runCatching { ctx.packageManager.getPackageInfo(it.first, 0) }.isSuccess }
        fun mk(p: String?) = Intent(Intent.ACTION_SEND).setType("text/plain").putExtra(Intent.EXTRA_TEXT, text).also { if (p != null) it.setPackage(p) }
        val i = when (installed.size) {
            0 -> Intent.createChooser(mk(null), "مشاركة الكرت")
            1 -> mk(installed[0].first)
            else -> Intent.createChooser(mk(installed[0].first), "اختر: واتساب أو واتساب الأعمال")
                .putExtra(Intent.EXTRA_INITIAL_INTENTS, installed.drop(1).map { mk(it.first) as Parcelable }.toTypedArray())
        }
        runCatching { ctx.startActivity(i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) }
    }
}
