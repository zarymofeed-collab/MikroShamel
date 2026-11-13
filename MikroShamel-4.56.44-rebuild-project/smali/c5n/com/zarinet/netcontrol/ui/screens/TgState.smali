.class final Lcom/zarinet/netcontrol/ui/screens/TgState;
.super Ljava/lang/Object;
.source "TgBot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/TgState;",
        "",
        "linked",
        "",
        "user",
        "",
        "fl",
        "bc",
        "devs",
        "",
        "Lcom/zarinet/netcontrol/ui/screens/Dev;",
        "<init>",
        "(ZLjava/lang/String;ZZLjava/util/List;)V",
        "getLinked",
        "()Z",
        "getUser",
        "()Ljava/lang/String;",
        "getFl",
        "getBc",
        "getDevs",
        "()Ljava/util/List;"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bc:Z

.field private final devs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/ui/screens/Dev;",
            ">;"
        }
    .end annotation
.end field

.field private final fl:Z

.field private final linked:Z

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/ui/screens/Dev;",
            ">;)V"
        }
    .end annotation

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->linked:Z

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->user:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->fl:Z

    iput-boolean p4, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->bc:Z

    iput-object p5, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->devs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBc()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->bc:Z

    return v0
.end method

.method public final getDevs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zarinet/netcontrol/ui/screens/Dev;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->devs:Ljava/util/List;

    return-object v0
.end method

.method public final getFl()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->fl:Z

    return v0
.end method

.method public final getLinked()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->linked:Z

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgState;->user:Ljava/lang/String;

    return-object v0
.end method
