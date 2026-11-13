.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;
.super Ljava/lang/Object;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->LockCard-fWhpE4E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,339:1\n86#2,3:340\n89#2:371\n93#2:377\n79#3,6:343\n86#3,4:358\n90#3,2:368\n94#3:376\n368#4,9:349\n377#4:370\n378#4,2:374\n4034#5,6:362\n149#6:372\n149#6:373\n*S KotlinDebug\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1\n*L\n158#1:340,3\n158#1:371\n158#1:377\n158#1:343,6\n158#1:358,4\n158#1:368,2\n158#1:376\n158#1:349,9\n158#1:370\n158#1:374,2\n158#1:362,6\n159#1:372\n163#1:373\n*E\n"
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
.field final synthetic $button:Ljava/lang/String;

.field final synthetic $color:J

.field final synthetic $line1:Ljava/lang/String;

.field final synthetic $line2:Ljava/lang/String;

.field final synthetic $onButton:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $t:Landroidx/compose/material3/Typography;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroidx/compose/material3/Typography;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/material3/Typography;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$color:J

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$t:Landroidx/compose/material3/Typography;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$line1:Ljava/lang/String;

    iput-object p6, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$line2:Ljava/lang/String;

    iput-object p7, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$button:Ljava/lang/String;

    iput-object p8, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$onButton:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 157
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v1, p3

    const-string v2, "$this$AppCard"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1f

    .line 158
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1f

    .line 164
    :cond_1a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1dd

    .line 158
    :cond_1f
    :goto_1f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v3, "com.zarinet.netcontrol.ui.screens.LockCard.<anonymous> (SubscriptionScreen.kt:157)"

    const v4, -0x7d43c6ad

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v15, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v15, v13, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    sget-object v4, Lcom/zarinet/netcontrol/ui/theme/D;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/D;

    invoke-virtual {v4}, Lcom/zarinet/netcontrol/ui/theme/D;->getSm-D9Ej5fM()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    iget-wide v4, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$color:J

    iget-object v10, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$t:Landroidx/compose/material3/Typography;

    iget-object v11, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$title:Ljava/lang/String;

    iget-object v9, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$line1:Ljava/lang/String;

    iget-object v8, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$line2:Ljava/lang/String;

    iget-object v7, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$button:Ljava/lang/String;

    iget-object v6, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$LockCard$1;->$onButton:Lkotlin/jvm/functions/Function0;

    const v12, -0x1cd0f17e

    const-string v13, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    .line 340
    invoke-static {v14, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 341
    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    const/16 v12, 0x30

    invoke-static {v3, v2, v14, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v3, -0x4ee9b9da

    .line 342
    const-string v12, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 343
    invoke-static {v14, v3, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 344
    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 345
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 346
    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 348
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    const v15, -0x2942ffcf

    .line 347
    const-string v0, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 349
    invoke-static {v14, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 350
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_97

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 351
    :cond_97
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 352
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 353
    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a7

    .line 355
    :cond_a4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 357
    :goto_a7
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 358
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v0, v2, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 359
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 363
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-nez v12, :cond_d7

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e5

    .line 364
    :cond_d7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 365
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    :cond_e5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x16ef5699

    .line 370
    const-string v1, "C88@4444L9:Column.kt#2w3rfo"

    .line 371
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .line 159
    sget-object v0, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {v0}, Landroidx/compose/material/icons/filled/LockKt;->getLock(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    const/16 v0, 0x38

    int-to-float v0, v0

    .line 372
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    const/16 v2, 0x1e

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    const/16 v13, 0x6d80

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-wide v2, v4

    move v4, v0

    move v5, v12

    move-object v0, v6

    move/from16 v6, v17

    move-object/from16 v26, v7

    move-object/from16 v7, p2

    move-object/from16 v27, v8

    move v8, v13

    move-object/from16 v28, v9

    move v9, v15

    .line 159
    invoke-static/range {v1 .. v9}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->IconBadge-3Q90X8A(Landroidx/compose/ui/graphics/vector/ImageVector;JFFZLandroidx/compose/runtime/Composer;II)V

    .line 160
    invoke-virtual {v10}, Landroidx/compose/material3/Typography;->getTitleLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v1, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/theme/C;->getText-0d7_KjU()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0xfffa

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v29, v10

    move-object v1, v11

    move-wide v10, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 161
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material3/Typography;->getBodyLarge()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v1, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v13

    const v25, 0xfdfa

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, v28

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 162
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    sget-object v1, Lcom/zarinet/netcontrol/ui/theme/C;->INSTANCE:Lcom/zarinet/netcontrol/ui/theme/C;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/theme/C;->getDim-0d7_KjU()J

    move-result-wide v3

    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v13

    move-object/from16 v1, v27

    invoke-static/range {v1 .. v25}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v1, -0x962ea42

    move-object/from16 v11, p2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-eqz v26, :cond_1c2

    .line 163
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0x2e

    int-to-float v2, v2

    .line 373
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 163
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v9, 0x180

    const/16 v10, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, v26

    move-object v2, v0

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v10}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->AppButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/zarinet/netcontrol/ui/components/BtnKind;Landroidx/compose/ui/graphics/vector/ImageVector;ZZLandroidx/compose/runtime/Composer;II)V

    :cond_1c2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 371
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 374
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 349
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 343
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 340
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 377
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1dd

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1dd
    :goto_1dd
    return-void
.end method
