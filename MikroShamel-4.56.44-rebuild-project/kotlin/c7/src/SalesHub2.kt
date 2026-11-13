package com.zarinet.netcontrol.ui.screens

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccountBalanceWallet
import androidx.compose.material.icons.filled.CellTower
import androidx.compose.material.icons.filled.Storefront
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.zarinet.netcontrol.ui.components.*
import com.zarinet.netcontrol.ui.theme.C

@Composable
private fun HubTile(title: String, sub: String, icon: ImageVector, color: Color, modifier: Modifier, onClick: () -> Unit) {
    AppCard(modifier, onClick = onClick) {
        Column(Modifier.fillMaxWidth().padding(vertical = 10.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            IconBadge(icon, color, 56.dp, 30.dp, circle = true)
            Spacer(Modifier.height(10.dp))
            Text(title, style = MaterialTheme.typography.titleMedium, color = C.Text, textAlign = TextAlign.Center)
            Text(sub, style = MaterialTheme.typography.bodySmall, color = C.Dim, textAlign = TextAlign.Center)
        }
    }
}

/** صفحة المبيعات: حسب نقطة البيع • حسب أجهزة البث • حساب نقاط البيع (السداد). */
@Composable
fun SalesHub2(onBack: () -> Unit, onOpen: (String) -> Unit) {
    Column(Modifier.fillMaxSize()) {
        TopBar("المبيعات", "اختر نوع التقرير", onBack)
        Column(Modifier.padding(horizontal = 16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                HubTile("حسب نقطة البيع", "الكمية · المباع · المتبقي", Icons.Filled.Storefront, Color(0xFFB7791F), Modifier.weight(1f)) { PosAcc.accountsMode = false; onOpen("sales_pos") }
                HubTile("حسب أجهزة البث", "الكروت حسب أول دخول", Icons.Filled.CellTower, Color(0xFF3B82F6), Modifier.weight(1f)) { onOpen("device_sales") }
            }
            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                HubTile("حساب نقاط البيع", "المسحوب · المسدد · المتبقي · السداد", Icons.Filled.AccountBalanceWallet, Color(0xFF16A34A), Modifier.weight(1f)) {
                    PosAcc.accountsMode = true; onOpen("sales_pos")
                }
                Spacer(Modifier.weight(1f))
            }
        }
    }
}
