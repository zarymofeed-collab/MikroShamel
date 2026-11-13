.class final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->fetchPlanFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,339:1\n1#2:340\n1187#3,2:341\n1261#3,2:343\n1557#3:345\n1628#3,3:346\n774#3:349\n865#3,2:350\n1264#3:352\n*S KotlinDebug\n*F\n+ 1 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2\n*L\n254#1:341,2\n254#1:343,2\n256#1:345\n256#1:346,3\n256#1:349\n256#1:350,2\n254#1:352\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u001e\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0018\u00010\u0001*\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "kotlin.jvm.PlatformType",
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
    c = "com.zarinet.netcontrol.ui.screens.SubscriptionScreenKt$fetchPlanFeatures$2"
    f = "SubscriptionScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;

    invoke-direct {v0, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const-string v0, "features"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 245
    iget v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->label:I

    if-nez v1, :cond_168

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$fetchPlanFeatures$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 246
    :try_start_11
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 247
    const-string v1, "https://yvykqdaqfbzzvouytfop.supabase.co"

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 248
    const-string v2, "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2eWtxZGFxZmJ6enZvdXl0Zm9wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTAzMzg2NzUsImV4cCI6MjEwNTkxNDY3NX0.wsLvEDIAX5FRQtmS9dySPP0ieGWsFJh8VhwCdaXdURY"

    .line 249
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/rest/v1/subscription_plans?select=code,features&active=eq.true"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v4, 0x2710

    .line 250
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 251
    const-string v4, "apikey"

    invoke-virtual {v1, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Authorization"

    const-string v4, "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2eWtxZGFxZmJ6enZvdXl0Zm9wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTAzMzg2NzUsImV4cCI6MjEwNTkxNDY3NX0.wsLvEDIAX5FRQtmS9dySPP0ieGWsFJh8VhwCdaXdURY"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "getInputStream(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v1, v4, Ljava/io/BufferedReader;

    if-eqz v1, :cond_71

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_79

    :cond_71
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v1

    :goto_79
    check-cast v4, Ljava/io/Closeable;
    :try_end_7b
    .catchall {:try_start_11 .. :try_end_7b} :catchall_154

    :try_start_7b
    move-object v1, v4

    check-cast v1, Ljava/io/BufferedReader;

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_14d

    :try_start_84
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 253
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v3, 0xa

    .line 341
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 342
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .line 343
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_148

    move-object v4, v1

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 255
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 256
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_137

    :cond_d3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "getString(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 345
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 346
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 347
    check-cast v8, Ljava/lang/String;

    .line 256
    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 347
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 348
    :cond_10d
    check-cast v7, Ljava/util/List;

    .line 345
    check-cast v7, Ljava/lang/Iterable;

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 350
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11c
    :goto_11c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_135

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 256
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_11c

    .line 350
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 351
    :cond_135
    check-cast v4, Ljava/util/List;

    .line 256
    :goto_137
    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b1

    .line 246
    :cond_148
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14c
    .catchall {:try_start_84 .. :try_end_14c} :catchall_154

    goto :goto_15f

    :catchall_14d
    move-exception v0

    .line 252
    :try_start_14e
    throw v0
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14f

    :catchall_14f
    move-exception v1

    :try_start_150
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_154
    .catchall {:try_start_150 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception v0

    .line 246
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    :goto_15f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    goto :goto_167

    :cond_166
    move-object p1, v0

    :goto_167
    return-object p1

    .line 245
    :cond_168
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
