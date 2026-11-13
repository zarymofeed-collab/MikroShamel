.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
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
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n1#2:330\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$TelegramPage$1$1"
    f = "TgBot.kt"
    i = {}
    l = {
        0x65
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $st$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/ui/screens/TgState;",
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
            "Lcom/zarinet/netcontrol/ui/screens/TgState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->$st$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->$st$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-ne v1, v3, :cond_16

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    :try_start_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_39

    :catchall_14
    move-exception p1

    goto :goto_48

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->$st$delegate:Landroidx/compose/runtime/MutableState;

    :try_start_27
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v1, "tg_status"

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->label:I

    const/4 v4, 0x2

    invoke-static {v1, v2, p0, v4, v2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc$default(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_44

    if-ne v1, v0, :cond_37

    return-object v0

    :cond_37
    move-object v0, p1

    move-object p1, v1

    :goto_39
    :try_start_39
    check-cast p1, Ljava/lang/String;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->parse(Ljava/lang/String;)Lcom/zarinet/netcontrol/ui/screens/TgState;
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$parse(Ljava/lang/String;)Lcom/zarinet/netcontrol/ui/screens/TgState;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_14

    goto :goto_52

    :catchall_44
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_48
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_52
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_5a

    :cond_59
    move-object v2, p1

    :goto_5a
    check-cast v2, Lcom/zarinet/netcontrol/ui/screens/TgState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$16(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/ui/screens/TgState;)V
    invoke-static {v0, v2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$16(Landroidx/compose/runtime/MutableState;Lcom/zarinet/netcontrol/ui/screens/TgState;)V

    sget-object p1, Lcom/zarinet/netcontrol/ui/screens/TgNav;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/TgNav;

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$1$1;->$st$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$15(Landroidx/compose/runtime/MutableState;)Lcom/zarinet/netcontrol/ui/screens/TgState;
    invoke-static {v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$15(Landroidx/compose/runtime/MutableState;)Lcom/zarinet/netcontrol/ui/screens/TgState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/ui/screens/TgState;->getLinked()Z

    move-result v0

    if-ne v0, v3, :cond_71

    goto :goto_72

    :cond_71
    move v3, v1

    :goto_72
    invoke-virtual {p1, v3}, Lcom/zarinet/netcontrol/ui/screens/TgNav;->setLinked(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
