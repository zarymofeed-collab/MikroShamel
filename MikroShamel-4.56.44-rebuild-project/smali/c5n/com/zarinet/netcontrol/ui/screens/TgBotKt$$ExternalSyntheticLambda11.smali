.class public final synthetic Lcom/zarinet/netcontrol/ui/screens/TgBotKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$$ExternalSyntheticLambda11;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$$ExternalSyntheticLambda11;->f$1:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$$ExternalSyntheticLambda11;->f$0:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/zarinet/netcontrol/ui/screens/TgBotKt$$ExternalSyntheticLambda11;->f$1:Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/zarinet/netcontrol/ui/screens/TgBotKt;->$r8$lambda$bH7jPkNCyjQB45nRwlDYWW2ThOY(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
