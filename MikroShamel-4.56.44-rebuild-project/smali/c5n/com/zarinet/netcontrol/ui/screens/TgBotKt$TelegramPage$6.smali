.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;
.super Ljava/lang/Object;
.source "TgBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,329:1\n1225#2,6:330\n1225#2,6:336\n1225#2,6:342\n149#3:348\n81#4:349\n107#4,2:350\n81#4:352\n107#4,2:353\n81#4:355\n107#4,2:356\n*S KotlinDebug\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6\n*L\n290#1:330,6\n291#1:336,6\n292#1:342,6\n293#1:348\n290#1:349\n290#1:350,2\n291#1:352\n291#1:353,2\n292#1:355\n292#1:356,2\n*E\n"
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
.field final synthetic $adding$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $dev:Lcom/zarinet/netcontrol/data/Device;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $tick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/data/Device;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/data/Device;",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$dev:Lcom/zarinet/netcontrol/data/Device;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$adding$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .registers 1

    .line 289
    invoke-static {p0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .registers 2

    .line 289
    invoke-static {p0, p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .registers 1

    .line 289
    invoke-static {p0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invoke$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .registers 2

    .line 289
    invoke-static {p0, p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$invoke$lambda$7(Landroidx/compose/runtime/MutableState;)Z
    .registers 1

    .line 289
    invoke-static {p0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$7(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    .registers 2

    .line 289
    invoke-static {p0, p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 290
    check-cast p0, Landroidx/compose/runtime/State;

    .line 349
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final invoke$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 291
    check-cast p0, Landroidx/compose/runtime/State;

    .line 352
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final invoke$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 353
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invoke$lambda$7(Landroidx/compose/runtime/MutableState;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 292
    check-cast p0, Landroidx/compose/runtime/State;

    .line 355
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 292
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 356
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 289
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 290
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_17

    .line 326
    :cond_12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_de

    .line 290
    :cond_17
    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, -0x1

    const-string v4, "com.zarinet.netcontrol.ui.screens.TelegramPage.<anonymous> (TgBot.kt:289)"

    const v5, -0x678c9124

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_26
    const v1, -0x5dbf1e03

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 330
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 331
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    const-string v4, ""

    const/4 v5, 0x0

    if-ne v1, v2, :cond_42

    .line 290
    invoke-static {v4, v5, v3, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 333
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 290
    :cond_42
    move-object v14, v1

    check-cast v14, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, -0x5dbf17c3

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 336
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 337
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_61

    .line 291
    invoke-static {v4, v5, v3, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 339
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    :cond_61
    move-object v15, v1

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, -0x5dbf1100

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 342
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 343
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_85

    const/4 v1, 0x0

    .line 292
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5, v3, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 345
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 292
    :cond_85
    move-object/from16 v18, v1

    check-cast v18, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v1, 0x16

    int-to-float v1, v1

    .line 348
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 293
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v3

    new-instance v1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1;

    iget-object v13, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$dev:Lcom/zarinet/netcontrol/data/Device;

    iget-object v5, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$ctx:Landroid/content/Context;

    iget-object v6, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$adding$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    move-object v12, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v12 .. v20}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1;-><init>(Lcom/zarinet/netcontrol/data/Device;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const/16 v5, 0x36

    const v6, -0x30ca7f49

    const/4 v7, 0x1

    invoke-static {v6, v7, v1, v11, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const v12, 0xc00180

    const/16 v13, 0x79

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_de
    :goto_de
    return-void
.end method
