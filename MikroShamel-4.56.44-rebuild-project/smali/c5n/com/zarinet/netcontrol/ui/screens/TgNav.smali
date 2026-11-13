.class public final Lcom/zarinet/netcontrol/ui/screens/TgNav;
.super Ljava/lang/Object;
.source "TgBot.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTgBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgNav\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,329:1\n81#2:330\n107#2,2:331\n81#2:333\n107#2,2:334\n*S KotlinDebug\n*F\n+ 1 TgBot.kt\ncom/zarinet/netcontrol/ui/screens/TgNav\n*L\n48#1:330\n48#1:331,2\n49#1:333\n49#1:334,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\n"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/TgNav;",
        "",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "page",
        "getPage",
        "()Z",
        "setPage",
        "(Z)V",
        "page$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "linked",
        "getLinked",
        "setLinked",
        "linked$delegate"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/zarinet/netcontrol/ui/screens/TgNav;

.field private static final linked$delegate:Landroidx/compose/runtime/MutableState;

.field private static final page$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;

    invoke-direct {v0}, Lcom/zarinet/netcontrol/ui/screens/TgNav;-><init>()V

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/TgNav;

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    sput-object v3, Lcom/zarinet/netcontrol/ui/screens/TgNav;->page$delegate:Landroidx/compose/runtime/MutableState;

    .line 49
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->linked$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLinked()Z
    .registers 2

    .line 49
    sget-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->linked$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 333
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPage()Z
    .registers 2

    .line 48
    sget-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->page$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 330
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final setLinked(Z)V
    .registers 3

    .line 49
    sget-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->linked$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 334
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPage(Z)V
    .registers 3

    .line 48
    sget-object v0, Lcom/zarinet/netcontrol/ui/screens/TgNav;->page$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 331
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
