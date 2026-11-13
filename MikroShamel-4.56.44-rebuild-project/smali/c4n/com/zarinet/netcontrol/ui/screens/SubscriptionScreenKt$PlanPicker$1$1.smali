.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->PlanPicker(Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.SubscriptionScreenKt$PlanPicker$1$1"
    f = "SubscriptionScreen.kt"
    i = {}
    l = {
        0x110,
        0x111
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $catalog$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->$catalog$delegate:Landroidx/compose/runtime/State;

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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->$catalog$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :try_start_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_41

    :catchall_1e
    move-exception p1

    goto :goto_47

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 272
    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->$catalog$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->PlanPicker$lambda$52(Landroidx/compose/runtime/State;)Ljava/util/List;
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$PlanPicker$lambda$52(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_50

    :try_start_33
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/zarinet/netcontrol/subscription/PlanCatalog;->INSTANCE:Lcom/zarinet/netcontrol/subscription/PlanCatalog;

    iput v3, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->label:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v3, v1}, Lcom/zarinet/netcontrol/subscription/PlanCatalog;->refresh$default(Lcom/zarinet/netcontrol/subscription/PlanCatalog;Lcom/zarinet/netcontrol/subscription/SupabaseApi;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_41

    return-object v0

    :cond_41
    :goto_41
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_1e

    goto :goto_50

    :goto_47
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_50
    :goto_50
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$1$1;->label:I

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fetchPlanFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$fetchPlanFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    return-object v0

    :cond_5c
    :goto_5c
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_63

    # invokes: Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->setPlanFeatures(Ljava/util/Map;)V
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->access$setPlanFeatures(Ljava/util/Map;)V

    .line 274
    :cond_63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
