.class public final Lcom/zarinet/netcontrol/ui/screens/PlanX;
.super Ljava/lang/Object;
.source "RadiusPlanCards.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/PlanX;",
        "",
        "usd",
        "",
        "users",
        "",
        "<init>",
        "(Ljava/lang/Double;Ljava/lang/Integer;)V",
        "getUsd",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getUsers",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;"
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


# instance fields
.field private final usd:Ljava/lang/Double;

.field private final users:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Integer;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanX;->usd:Ljava/lang/Double;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/PlanX;->users:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getUsd()Ljava/lang/Double;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/PlanX;->usd:Ljava/lang/Double;

    return-object v0
.end method

.method public final getUsers()Ljava/lang/Integer;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/PlanX;->users:Ljava/lang/Integer;

    return-object v0
.end method
