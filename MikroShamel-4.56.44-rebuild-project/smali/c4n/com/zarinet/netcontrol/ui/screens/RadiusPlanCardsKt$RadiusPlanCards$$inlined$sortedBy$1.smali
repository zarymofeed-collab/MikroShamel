.class public final Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt;->RadiusPlanCards(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 RadiusPlanCards.kt\ncom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n86#2:103\n1#3:104\n*E\n"
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


# instance fields
.field final synthetic $ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .registers 2

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;->$ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zarinet/netcontrol/account/RsubPlan;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;->$ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/account/RsubPlan;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zarinet/netcontrol/ui/screens/PlanX;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/screens/PlanX;->getUsd()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Lcom/zarinet/netcontrol/account/RsubPlan;->getPrice()D

    move-result-wide v0

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zarinet/netcontrol/account/RsubPlan;

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;->$ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubPlan;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zarinet/netcontrol/ui/screens/PlanX;

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/zarinet/netcontrol/ui/screens/PlanX;->getUsd()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_5a

    :cond_56
    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubPlan;->getPrice()D

    move-result-wide v2

    :goto_5a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_31

    :cond_5f
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/util/List;

    .line 103
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zarinet/netcontrol/account/RsubPlan;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;->$ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v0}, Lcom/zarinet/netcontrol/account/RsubPlan;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zarinet/netcontrol/ui/screens/PlanX;

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Lcom/zarinet/netcontrol/ui/screens/PlanX;->getUsd()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_96

    :cond_92
    invoke-virtual {v0}, Lcom/zarinet/netcontrol/account/RsubPlan;->getPrice()D

    move-result-wide v0

    :goto_96
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zarinet/netcontrol/account/RsubPlan;

    iget-object v3, p0, Lcom/zarinet/netcontrol/ui/screens/RadiusPlanCardsKt$RadiusPlanCards$$inlined$sortedBy$1;->$ex$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubPlan;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zarinet/netcontrol/ui/screens/PlanX;

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Lcom/zarinet/netcontrol/ui/screens/PlanX;->getUsd()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_bf

    :cond_bb
    invoke-virtual {v2}, Lcom/zarinet/netcontrol/account/RsubPlan;->getPrice()D

    move-result-wide v2

    :goto_bf
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_96

    :cond_c4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    .line 103
    :cond_cf
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_d5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method
