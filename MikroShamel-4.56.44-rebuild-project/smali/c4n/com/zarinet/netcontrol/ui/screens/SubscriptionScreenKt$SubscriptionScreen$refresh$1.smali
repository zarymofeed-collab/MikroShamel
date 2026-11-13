.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->SubscriptionScreen$refresh(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
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
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.SubscriptionScreenKt$SubscriptionScreen$refresh$1"
    f = "SubscriptionScreen.kt"
    i = {
        0x0
    }
    l = {
        0x43,
        0x44,
        0x45
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
.field final synthetic $refreshing$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->$refreshing$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->$refreshing$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2c

    if-eq v1, v5, :cond_24

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :try_start_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_61

    :catchall_22
    move-exception p1

    goto :goto_67

    :cond_24
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_48

    goto :goto_42

    :cond_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 67
    :try_start_33
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/zarinet/netcontrol/subscription/PlanCatalog;->INSTANCE:Lcom/zarinet/netcontrol/subscription/PlanCatalog;

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->label:I

    invoke-static {v1, v4, p0, v5, v4}, Lcom/zarinet/netcontrol/subscription/PlanCatalog;->refresh$default(Lcom/zarinet/netcontrol/subscription/PlanCatalog;Lcom/zarinet/netcontrol/subscription/SupabaseApi;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    :cond_42
    :goto_42
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_48

    goto :goto_52

    :catchall_48
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_52
    :try_start_52
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/zarinet/netcontrol/subscription/SubscriptionService;->INSTANCE:Lcom/zarinet/netcontrol/subscription/SubscriptionService;

    iput-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->label:I

    invoke-virtual {p1, v5, p0}, Lcom/zarinet/netcontrol/subscription/SubscriptionService;->getSubscriptionStatus(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_61

    return-object v0

    :cond_61
    :goto_61
    check-cast p1, Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_22

    goto :goto_70

    :goto_67
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_70
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->label:I

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fetchPlanFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$fetchPlanFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7e

    return-object v0

    :cond_7e
    :goto_7e
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_86

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->getPlanFeatures()Ljava/util/Map;
    invoke-static {}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$getPlanFeatures()Ljava/util/Map;

    move-result-object p1

    :cond_86
    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->setPlanFeatures(Ljava/util/Map;)V
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$setPlanFeatures(Ljava/util/Map;)V

    .line 70
    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$SubscriptionScreen$refresh$1;->$refreshing$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->SubscriptionScreen$lambda$11(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {p1, v0}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$SubscriptionScreen$lambda$11(Landroidx/compose/runtime/MutableState;Z)V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
