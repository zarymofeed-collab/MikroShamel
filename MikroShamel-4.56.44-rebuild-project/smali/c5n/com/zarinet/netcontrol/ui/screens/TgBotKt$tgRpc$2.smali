.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TgBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "tok"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$tgRpc$2"
    f = "TgBot.kt"
    i = {}
    l = {
        0x3b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $body:Lorg/json/JSONObject;

.field final synthetic $fn:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$fn:Ljava/lang/String;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$body:Lorg/json/JSONObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$fn:Ljava/lang/String;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$body:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->invoke(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/zarinet/netcontrol/account/RadiusSubscription;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusSubscription;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/account/RadiusSubscription;->getApi()Lcom/zarinet/netcontrol/subscription/SupabaseApi;

    move-result-object v1

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$fn:Ljava/lang/String;

    iget-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->$body:Lorg/json/JSONObject;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$tgRpc$2;->label:I

    invoke-virtual {v1, v3, v4, p1, v5}, Lcom/zarinet/netcontrol/subscription/SupabaseApi;->rpc(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    return-object p1
.end method
