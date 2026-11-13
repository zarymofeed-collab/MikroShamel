.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;
.super Ljava/lang/Object;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->StatusCard(Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,339:1\n99#2:340\n95#2,7:341\n102#2:376\n106#2:380\n79#3,6:348\n86#3,4:363\n90#3,2:373\n94#3:379\n368#4,9:354\n377#4:375\n378#4,2:377\n4034#5,6:367\n*S KotlinDebug\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1\n*L\n136#1:340\n136#1:341,7\n136#1:376\n136#1:380\n136#1:348,6\n136#1:363,4\n136#1:373,2\n136#1:379\n136#1:354,9\n136#1:375\n136#1:377,2\n136#1:367,6\n*E\n"
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
.field final synthetic $color:J

.field final synthetic $st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

.field final synthetic $t:Landroidx/compose/material3/Typography;

.field final synthetic $trial:Z


# direct methods
.method constructor <init>(ZLcom/zarinet/netcontrol/subscription/SubscriptionStatus;Landroidx/compose/material3/Typography;J)V
    .registers 6

    iput-boolean p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$t:Landroidx/compose/material3/Typography;

    iput-wide p4, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$color:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 135
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$AppCard"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x11

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1f

    .line 136
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1f

    .line 150
    :cond_1a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_281

    .line 136
    :cond_1f
    :goto_1f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, -0x1

    const-string v4, "com.zarinet.netcontrol.ui.screens.StatusCard.<anonymous> (SubscriptionScreen.kt:135)"

    const v5, 0x3782327

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    iget-boolean v3, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    iget-object v4, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$t:Landroidx/compose/material3/Typography;

    iget-object v14, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    const v5, 0x2952b718

    const-string v6, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo"

    .line 340
    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 341
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 342
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v6

    const/16 v7, 0x30

    .line 346
    invoke-static {v6, v2, v1, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v6, -0x4ee9b9da

    .line 347
    const-string v7, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 348
    invoke-static {v1, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v15, 0x0

    .line 349
    invoke-static {v1, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v6

    .line 350
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 351
    invoke-static {v1, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 353
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v8

    const v9, -0x2942ffcf

    .line 352
    const-string v10, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 354
    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 355
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_80

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 356
    :cond_80
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 357
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 358
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_90

    .line 360
    :cond_8d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 362
    :goto_90
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .line 363
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v8, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 364
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v8, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 366
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 368
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-nez v7, :cond_c0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ce

    .line 369
    :cond_c0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 370
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 373
    :cond_ce
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x184f2606

    .line 375
    const-string v5, "C101@5126L9:Row.kt#2w3rfo"

    .line 376
    invoke-static {v1, v2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    move-object v5, v2

    check-cast v5, Landroidx/compose/foundation/layout/RowScope;

    if-eqz v3, :cond_e9

    .line 137
    const-string v2, "\ud83d\udfe2 \u0627\u0644\u062a\u062c\u0631\u0628\u0629 \u0627\u0644\u0645\u062c\u0627\u0646\u064a\u0629"

    goto :goto_eb

    :cond_e9
    const-string v2, "\u2705 \u0627\u0634\u062a\u0631\u0627\u0643 \u0641\u0639\u0627\u0644"

    :goto_eb
    move-object/from16 v22, v2

    invoke-virtual {v4}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

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

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v27, v14

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, v22

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v1, -0x25c4b507

    move-object/from16 v14, p2

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 138
    invoke-virtual/range {v27 .. v27}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getOffline()Z

    move-result v1

    if-eqz v1, :cond_146

    sget-object v1, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/theme/C;->getGold-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x6

    const-string v4, "\u0628\u062f\u0648\u0646 \u0627\u062a\u0635\u0627\u0644"

    invoke-static {v4, v1, v2, v14, v3}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->Pill-RPmYEkk(Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V

    :cond_146
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 376
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 377
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 354
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 348
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 340
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 140
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/D;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/D;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/D;->getSm-D9Ej5fM()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v1, v14, v15}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 141
    iget-boolean v1, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    const/16 v26, 0x1

    if-nez v1, :cond_17d

    iget-object v1, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getDaysLeft()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_17d

    move/from16 v27, v26

    goto :goto_17f

    :cond_17d
    move/from16 v27, v15

    :goto_17f
    if-eqz v27, :cond_184

    .line 142
    const-string v1, "\u267e\ufe0f \u0627\u0634\u062a\u0631\u0627\u0643 \u062f\u0627\u0626\u0645 (\u062d\u0633\u0627\u0628 \u0627\u0644\u0645\u062f\u064a\u0631)"

    goto :goto_1a8

    :cond_184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    if-eqz v2, :cond_190

    const-string v2, "\u0645\u062a\u0628\u0642\u064a \u0639\u0644\u0649 \u0627\u0644\u062a\u062c\u0631\u0628\u0629: "

    goto :goto_192

    :cond_190
    const-string v2, "\u0645\u062a\u0628\u0642\u064a \u0639\u0644\u0649 \u0627\u0644\u0627\u0634\u062a\u0631\u0627\u0643: "

    :goto_192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zarinet/netcontrol/subscription/Days;->INSTANCE:Lcom/zarinet/netcontrol/subscription/Days;

    iget-object v3, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v3}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getDaysLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zarinet/netcontrol/subscription/Days;->ar(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_1a8
    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$t:Landroidx/compose/material3/Typography;

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getTitleMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    iget-wide v3, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$color:J

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

    .line 142
    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 144
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    sget-object v2, Lcom/zarinet/netcontrol/ui/theme/D;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/D;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/ui/theme/D;->getSm-D9Ej5fM()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x4

    .line 146
    new-array v1, v1, [Lkotlin/Pair;

    iget-boolean v4, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    if-eqz v4, :cond_1f2

    const-string v4, "\u062a\u062c\u0631\u0628\u0629 \u0645\u062c\u0627\u0646\u064a\u0629"

    goto :goto_1f4

    :cond_1f2
    const-string v4, "\u0645\u0634\u062a\u0631\u0643"

    :goto_1f4
    const-string v5, "\u0627\u0644\u062d\u0627\u0644\u0629"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v3

    .line 147
    iget-object v4, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v4}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getSub()Lcom/zarinet/netcontrol/subscription/Subscription;

    move-result-object v4

    if-eqz v4, :cond_20a

    invoke-virtual {v4}, Lcom/zarinet/netcontrol/subscription/Subscription;->getPlanName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_218

    :cond_20a
    iget-boolean v4, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    if-eqz v4, :cond_211

    const-string v4, "\u062a\u062c\u0631\u0628\u0629 7 \u0623\u064a\u0627\u0645"

    goto :goto_218

    :cond_211
    if-eqz v27, :cond_216

    const-string v4, "\u062f\u0627\u0626\u0645"

    goto :goto_218

    :cond_216
    const-string v4, "\u2014"

    :cond_218
    :goto_218
    const-string v5, "\u0627\u0644\u0628\u0627\u0642\u0629"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v26

    const/4 v4, 0x0

    if-eqz v27, :cond_226

    .line 148
    const-string v5, "\u0628\u0644\u0627 \u0627\u0646\u062a\u0647\u0627\u0621"

    goto :goto_238

    :cond_226
    iget-object v5, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getSub()Lcom/zarinet/netcontrol/subscription/Subscription;

    move-result-object v5

    if-eqz v5, :cond_233

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/Subscription;->getEndsAt()Ljava/lang/Long;

    move-result-object v5

    goto :goto_234

    :cond_233
    move-object v5, v4

    :goto_234
    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fmtDate(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static {v5}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$fmtDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    :goto_238
    const-string v6, "\u062a\u0627\u0631\u064a\u062e \u0627\u0644\u0627\u0646\u062a\u0647\u0627\u0621"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 149
    iget-boolean v5, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$trial:Z

    if-nez v5, :cond_258

    iget-object v5, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getSub()Lcom/zarinet/netcontrol/subscription/Subscription;

    move-result-object v5

    if-eqz v5, :cond_251

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/Subscription;->getSubscriptionStartedAt()Ljava/lang/Long;

    move-result-object v4

    :cond_251
    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fmtDate(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static {v4}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$fmtDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0628\u062f\u0627\u064a\u0629 \u0627\u0644\u0627\u0634\u062a\u0631\u0627\u0643"

    goto :goto_26a

    :cond_258
    iget-object v5, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$StatusCard$1;->$st:Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;->getSub()Lcom/zarinet/netcontrol/subscription/Subscription;

    move-result-object v5

    if-eqz v5, :cond_264

    invoke-virtual {v5}, Lcom/zarinet/netcontrol/subscription/Subscription;->getTrialEndsAt()Ljava/lang/Long;

    move-result-object v4

    :cond_264
    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fmtDate(Ljava/lang/Long;)Ljava/lang/String;
    invoke-static {v4}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$fmtDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0646\u0647\u0627\u064a\u0629 \u0627\u0644\u062a\u062c\u0631\u0628\u0629"

    :goto_26a
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    .line 145
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->KvGrid(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_281

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_281
    :goto_281
    return-void
.end method
