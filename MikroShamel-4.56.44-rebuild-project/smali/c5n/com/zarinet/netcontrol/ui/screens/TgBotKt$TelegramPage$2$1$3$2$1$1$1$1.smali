.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;
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
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,329:1\n1#2:330\n774#3:331\n865#3,2:332\n1863#3,2:334\n*S KotlinDebug\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1\n*L\n198#1:331\n198#1:332,2\n199#1:334,2\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$TelegramPage$2$1$3$2$1$1$1$1"
    f = "TgBot.kt"
    i = {
        0x0,
        0x2,
        0x3
    }
    l = {
        0xc2,
        0xc4,
        0xc5,
        0xc7
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "api",
        "api"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $d:Lcom/zarinet/netcontrol/ui/screens/Dev;

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

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/ui/screens/Dev;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/ui/screens/Dev;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$d:Lcom/zarinet/netcontrol/ui/screens/Dev;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$d:Lcom/zarinet/netcontrol/ui/screens/Dev;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v1, v2, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;-><init>(Lcom/zarinet/netcontrol/ui/screens/Dev;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    move-object v7, p0

    const-string v8, ".id"

    const-string v1, "?host="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 193
    iget v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->label:I

    const-string v10, ""

    const/4 v11, 0x4

    const/4 v2, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_54

    if-eq v0, v13, :cond_4a

    if-eq v0, v12, :cond_3d

    if-eq v0, v2, :cond_31

    if-ne v0, v11, :cond_29

    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/zarinet/netcontrol/api/RouterOsClient;

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_47

    move-object v14, v1

    goto/16 :goto_113

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/zarinet/netcontrol/api/RouterOsClient;

    :try_start_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_47

    move-object v14, v0

    move-object/from16 v0, p1

    goto/16 :goto_d2

    :cond_3d
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/zarinet/netcontrol/ui/screens/Dev;

    :try_start_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_47

    move-object/from16 v3, p1

    goto :goto_a1

    :catchall_47
    move-exception v0

    goto/16 :goto_14f

    :cond_4a
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_86

    move-object/from16 v0, p1

    goto :goto_80

    :cond_54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 194
    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$d:Lcom/zarinet/netcontrol/ui/screens/Dev;

    :try_start_5d
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v4, "bcast_device_remove"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "p_id"

    invoke-virtual {v3}, Lcom/zarinet/netcontrol/ui/screens/Dev;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "put(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    iput v13, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->label:I

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v3, p0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_80

    return-object v9

    :cond_80
    :goto_80
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_5d .. :try_end_85} :catchall_86

    goto :goto_90

    :catchall_86
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_90
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$d:Lcom/zarinet/netcontrol/ui/screens/Dev;

    :try_start_92
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 196
    sget-object v3, Lcom/zarinet/netcontrol/data/Session;->INSTANCE:Lcom/zarinet/netcontrol/data/Session;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    iput v12, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->label:I

    invoke-virtual {v3, p0}, Lcom/zarinet/netcontrol/data/Session;->api(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_a1

    return-object v9

    .line 193
    :cond_a1
    :goto_a1
    move-object v14, v3

    check-cast v14, Lcom/zarinet/netcontrol/api/RouterOsClient;

    .line 197
    const-string v3, "/tool/netwatch/print"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/ui/screens/Dev;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    # 4.56.44: proplist = null (القائمة الفارغة تُرسل «=.proplist=» فتعود الصفوف بلا حقول فلا يُعثر على netwatch القديم)
    const/4 v5, 0x0

    iput-object v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->label:I

    move-object v1, v14

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_d2

    return-object v9

    :cond_d2
    :goto_d2
    check-cast v0, Lcom/zarinet/netcontrol/api/ApiResult;

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/api/ApiResult;->getRows()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e5
    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    .line 198
    const-string v4, "comment"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_fd

    move-object v3, v10

    :cond_fd
    const-string v4, "shamel-tg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v12, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 332
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 333
    :cond_10b
    check-cast v1, Ljava/util/List;

    .line 331
    check-cast v1, Ljava/lang/Iterable;

    .line 334
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_113
    :goto_113
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_149

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 199
    const-string v2, "/tool/netwatch/remove"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_12a

    move-object v1, v10

    :cond_12a
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->L$1:Ljava/lang/Object;

    iput v11, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->label:I

    move-object v1, v14

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_113

    return-object v9

    .line 200
    :cond_149
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 195
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14e
    .catchall {:try_start_92 .. :try_end_14e} :catchall_47

    goto :goto_158

    :goto_14f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_158
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I
    invoke-static {v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$2$1$3$2$1$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    add-int/2addr v0, v13

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V
    invoke-static {v1, v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V

    .line 202
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
