.class final Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RadiusPlanCards.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.zarinet.netcontrol.ui.screens.PlanExtras"
    f = "RadiusPlanCards.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x44,
        0x48
    }
    m = "load"
    n = {
        "this",
        "$this$load_u24lambda_u241"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/zarinet/netcontrol/ui/screens/PlanExtras;


# direct methods
.method constructor <init>(Lcom/zarinet/netcontrol/ui/screens/PlanExtras;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zarinet/netcontrol/ui/screens/PlanExtras;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;->this$0:Lcom/zarinet/netcontrol/ui/screens/PlanExtras;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;->label:I

    iget-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/PlanExtras$load$1;->this$0:Lcom/zarinet/netcontrol/ui/screens/PlanExtras;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/zarinet/netcontrol/ui/screens/PlanExtras;->load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
