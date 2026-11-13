.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;
.super Ljava/lang/Object;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->SubscriptionScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,339:1\n1225#2,6:340\n*S KotlinDebug\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1\n*L\n77#1:340,6\n*E\n"
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
.field final synthetic $refreshing$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$kV3bmXHLS0blw8IRwVeNCgJM9k4(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->invoke$lambda$1$lambda$0(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->$refreshing$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .registers 2

    .line 77
    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->SubscriptionScreen$refresh(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    invoke-static {p0, p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$SubscriptionScreen$refresh(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 76
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .registers 12

    const-string v0, "$this$TopBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_16

    .line 77
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_16

    :cond_12
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_6b

    :cond_16
    :goto_16
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, -0x1

    const-string v0, "com.zarinet.netcontrol.ui.screens.SubscriptionScreen.<anonymous>.<anonymous> (SubscriptionScreen.kt:76)"

    const v1, 0xe1ab85

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_25
    sget-object p1, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    invoke-static {p1}, Landroidx/compose/material/icons/filled/RefreshKt;->getRefresh(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    const p1, 0x57746623

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1;->$refreshing$delegate:Landroidx/compose/runtime/MutableState;

    .line 340
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_49

    .line 341
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_51

    .line 77
    :cond_49
    new-instance v2, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3, v1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$3$1$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    .line 343
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    :cond_51
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v6, 0x30

    const/4 v7, 0x4

    const-string v1, "\u062a\u062d\u062f\u064a\u062b"

    const-wide/16 v2, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/zarinet/netcontrol/ui/components/ComponentsKt;->BarAction-cf5BqRc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6b
    :goto_6b
    return-void
.end method
