.class final Lcom/zarinet/netcontrol/ui/screens/Dev;
.super Ljava/lang/Object;
.source "TgBot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/Dev;",
        "",
        "id",
        "",
        "name",
        "ip",
        "status",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getIp",
        "getStatus"
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
.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->ip:Ljava/lang/String;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/Dev;->status:Ljava/lang/String;

    return-object v0
.end method
