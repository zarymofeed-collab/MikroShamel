.class public final Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt$PlanPicker$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt;->PlanPicker(Lcom/zarinet/netcontrol/subscription/SubscriptionStatus;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 SubscriptionScreen.kt\ncom/zarinet/netcontrol/ui/screens/SubscriptionScreenKt\n*L\n1#1,102:1\n281#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    .line 103
    invoke-virtual {p1}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->getMonthly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->getYearly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    move-result-object v0

    :cond_c
    const p1, 0x7fffffff

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;->getPriceSar()I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, p1

    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Comparable;

    check-cast p2, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;

    .line 103
    invoke-virtual {p2}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->getMonthly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-virtual {p2}, Lcom/zarinet/netcontrol/ui/screens/SubPlanTier;->getYearly()Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;

    move-result-object v1

    :cond_29
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/subscription/SubscriptionPlan;->getPriceSar()I

    move-result p1

    :cond_2f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
