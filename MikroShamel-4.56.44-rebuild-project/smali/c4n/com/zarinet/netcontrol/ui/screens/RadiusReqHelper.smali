.class public final Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;
.super Ljava/lang/Object;
.source "RadiusReqHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadiusReqHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadiusReqHelper.kt\ncom/zarinet/netcontrol/ui/screens/RadiusReqHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0007J*\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0007"
    }
    d2 = {
        "Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;",
        "",
        "<init>",
        "()V",
        "planMissing",
        "",
        "ctx",
        "Landroid/content/Context;",
        "plan",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/zarinet/netcontrol/account/RsubPlan;",
        "text",
        "",
        "email",
        "network",
        "code"
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

.field public static final INSTANCE:Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;

    invoke-direct {v0}, Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;-><init>()V

    sput-object v0, Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;->INSTANCE:Lcom/zarinet/netcontrol/ui/screens/RadiusReqHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final planMissing(Landroid/content/Context;Landroidx/compose/runtime/MutableState;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/zarinet/netcontrol/account/RsubPlan;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_12
    const-string p1, "\u0627\u062e\u062a\u0631 \u0627\u0644\u0628\u0627\u0642\u0629 \u0623\u0648\u0644\u0627\u064b \u2014 \u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u0628\u0627\u0642\u0629 \u0625\u062c\u0628\u0627\u0631\u064a"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/zarinet/netcontrol/ui/components/LocalizedTextKt;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public static final text(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "radius_req"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 21
    const-string v0, "plan"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    .line 22
    :goto_2c
    const-string v2, "phone"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_41

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    move-object v8, p0

    goto :goto_42

    :cond_41
    move-object v8, v1

    .line 23
    :goto_42
    sget-object v3, Lcom/zarinet/netcontrol/account/RadiusAccess;->INSTANCE:Lcom/zarinet/netcontrol/account/RadiusAccess;

    if-nez v0, :cond_48

    const-string v0, "\u0644\u0645 \u062a\u064f\u062d\u062f\u062f"

    :cond_48
    move-object v9, v0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/zarinet/netcontrol/account/RadiusAccess;->whatsappText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
