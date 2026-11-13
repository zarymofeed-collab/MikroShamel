.class final Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;
.super Ljava/lang/Object;
.source "SubscriptionScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J5\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;",
        "",
        "key",
        "",
        "name",
        "monthly",
        "Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;",
        "yearly",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getName",
        "getMonthly",
        "()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;",
        "getYearly",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString"
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
.field private final key:Ljava/lang/String;

.field private final monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

.field private final name:Ljava/lang/String;

.field private final yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;)V
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    iput-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    return-void
.end method

.method public static synthetic copy$default(Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;ILjava/lang/Object;)Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;)Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;
    .registers 2

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    return-object v0
.end method

.method public final component4()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;
    .registers 2

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;)Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    iget-object v3, p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    iget-object p1, p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonthly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getYearly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    if-nez v1, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubPlanTier(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monthly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->monthly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yearly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->yearly:Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
