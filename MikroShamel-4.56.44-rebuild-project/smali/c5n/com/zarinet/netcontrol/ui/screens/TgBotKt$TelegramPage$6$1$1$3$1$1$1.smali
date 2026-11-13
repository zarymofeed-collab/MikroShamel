.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TgBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,329:1\n774#2:330\n865#2,2:331\n1863#2,2:333\n434#3:335\n507#3,5:336\n*S KotlinDebug\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1\n*L\n311#1:330\n311#1:331,2\n312#1:333,2\n315#1:335\n315#1:336,5\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$TelegramPage$6$1$1$3$1$1$1"
    f = "TgBot.kt"
    i = {
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x133,
        0x135,
        0x136,
        0x138,
        0x13a
    }
    m = "invokeSuspend"
    n = {
        "key",
        "key",
        "api",
        "key",
        "api"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
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

.field final synthetic $ip$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $name$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $saving$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/data/Device;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/data/Device;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$dev:Lcom/zarinet/netcontrol/data/Device;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$name$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ip$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ctx:Landroid/content/Context;

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$adding$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/tool fetch url=\"https://yvykqdaqfbzzvouytfop.supabase.co/functions/v1/tg-bcast?k="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&s="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" keep-result=no"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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

    new-instance p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$dev:Lcom/zarinet/netcontrol/data/Device;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$name$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ip$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$adding$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;-><init>(Lcom/zarinet/netcontrol/data/Device;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v7, p0

    const-string v0, ".id"

    const-string v1, "?host="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 305
    iget v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I

    const-string v9, "comment"

    const-string v10, ""

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_6e

    if-eq v2, v5, :cond_64

    if-eq v2, v15, :cond_5a

    if-eq v2, v13, :cond_4a

    if-eq v2, v12, :cond_33

    if-ne v2, v11, :cond_2b

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_6a

    move/from16 v16, v5

    move v12, v6

    goto/16 :goto_255

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_3f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_6a

    move-object v11, v1

    move-object v13, v2

    move/from16 v16, v5

    move v12, v6

    move-object v5, v3

    goto/16 :goto_18b

    :cond_4a
    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_6a

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_109

    :cond_5a
    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_5e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_d4

    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_6a

    move-object/from16 v2, p1

    goto :goto_b7

    :catch_6a
    move-exception v0

    move v12, v6

    goto/16 :goto_270

    :cond_6e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    :try_start_71
    const-string v2, "bcast_device_add"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "p_router"

    iget-object v11, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$dev:Lcom/zarinet/netcontrol/data/Device;

    invoke-virtual {v11}, Lcom/zarinet/netcontrol/data/Device;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "p_name"

    iget-object v11, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$name$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v11}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "p_ip"

    iget-object v11, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ip$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v11}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "put(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v7

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v5, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v2, v3, v4}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_b7

    return-object v8

    :cond_b7
    :goto_b7
    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v2, "key"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    sget-object v3, Lcom/zarinet/netcontrol/data/Session;->INSTANCE:Lcom/zarinet/netcontrol/data/Session;

    move-object v4, v7

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    iput v15, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I

    invoke-virtual {v3, v4}, Lcom/zarinet/netcontrol/data/Session;->api(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_d4

    return-object v8

    .line 305
    :cond_d4
    :goto_d4
    check-cast v3, Lcom/zarinet/netcontrol/api/RouterOsClient;

    .line 310
    const-string v17, "/tool/netwatch/print"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ip$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    # 4.56.44: proplist = null (القائمة الفارغة تُرسل «=.proplist=» فتعود الصفوف بلا حقول فلا يُعثر على netwatch القديم)
    const/16 v20, 0x0

    move-object/from16 v21, v7

    check-cast v21, Lkotlin/coroutines/Continuation;

    iput-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$1:Ljava/lang/Object;

    iput v13, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v21}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_109

    return-object v8

    :cond_109
    :goto_109
    check-cast v1, Lcom/zarinet/netcontrol/api/ApiResult;

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/api/ApiResult;->getRows()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 331
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Ljava/util/Map;

    .line 311
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_132

    move-object v5, v10

    :cond_132
    const-string v13, "shamel-tg"

    invoke-static {v5, v13, v6, v15, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 331
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13d
    const/4 v5, 0x1

    const/4 v13, 0x3

    goto :goto_11c

    .line 332
    :cond_140
    check-cast v4, Ljava/util/List;

    .line 330
    check-cast v4, Ljava/lang/Iterable;

    .line 333
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v11, v1

    move-object v5, v2

    move-object v13, v3

    :goto_14b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 312
    const-string v2, "/tool/netwatch/remove"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_162

    move-object v1, v10

    :cond_162
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    iput-object v5, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v11, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$2:Ljava/lang/Object;

    iput v12, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_17a} :catch_6a

    move-object v1, v13

    move-object v14, v5

    const/16 v16, 0x1

    move-object/from16 v5, v18

    move v12, v6

    move-object/from16 v6, p0

    :try_start_183
    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_18a

    return-object v8

    :cond_18a
    move-object v5, v14

    :goto_18b
    move v6, v12

    const/4 v12, 0x4

    const/4 v14, 0x0

    goto :goto_14b

    :cond_18f
    move-object v14, v5

    move v12, v6

    const/16 v16, 0x1

    .line 314
    const-string v0, "/tool/netwatch/add"

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "host"

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ip$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v3}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "interval"

    const-string v3, "30s"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v16

    const-string v2, "timeout"

    const-string v3, "2s"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v15

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shamel-tg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$name$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    invoke-static {v3}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v4, Ljava/lang/Appendable;

    .line 336
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v6, v12

    :goto_1e2
    if-ge v6, v5, :cond_1fe

    .line 337
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    int-to-char v10, v10

    int-to-char v11, v10

    .line 315
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_1f8

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1f8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1fb

    .line 338
    :cond_1f8
    invoke-interface {v4, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1fb
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e2

    .line 340
    :cond_1fe
    check-cast v4, Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 316
    const-string v2, "down-script"

    const-string v3, "down"

    invoke-static {v14, v3}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->invokeSuspend$f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "up-script"

    const-string v3, "up"

    invoke-static {v14, v3}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->invokeSuspend$f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 314
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v20

    .line 316
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v21

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v23, v7

    check-cast v23, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    .line 314
    iput-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->label:I

    move-object/from16 v18, v13

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v23}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_255

    return-object v8

    .line 317
    :cond_255
    :goto_255
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ctx:Landroid/content/Context;

    const-string v1, "\u2705 \u062a\u0645\u062a \u0627\u0644\u0625\u0636\u0627\u0641\u0629 \u0648\u062a\u0631\u0643\u064a\u0628 \u0627\u0644\u0645\u0631\u0627\u0642\u0628\u0629 \u0639\u0644\u0649 \u0627\u0644\u0631\u0627\u0648\u062a\u0631"

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$adding$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$22(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {v0, v12}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$22(Landroidx/compose/runtime/MutableState;Z)V

    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I
    invoke-static {v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$27(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$tick$delegate:Landroidx/compose/runtime/MutableState;

    add-int/lit8 v0, v0, 0x1

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V
    invoke-static {v1, v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$28(Landroidx/compose/runtime/MutableState;I)V
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_26e} :catch_26f

    goto :goto_27d

    :catch_26f
    move-exception v0

    .line 319
    :goto_270
    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27a

    const-string v0, "\u062e\u0637\u0623"

    :cond_27a
    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    :goto_27d
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6$1$1$3$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {v0, v12}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$6;->access$invoke$lambda$8(Landroidx/compose/runtime/MutableState;Z)V

    .line 321
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
