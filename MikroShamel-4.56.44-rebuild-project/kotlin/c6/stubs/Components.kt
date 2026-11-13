@file:JvmName("ComponentsKt")
package com.zarinet.netcontrol.ui.components
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.zarinet.netcontrol.ui.theme.C
import com.zarinet.netcontrol.ui.theme.D
@Composable fun AppCard(modifier: Modifier = Modifier, onClick: (() -> Unit)? = null, onLongClick: (() -> Unit)? = null, border: Color = C.Border, background: Color = C.Card, padding: PaddingValues = PaddingValues(D.lg), content: @Composable ColumnScope.() -> Unit) { TODO() }
@Composable fun AppButton(text: String, onClick: () -> Unit, modifier: Modifier = Modifier, kind: BtnKind = BtnKind.Primary, icon: ImageVector? = null, enabled: Boolean = true, loading: Boolean = false) { TODO() }
@Composable fun IconBadge(icon: ImageVector, color: Color, size: Dp = 36.dp, iconSize: Dp = 20.dp, circle: Boolean = false) { TODO() }
@Composable fun Pill(text: String, color: Color) { TODO() }
@Composable fun SectionTitle(text: String, modifier: Modifier = Modifier, trailing: @Composable RowScope.() -> Unit = {}) { TODO() }
@Composable fun StateView(loading: Boolean, error: String?, empty: Boolean, emptyText: String = "لا توجد بيانات", onRetry: (() -> Unit)? = null) { TODO() }
@Composable fun TopBar(title: String, subtitle: String? = null, onBack: (() -> Unit)? = null, navIcon: ImageVector = Icons.AutoMirrored.Filled.ArrowBack, actions: @Composable RowScope.() -> Unit = {}) { TODO() }
@Composable fun BarAction(icon: ImageVector, desc: String, tint: Color = C.Text, onClick: () -> Unit) { TODO() }
@Composable fun KvGrid(items: List<Pair<String, String>>) { TODO() }
@Composable fun Field(value: String, onChange: (String) -> Unit, label: String, modifier: Modifier = Modifier.fillMaxWidth(), number: Boolean = false, password: Boolean = false, singleLine: Boolean = true, placeholder: String? = null, ltr: Boolean = false) { TODO() }
