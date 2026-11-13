.class final Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;
.super Ljava/lang/Object;
.source "TgBot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# static fields
.field public static final INSTANCE:Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;

    invoke-direct {v0}, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;-><init>()V

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 206
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/zarinet/netcontrol/ui/screens/ComposableSingletons$TgBotKt$lambda-2$1;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .registers 33

    move/from16 v0, p3

    const-string v1, "$this$OutlinedButton"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x11

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1a

    .line 207
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_63

    :cond_1a
    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, -0x1

    const-string v2, "com.zarinet.netcontrol.ui.screens.ComposableSingletons$TgBotKt.lambda-2.<anonymous> (TgBot.kt:206)"

    const v3, 0x55976bff

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_29
    # getter for: Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->Teal:J
    invoke-static {}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->access$getTeal$p()J

    move-result-wide v6

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v11

    const/16 v27, 0x0

    const v28, 0x1ffda

    const-string v4, "\uff0b \u0625\u0636\u0627\u0641\u0629 \u062c\u0647\u0627\u0632 \u0628\u062b"

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v26, 0x30186

    move-object/from16 v25, p2

    invoke-static/range {v4 .. v28}, Lcom/zarinet/netcontrol/ui/screens/LocalizedTextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_63
    :goto_63
    return-void
.end method
