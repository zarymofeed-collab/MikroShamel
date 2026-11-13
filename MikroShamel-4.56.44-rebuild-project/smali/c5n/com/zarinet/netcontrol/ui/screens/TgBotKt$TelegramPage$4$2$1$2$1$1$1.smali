.class final Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TgBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,329:1\n774#2:330\n865#2,2:331\n1863#2,2:333\n1863#2:335\n295#2,2:336\n1864#2:338\n*S KotlinDebug\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1\n*L\n270#1:330\n270#1:331,2\n271#1:333,2\n272#1:335\n273#1:336,2\n272#1:338\n*E\n"
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
    c = "com.zarinet.netcontrol.ui.screens.TgBotKt$TelegramPage$4$2$1$2$1$1$1"
    f = "TgBot.kt"
    i = {
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5
    }
    l = {
        0x10a,
        0x10c,
        0x10d,
        0x10f,
        0x112,
        0x113
    }
    m = "invokeSuspend"
    n = {
        "script",
        "script",
        "api",
        "script",
        "api",
        "al",
        "script",
        "api",
        "al",
        "script",
        "api",
        "al"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $d:Lcom/zarinet/netcontrol/data/Device;

.field final synthetic $dhOpen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
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

.field final synthetic $sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/data/Device;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/data/Device;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$d:Lcom/zarinet/netcontrol/data/Device;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$dhOpen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$d:Lcom/zarinet/netcontrol/data/Device;

    iget-object v2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$dhOpen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;-><init>(Lcom/zarinet/netcontrol/data/Device;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v7, p0

    const-string v0, ":do {/tool fetch url=(\"https://yvykqdaqfbzzvouytfop.supabase.co/functions/v1/tg-event?k="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 264
    iget v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    const/4 v9, 0x0

    const-string v11, "interface"

    const-string v12, "comment"

    const-string v13, ""

    const/4 v14, 0x3

    const/4 v15, 0x2

    const-string v6, ".id"

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_332

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_9d

    move-object v10, v1

    move/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v21, v13

    move/from16 v17, v14

    const/4 v9, 0x4

    move-object/from16 v1, p1

    goto/16 :goto_2e0

    :pswitch_43
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_53
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_9d

    move-object v10, v1

    move/from16 v18, v5

    move-object v9, v6

    move-object/from16 v21, v13

    move-object/from16 v1, p1

    goto/16 :goto_288

    :pswitch_60
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v3, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_70
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_9d

    move-object v10, v1

    move-object v14, v2

    move/from16 v18, v5

    move-object v9, v6

    move-object/from16 v21, v13

    move-object v5, v3

    move v13, v4

    goto/16 :goto_1e3

    :pswitch_7e
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/zarinet/netcontrol/api/RouterOsClient;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_86
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_9d

    move-object/from16 v2, p1

    goto/16 :goto_126

    :pswitch_8d
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_91
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_fe

    :pswitch_97
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_9d

    move-object/from16 v1, p1

    goto :goto_c7

    :catch_9d
    move-exception v0

    goto/16 :goto_31c

    :pswitch_a0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    :try_start_a3
    const-string v1, "tg_router_key"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "p_router"

    iget-object v10, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$d:Lcom/zarinet/netcontrol/data/Device;

    invoke-virtual {v10}, Lcom/zarinet/netcontrol/data/Device;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "put(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v5, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$tgRpc(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_c7

    return-object v8

    :cond_c7
    :goto_c7
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [C

    const/16 v3, 0x22

    aput-char v3, v2, v4

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&e=dhcp&i=\".$interface.\"&a=\".$address.\"&m=\".$\"mac-address\") keep-result=no} on-error={}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/zarinet/netcontrol/data/Session;->INSTANCE:Lcom/zarinet/netcontrol/data/Session;

    move-object v2, v7

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput v15, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    invoke-virtual {v1, v2}, Lcom/zarinet/netcontrol/data/Session;->api(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_fe

    return-object v8

    .line 264
    :cond_fe
    :goto_fe
    check-cast v1, Lcom/zarinet/netcontrol/api/RouterOsClient;

    .line 269
    const-string v18, "/ip/dhcp-server/alert/print"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    # 4.56.43: proplist = null (كانت قائمة فارغة → «=.proplist=» فترجع الصفوف بلا حقول فتظهر قائمة الواجهات فارغة)
    const/16 v21, 0x0

    move-object/from16 v22, v7

    check-cast v22, Lkotlin/coroutines/Continuation;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    iput v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v22}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_121

    return-object v8

    :cond_121
    move-object/from16 v24, v1

    move-object v1, v0

    move-object/from16 v0, v24

    :goto_126
    check-cast v2, Lcom/zarinet/netcontrol/api/ApiResult;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/api/ApiResult;->getRows()Ljava/util/List;

    move-result-object v2

    .line 270
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    iget-object v10, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 330
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v17

    check-cast v5, Ljava/util/Collection;

    .line 331
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_142} :catch_9d

    if-eqz v17, :cond_189

    :try_start_144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_148} :catch_185

    :try_start_148
    move-object v4, v14

    check-cast v4, Ljava/util/Map;

    .line 270
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 p1, v0

    if-nez v20, :cond_159

    move-object/from16 v20, v1

    move-object v0, v13

    goto :goto_15d

    :cond_159
    move-object/from16 v0, v20

    move-object/from16 v20, v1

    :goto_15d
    const-string v1, "shamel-tg"
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_15f} :catch_181

    move-object/from16 v21, v13

    const/4 v13, 0x0

    :try_start_162
    invoke-static {v0, v1, v13, v15, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    .line 331
    invoke-interface {v5, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_178
    move-object/from16 v0, p1

    move v4, v13

    move-object/from16 v1, v20

    move-object/from16 v13, v21

    const/4 v14, 0x3

    goto :goto_13e

    :catch_181
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_31c

    :catch_185
    move-exception v0

    move v13, v4

    goto/16 :goto_31c

    :cond_189
    move-object/from16 p1, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move v13, v4

    .line 332
    check-cast v5, Ljava/util/List;

    .line 330
    check-cast v5, Ljava/lang/Iterable;

    .line 333
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v14, p1

    move-object v10, v2

    move-object/from16 v5, v20

    :goto_19d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 271
    const-string v2, "/ip/dhcp-server/alert/remove"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1b5

    move-object/from16 v1, v21

    :cond_1b5
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v19

    iput-object v5, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    move-object v1, v14

    move-object/from16 v20, v5

    const/16 v18, 0x1

    move-object/from16 v5, v19

    move-object v9, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1e1

    return-object v8

    :cond_1e1
    move-object/from16 v5, v20

    :goto_1e3
    move-object v6, v9

    const/4 v9, 0x0

    goto :goto_19d

    :cond_1e6
    move-object/from16 v20, v5

    move-object v9, v6

    const/16 v18, 0x1

    .line 272
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v0, Ljava/lang/Iterable;

    .line 335
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v6, v20

    :goto_1f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    .line 336
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_208
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_220

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    .line 273
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_208

    goto :goto_221

    :cond_220
    const/4 v3, 0x0

    :goto_221
    check-cast v3, Ljava/util/Map;
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_223} :catch_9d

    .line 274
    const-string v2, "shamel-tg dhcp"

    const-string v4, "1h"

    const-string v5, "alert-timeout"

    const-string v15, "on-alert"

    if-eqz v3, :cond_293

    :try_start_22d
    const-string v22, "/ip/dhcp-server/alert/set"

    const/4 v1, 0x5

    new-array v13, v1, [Lkotlin/Pair;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_23c

    move-object/from16 v3, v21

    :cond_23c
    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v23, 0x0

    aput-object v3, v13, v23

    invoke-static {v15, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v13, v18

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v13, v4

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v13, v3

    const-string v2, "disabled"

    const-string v3, "no"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v13, v3

    invoke-static {v13}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v6, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    iput v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    move-object v1, v14

    move-object/from16 v2, v22

    move-object v13, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_286

    return-object v8

    :cond_286
    move-object v3, v13

    move-object v2, v14

    :goto_288
    check-cast v1, Lcom/zarinet/netcontrol/api/ApiResult;

    move-object v14, v2

    move-object v6, v3

    move-object/from16 v16, v9

    const/4 v9, 0x4

    const/4 v15, 0x2

    const/16 v17, 0x3

    goto :goto_2e4

    :cond_293
    move-object v13, v6

    .line 275
    const-string v3, "/ip/dhcp-server/alert/add"

    move-object/from16 v16, v9

    # 4.56.43: 5 عناصر بدل 4 — إضافة disabled=no (RouterOS ينشئ alert معطّلاً افتراضياً فلا يعمل التنبيه)
    const/4 v6, 0x5

    new-array v9, v6, [Lkotlin/Pair;

    const/4 v6, 0x4

    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v22, 0x0

    aput-object v1, v9, v22

    invoke-static {v15, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v9, v18

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v9, v15

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v17, 0x3

    aput-object v1, v9, v17

    # 4.56.43: "disabled" to "no"
    const-string v4, "disabled"

    const-string v5, "no"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v9, v4

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v13, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v10, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->label:I

    move-object v1, v14

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    move v9, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zarinet/netcontrol/api/RouterOsClient;->exec(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_2de

    return-object v8

    :cond_2de
    move-object v3, v13

    move-object v2, v14

    .line 264
    :goto_2e0
    check-cast v1, Lcom/zarinet/netcontrol/api/ApiResult;

    move-object v14, v2

    move-object v6, v3

    :goto_2e4
    move-object/from16 v9, v16

    const/4 v13, 0x0

    goto/16 :goto_1f5

    .line 277
    :cond_2e9
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f6

    const-string v1, "\ud83d\udd15 \u062a\u0645 \u0625\u064a\u0642\u0627\u0641 \u0627\u0644\u062a\u0646\u0628\u064a\u0647"

    goto :goto_312

    :cond_2f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2705 \u062a\u0645 \u062a\u0641\u0639\u064a\u0644 \u0627\u0644\u062a\u0646\u0628\u064a\u0647 \u0639\u0644\u0649 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$sel:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u0648\u0627\u062c\u0647\u0629"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_312
    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$dhOpen$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$lambda$25(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {v0, v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$lambda$25(Landroidx/compose/runtime/MutableState;Z)V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_31b} :catch_9d

    goto :goto_329

    .line 279
    :goto_31c
    iget-object v1, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_326

    const-string v0, "\u062e\u0637\u0623"

    :cond_326
    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$TelegramPage$toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    :goto_329
    iget-object v0, v7, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4$2$1$2$1$1$1;->$saving$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    # invokes: Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4;->invoke$lambda$6(Landroidx/compose/runtime/MutableState;Z)V
    invoke-static {v0, v1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$TelegramPage$4;->access$invoke$lambda$6(Landroidx/compose/runtime/MutableState;Z)V

    .line 281
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_332
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_97
        :pswitch_8d
        :pswitch_7e
        :pswitch_60
        :pswitch_43
        :pswitch_22
    .end packed-switch
.end method
