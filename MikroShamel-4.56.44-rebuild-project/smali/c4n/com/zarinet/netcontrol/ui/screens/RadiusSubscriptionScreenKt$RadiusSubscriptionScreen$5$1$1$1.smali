.class final Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RadiusSubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nRadiusSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadiusSubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1"
    f = "RadiusSubscriptionScreen.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x9b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "n"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $busy$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $clean:Ljava/lang/String;

.field final synthetic $ctx:Landroid/content/Context;

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

.field final synthetic $loggedIn:Z

.field final synthetic $mine$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubMine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $network$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $note$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $p:Lcom/zarinet/netcontrol/account/RsubPlan;

.field final synthetic $pick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
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

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/account/RsubPlan;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            ">;Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubMine;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$p:Lcom/zarinet/netcontrol/account/RsubPlan;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$clean:Ljava/lang/String;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$note$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$network$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$pick$delegate:Landroidx/compose/runtime/MutableState;

    iput-boolean p7, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loggedIn:Z

    iput-object p8, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p14}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 19
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

    move-object/from16 v0, p0

    new-instance v15, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;

    iget-object v2, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$p:Lcom/zarinet/netcontrol/account/RsubPlan;

    iget-object v3, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$clean:Ljava/lang/String;

    iget-object v4, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v5, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$note$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$network$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$pick$delegate:Landroidx/compose/runtime/MutableState;

    iget-boolean v8, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loggedIn:Z

    iget-object v9, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v15

    move-object v0, v15

    move-object/from16 v15, p2

    invoke-direct/range {v1 .. v15}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;-><init>(Lcom/zarinet/netcontrol/account/RsubPlan;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$0:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    const-string v0, "https://wa.me/967778492884?text="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 152
    iget v3, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2a

    if-ne v3, v5, :cond_22

    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1f

    move-object/from16 v3, p1

    move-object v10, v2

    goto :goto_81

    :catch_1f
    move-exception v0

    goto/16 :goto_11e

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 153
    iget-object v6, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$note$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v6}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    move-object v6, v4

    :cond_4a
    check-cast v6, Ljava/lang/String;

    .line 155
    :try_start_4c
    sget-object v7, Lcom/zarinet/netcontrol/account/RadiusSubscription;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusSubscription;

    iget-object v8, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$p:Lcom/zarinet/netcontrol/account/RsubPlan;

    invoke-virtual {v8}, Lcom/zarinet/netcontrol/account/RsubPlan;->getCode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$network$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v9}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/zarinet/netcontrol/account/RadiusAccess;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusAccess;

    iget-object v11, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$clean:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Lcom/zarinet/netcontrol/account/RadiusAccess;->noteWithPhone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v1

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->label:I

    const/4 v11, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/zarinet/netcontrol/account/RadiusSubscription;->request$default(Lcom/zarinet/netcontrol/account/RadiusSubscription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_80

    return-object v2

    :cond_80
    move-object v10, v6

    .line 152
    :goto_81
    check-cast v3, Ljava/lang/String;

    .line 156
    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$ctx:Landroid/content/Context;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v5}, Lcom/zarinet/netcontrol/ui/components/LocalizedTextKt;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$pick$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$14(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/account/RsubPlan;)V
    invoke-static {v2, v4}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$14(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/account/RsubPlan;)V

    .line 158
    iget-boolean v11, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loggedIn:Z

    iget-object v12, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v13, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$loading$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$error$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$plans$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$mine$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v16, v2

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$load(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    invoke-static/range {v11 .. v16}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$load(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 159
    sget-object v2, Lcom/zarinet/netcontrol/account/AuthService;->INSTANCE:Lcom/zarinet/netcontrol/account/AuthService;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/AuthService;->getSession()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zarinet/netcontrol/account/AuthSession;

    if-eqz v2, :cond_b6

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/AuthSession;->getEmail()Ljava/lang/String;

    move-result-object v4

    :cond_b6
    move-object v7, v4

    .line 160
    sget-object v6, Lcom/zarinet/netcontrol/account/RadiusAccess;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusAccess;

    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$network$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    iget-object v11, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$clean:Ljava/lang/String;

    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$p:Lcom/zarinet/netcontrol/account/RsubPlan;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubPlan;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Lcom/zarinet/netcontrol/account/RadiusAccess;->whatsappText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n\u0631\u0642\u0645 \u0627\u0644\u0637\u0644\u0628: "

    const-string v15, ""

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v3, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$ctx:Landroid/content/Context;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_e7} :catch_1f

    :try_start_e7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 162
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catchall {:try_start_e7 .. :try_end_112} :catchall_113

    goto :goto_131

    :catchall_113
    move-exception v0

    :try_start_114
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11d} :catch_1f

    goto :goto_131

    .line 165
    :goto_11e
    iget-object v2, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_128

    const-string v0, "\u062e\u0637\u0623"

    :cond_128
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v5}, Lcom/zarinet/netcontrol/ui/components/LocalizedTextKt;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    :goto_131
    iget-object v0, v1, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt$RadiusSubscriptionScreen$5$1$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    # invokes: Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->RadiusSubscriptionScreen$lambda$17(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {v0, v2}, Lcom/zarinet/netcontrol/ui/screens/RadiusSubscriptionScreenKt;->access$RadiusSubscriptionScreen$lambda$17(Landroidx/compose/runtime/MutableState;Z)V

    .line 168
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
