package com.zarinet.netcontrol.ui.screens

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowLeft
import androidx.compose.material.icons.filled.KeyboardArrowRight
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.platform.LocalLayoutDirection
import com.zarinet.netcontrol.util.CardDesign
import com.zarinet.netcontrol.util.El
import com.zarinet.netcontrol.util.ElemPos

private val Green = Color(0xFF00A884)

/** أسهم تحريك العنصر المحدد على البطاقة (يُستدعى بعد CardEditor بنفس المعاملات). */
@Composable
fun CardNudgePad(design: CardDesign, settings: VSettings, flag: Boolean, sel: El?,
                 onSelect: (El?) -> Unit, onChange: (CardDesign) -> Unit) {
    var fine by remember { mutableStateOf(false) }
    val step = if (fine) 0.002f else 0.01f
    fun move(dx: Float, dy: Float) {
        val e = sel ?: return
        val p = design.posOf(e)
        val np = ElemPos((p.x + dx).coerceIn(0f, 1f), (p.y + dy).coerceIn(0f, 1f), p.size)
        val m = HashMap(design.pos); m[e] = np
        onChange(design.copy(pos = m))
    }
        Card(Modifier.fillMaxWidth().padding(top = 8.dp), shape = RoundedCornerShape(16.dp),
            colors = CardDefaults.cardColors(containerColor = Color(0xFFF3F6FA))) {
            Row(Modifier.fillMaxWidth().padding(10.dp), verticalAlignment = Alignment.CenterVertically) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Arrow(Icons.Filled.KeyboardArrowUp, sel != null) { move(0f, -step) }
                    Row {
                        // الواجهة RTL: العنصر الأول يظهر يميناً
                        Arrow(Icons.Filled.KeyboardArrowRight, sel != null) { move(step, 0f) }
                        Spacer(Modifier.size(52.dp))
                        Arrow(Icons.Filled.KeyboardArrowLeft, sel != null) { move(-step, 0f) }
                    }
                    Arrow(Icons.Filled.KeyboardArrowDown, sel != null) { move(0f, step) }
                }
                Spacer(Modifier.width(12.dp))
                Column(Modifier.weight(1f), horizontalAlignment = Alignment.End) {
                    Text("تحريك النص بالأسهم", fontWeight = FontWeight.Bold, fontSize = 15.sp)
                    Text(if (sel == null) "اضغط على نص في البطاقة لتحديده" else "المحدد: " + sel.label,
                        fontSize = 13.sp, color = if (sel == null) Color.Gray else Green)
                    Spacer(Modifier.height(6.dp))
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(if (fine) "خطوة دقيقة" else "خطوة عادية", fontSize = 13.sp)
                        Spacer(Modifier.width(6.dp))
                        Switch(checked = fine, onCheckedChange = { fine = it },
                            colors = SwitchDefaults.colors(checkedTrackColor = Green))
                    }
                }
            }
        }
}

@Composable
private fun Arrow(icon: ImageVector, enabled: Boolean, onClick: () -> Unit) {
    FilledTonalIconButton(onClick = onClick, enabled = enabled, modifier = Modifier.size(52.dp),
        colors = IconButtonDefaults.filledTonalIconButtonColors(containerColor = Green, contentColor = Color.White)) {
        Icon(icon, null, Modifier.size(32.dp))
    }
}
