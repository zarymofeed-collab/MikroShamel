.class final Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RadiusSubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$load(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadiusSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadiusSubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.zarinet.netcontrol.ui.screens.RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1"
    f = "RadiusSubscriptionScreen.kt"
    i = {
        0x0
    }
    l = {
        0x3d,
        0x3e
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $error$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $loading$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mine$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubMine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $plans$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubMine;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2d

    if-eq v1, v4, :cond_21

    if-ne v1, v3, :cond_19

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_62

    :catchall_17
    move-exception p1

    goto :goto_6d

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    :try_start_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_85

    goto :goto_48

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 61
    :try_start_34
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v5, Lcom/zarinet/netcontrol/account/RadiusSubscription;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusSubscription;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->label:I

    invoke-virtual {v5, v6}, Lcom/zarinet/netcontrol/account/RadiusSubscription;->plans(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_48

    return-object v0

    :cond_48
    :goto_48
    check-cast p1, Ljava/util/List;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V
    invoke-static {v1, p1}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 62
    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4f} :catch_85

    :try_start_4f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/zarinet/netcontrol/account/RadiusSubscription;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusSubscription;

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->label:I

    invoke-virtual {v1, p0}, Lcom/zarinet/netcontrol/account/RadiusSubscription;->mine(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_69

    if-ne v1, v0, :cond_60

    return-object v0

    :cond_60
    move-object v0, p1

    move-object p1, v1

    :goto_62
    :try_start_62
    check-cast p1, Lcom/zarinet/netcontrol/account/RsubMine;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_17

    goto :goto_77

    :catchall_69
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_6d
    :try_start_6d
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_77
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    goto :goto_7f

    :cond_7e
    move-object v2, p1

    :goto_7f
    check-cast v2, Lcom/zarinet/netcontrol/account/RsubMine;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$5(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/account/RsubMine;)V
    invoke-static {v0, v2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$5(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/account/RsubMine;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_84} :catch_85

    goto :goto_93

    :catch_85
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_90

    const-string p1, "\u062e\u0637\u0623"

    :cond_90
    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 64
    :goto_93
    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$load$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {p1, v0}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$8(Landroidx/compose/runtime/MutableState;Z)V

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
