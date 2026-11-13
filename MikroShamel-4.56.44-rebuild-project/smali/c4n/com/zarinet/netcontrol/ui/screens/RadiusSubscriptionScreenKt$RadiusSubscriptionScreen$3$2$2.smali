.class final Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;
.super Ljava/lang/Object;
.source "RadiusSubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadiusSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadiusSubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,175:1\n99#2:176\n95#2,7:177\n102#2:212\n106#2:216\n79#3,6:184\n86#3,4:199\n90#3,2:209\n94#3:215\n368#4,9:190\n377#4:211\n378#4,2:213\n4034#5,6:203\n149#6:217\n*S KotlinDebug\n*F\n+ 1 RadiusSubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2\n*L\n92#1:176\n92#1:177,7\n92#1:212\n92#1:216\n92#1:184,6\n92#1:199,4\n92#1:209,2\n92#1:215\n92#1:190,9\n92#1:211\n92#1:213,2\n92#1:203,6\n96#1:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

.field final synthetic $m:Lcom/zarinet/netcontrol/account/RsubMine;

.field final synthetic $t:Landroidx/compose/material3/Typography;


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/account/RsubCurrent;Landroidx/compose/material3/Typography;Lcom/zarinet/netcontrol/account/RsubMine;)V
    .registers 4

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$m:Lcom/zarinet/netcontrol/account/RsubMine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 86
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v1, p3

    const-string v2, "$this$AppCard"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1f

    .line 87
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1f

    .line 104
    :cond_1a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_34b

    .line 87
    :cond_1f
    :goto_1f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v3, "com.zarinet.netcontrol.ui.screens.RadiusSubscriptionScreen.<anonymous>.<anonymous>.<anonymous> (RadiusSubscriptionScreen.kt:86)"

    const v4, -0x96cf7c6

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    iget-object v1, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    if-nez v1, :cond_ac

    const v1, -0xc8f6e85

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 88
    iget-object v1, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v1}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v1, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/theme/C;->getText-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const-string v1, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0627\u0634\u062a\u0631\u0627\u0643 \u0645\u0633\u062c\u0651\u0644"

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x6

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 89
    iget-object v1, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$m:Lcom/zarinet/netcontrol/account/RsubMine;

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/account/RsubMine;->getManaged()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_77

    const-string v1, "\u0627\u062e\u062a\u0631 \u0628\u0627\u0642\u0629 \u0648\u0623\u0631\u0633\u0644 \u0627\u0644\u0637\u0644\u0628."

    goto :goto_79

    :cond_77
    const-string v1, "\u0634\u0628\u0643\u062a\u0643 \u062a\u0639\u0645\u0644 \u062d\u0627\u0644\u064a\u0627\u064b \u062f\u0648\u0646 \u062d\u062f\u0648\u062f \u0628\u0627\u0642\u0629. \u0627\u062e\u062a\u0631 \u0628\u0627\u0642\u0629 \u0648\u0623\u0631\u0633\u0644 \u0627\u0644\u0637\u0644\u0628 \u0644\u064a\u0631\u0627\u062c\u0639\u0647 \u0627\u0644\u0645\u062f\u064a\u0631."

    .line 90
    :goto_79
    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    .line 89
    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 87
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_342

    :cond_ac
    const v1, -0xc89acb0

    move-object/from16 v14, p2

    .line 91
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 92
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    iget-object v15, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    const v3, 0x2952b718

    const-string v4, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    .line 176
    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 177
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 178
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v4

    const/16 v5, 0x30

    .line 182
    invoke-static {v4, v1, v14, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const v4, -0x4ee9b9da

    .line 183
    const-string v5, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 184
    invoke-static {v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v13, 0x0

    .line 185
    invoke-static {v14, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 186
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 187
    invoke-static {v14, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 189
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    const v7, -0x2942ffcf

    .line 188
    const-string v8, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 190
    invoke-static {v14, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 191
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-nez v7, :cond_104

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 192
    :cond_104
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 193
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_111

    .line 194
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_114

    .line 196
    :cond_111
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 198
    :goto_114
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 199
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 204
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-nez v5, :cond_144

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_152

    .line 205
    :cond_144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    :cond_152
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x184f2606

    .line 211
    const-string v3, "C101@5126L9:Row.kt#2w3rfo"

    .line 212
    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object v5, v1

    check-cast v5, Landroidx/compose/foundation/layout/RowScope;

    .line 93
    invoke-virtual {v15}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getPlanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getText-0d7_KjU()J

    move-result-wide v3

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/Modifier;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v24, 0x0

    const v25, 0xfff8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-object/from16 v27, v15

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 94
    invoke-virtual/range {v27 .. v27}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getStatusLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v27 .. v27}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getStatus()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->statusColor(Ljava/lang/String;)J
    invoke-static {v2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$statusColor(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v14, p2

    const/4 v15, 0x0

    invoke-static {v1, v2, v3, v14, v15}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->Pill-RPmYEkk(Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V

    .line 212
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 213
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 190
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 176
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 96
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x4

    int-to-float v2, v2

    .line 217
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 96
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v14, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u064a\u0646\u062a\u0647\u064a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getEndsAt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f6

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f8

    :cond_1f6
    const-string v2, "\u2014"

    :cond_1f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2022 \u0645\u062a\u0628\u0642\u064d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getDaysLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u064a\u0648\u0645"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move/from16 v26, v15

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 98
    sget-object v1, Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/PlanExtras;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->getLiveMax()Ljava/lang/Integer;

    move-result-object v1

    .line 99
    const-string v14, " \u0645\u0646 "

    if-eqz v1, :cond_2ae

    const v2, -0xc80b2b1

    move-object/from16 v15, p2

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud83d\udc65 \u0627\u0644\u0645\u062a\u0635\u0644\u0648\u0646 \u0627\u0644\u0622\u0646: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/PlanExtras;

    invoke-virtual {v3}, Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->getLiveUsers()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_26a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_26c

    :cond_26a
    move/from16 v13, v26

    :goto_26c
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getTitleSmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getTeal-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_33f

    :cond_2ae
    const v1, -0xc7e7819

    move-object/from16 v15, p2

    .line 100
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0627\u0644\u0643\u0631\u0648\u062a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$m:Lcom/zarinet/netcontrol/account/RsubMine;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubMine;->getUsedCards()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getMaxCards()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v28, v14

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0627\u0644\u0631\u0627\u0648\u062a\u0631\u0627\u062a: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$m:Lcom/zarinet/netcontrol/account/RsubMine;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubMine;->getUsedNas()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$cur:Lcom/zarinet/netcontrol/account/RsubCurrent;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubCurrent;->getMaxNas()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$3$2$2;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodySmall()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    const/4 v2, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 100
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 91
    :goto_33f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_342
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_34b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34b
    :goto_34b
    return-void
.end method
