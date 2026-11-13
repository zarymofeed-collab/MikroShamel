.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;
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
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n1#2:330\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$TelegramPage$2$1$2$3$3$1$1"
    f = "TgBot.kt"
    i = {}
    l = {
        0xa7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $tick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$ctx:Landroid/content/Context;

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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    :try_start_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_33

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1e
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string p1, "tg_unlink"

    iput v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->label:I

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, p0, v3, v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc$default(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_33

    goto :goto_3d

    :catchall_33
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I
    invoke-static {p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I

    move-result p1

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    add-int/2addr p1, v2

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V
    invoke-static {v0, p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$2$3$3$1$1;->$ctx:Landroid/content/Context;

    const-string v0, "\u062a\u0645 \u0641\u0643 \u0627\u0644\u0631\u0628\u0637"

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
