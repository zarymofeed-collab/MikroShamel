.class public final Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;
.super Ljava/lang/Object;
.source "RadiusSubscriptionScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;

.field private static lambda-1:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;

    invoke-direct {v0}, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;-><init>()V

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;

    const/4 v0, 0x0

    .line 171
    sget-object v1, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt$lambda-1$1;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt$lambda-1$1;

    const v2, 0x36cea63

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$main()Lkotlin/jvm/functions/Function3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$RadiusSubscriptionScreenKt;->lambda-1:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
