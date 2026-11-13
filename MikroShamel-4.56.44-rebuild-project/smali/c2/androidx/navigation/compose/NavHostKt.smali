.class public final Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "NavHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 NavController.kt\nandroidx/navigation/NavControllerKt\n+ 4 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilderKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,779:1\n1225#2,3:780\n1228#2,3:785\n1225#2,3:788\n1228#2,3:793\n1225#2,3:796\n1228#2,3:801\n1225#2,3:804\n1228#2,3:809\n1225#2,3:812\n1228#2,3:817\n1225#2,6:822\n1225#2,6:828\n1225#2,6:834\n1225#2,6:840\n1225#2,6:846\n1225#2,6:852\n1225#2,6:858\n1225#2,6:864\n1225#2,6:870\n1225#2,6:876\n1225#2,6:882\n1225#2,6:888\n1225#2,6:894\n1225#2,6:900\n1225#2,6:906\n2892#3:783\n2892#3:791\n2892#3:799\n2909#3:807\n2926#3:815\n59#4:784\n59#4:792\n59#4:800\n77#4:808\n95#4:816\n77#5:820\n146#6:821\n146#6:912\n81#7:913\n81#7:917\n107#7,2:918\n81#7:920\n81#7:921\n79#8:914\n112#8,2:915\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/compose/NavHostKt\n*L\n94#1:780,3\n94#1:785,3\n146#1:788,3\n146#1:793,3\n214#1:796,3\n214#1:801,3\n286#1:804,3\n286#1:809,3\n358#1:812,3\n358#1:817,3\n512#1:822,6\n513#1:828,6\n514#1:834,6\n541#1:840,6\n552#1:846,6\n562#1:852,6\n565#1:858,6\n579#1:864,6\n595#1:870,6\n603#1:876,6\n609#1:882,6\n619#1:888,6\n624#1:894,6\n657#1:900,6\n709#1:906,6\n95#1:783\n147#1:791\n215#1:799\n287#1:807\n359#1:815\n95#1:784\n147#1:792\n215#1:800\n287#1:808\n359#1:816\n493#1:820\n507#1:821\n728#1:912\n510#1:913\n513#1:917\n513#1:918,2\n549#1:920\n552#1:921\n512#1:914\n512#1:915,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008\u001a\u00f3\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0018\u001a\u00b5\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\u0019\u001a\u00bb\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\u001d\u0008\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\u0008\u00030!\u00a2\u0006\u0002\u0008\u00100\u001f2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010$\u001a\u0098\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010&\u001a\u00da\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u001f\u0008\u0002\u0010\u000b\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0012\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0014\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u00112\u001f\u0008\u0002\u0010\u0015\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010\'\u001aL\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020%2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010%2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010(\u001a\u00bf\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001d2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\u001d\u0008\u0002\u0010\u001e\u001a\u0017\u0012\u0004\u0012\u00020 \u0012\r\u0012\u000b\u0012\u0002\u0008\u00030!\u00a2\u0006\u0002\u0008\u00100\u001f2$\u0008\u0002\u0010\u000b\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0012\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0014\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112$\u0008\u0002\u0010\u0015\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u00112\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u0011H\u0007\u00a2\u0006\u0002\u0010)\u001a\u001c\u0010*\u001a\u0004\u0018\u00010\u000f*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010-\u001a\u0004\u0018\u00010\u0013*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010.\u001a\u0004\u0018\u00010\u000f*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u0010/\u001a\u0004\u0018\u00010\u0013*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u001a\u001c\u00100\u001a\u0004\u0018\u00010\u0017*\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u00a8\u00061\u00b2\u0006\u0010\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002\u00b2\u0006\n\u00104\u001a\u000205X\u008a\u008e\u0002\u00b2\u0006\n\u00106\u001a\u000207X\u008a\u008e\u0002\u00b2\u0006\u0010\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002\u00b2\u0006\u0010\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000e03X\u008a\u0084\u0002"
    }
    d2 = {
        "NavHost",
        "",
        "navController",
        "Landroidx/navigation/NavHostController;",
        "graph",
        "Landroidx/navigation/NavGraph;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "contentAlignment",
        "Landroidx/compose/ui/Alignment;",
        "enterTransition",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lkotlin/ExtensionFunctionType;",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "popEnterTransition",
        "popExitTransition",
        "sizeTransform",
        "Landroidx/compose/animation/SizeTransform;",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "startDestination",
        "",
        "route",
        "Lkotlin/reflect/KClass;",
        "typeMap",
        "",
        "Lkotlin/reflect/KType;",
        "Landroidx/navigation/NavType;",
        "builder",
        "Landroidx/navigation/NavGraphBuilder;",
        "(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "createEnterTransition",
        "Landroidx/navigation/NavDestination;",
        "scope",
        "createExitTransition",
        "createPopEnterTransition",
        "createPopExitTransition",
        "createSizeTransform",
        "navigation-compose_release",
        "currentBackStack",
        "",
        "progress",
        "",
        "inPredictiveBack",
        "",
        "allVisibleEntries",
        "visibleEntries"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .registers 24
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    move/from16 v4, p4

    const v0, -0x390ae240    # -31374.875f

    move-object/from16 v1, p3

    .line 393
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(NavHost)P(2)392@15641L39:NavHost.kt#opm8kd"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_1a

    or-int/lit8 v2, v4, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_2e

    :cond_1a
    and-int/lit8 v2, v4, 0x6

    if-nez v2, :cond_2b

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x4

    goto :goto_29

    :cond_28
    const/4 v3, 0x2

    :goto_29
    or-int/2addr v3, v4

    goto :goto_2e

    :cond_2b
    move-object/from16 v2, p0

    move v3, v4

    :goto_2e
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_37

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v15, p1

    goto :goto_49

    :cond_37
    and-int/lit8 v5, v4, 0x30

    move-object/from16 v15, p1

    if-nez v5, :cond_49

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/16 v5, 0x20

    goto :goto_48

    :cond_46
    const/16 v5, 0x10

    :goto_48
    or-int/2addr v3, v5

    :cond_49
    :goto_49
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_50

    or-int/lit16 v3, v3, 0x180

    goto :goto_63

    :cond_50
    and-int/lit16 v6, v4, 0x180

    if-nez v6, :cond_63

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const/16 v7, 0x100

    goto :goto_61

    :cond_5f
    const/16 v7, 0x80

    :goto_61
    or-int/2addr v3, v7

    goto :goto_65

    :cond_63
    :goto_63
    move-object/from16 v6, p2

    :goto_65
    and-int/lit16 v7, v3, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_77

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_72

    goto :goto_77

    :cond_72
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v6

    goto :goto_ae

    :cond_77
    :goto_77
    if-eqz v5, :cond_80

    .line 392
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v5

    goto :goto_82

    :cond_80
    move-object/from16 v17, v6

    :goto_82
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_8e

    const/4 v5, -0x1

    const-string v6, "androidx.navigation.compose.NavHost (NavHost.kt:392)"

    .line 393
    invoke-static {v0, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_8e
    and-int/lit16 v0, v3, 0x3fe

    const/16 v16, 0x1f8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v17

    move-object v14, v1

    move v15, v0

    invoke-static/range {v5 .. v16}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_ac
    move-object/from16 v3, v17

    :goto_ae
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_c7

    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$19;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/NavHostKt$NavHost$19;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;II)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c7
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .registers 34
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports sizeTransform"
    .end annotation

    move/from16 v9, p9

    move/from16 v10, p10

    const v0, -0x6c5f682b

    move-object/from16 v1, p8

    .line 431
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(NavHost)P(5,3,4)431@17424L199:NavHost.kt#opm8kd"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_1c

    or-int/lit8 v2, v9, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_30

    :cond_1c
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_2d

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x2

    :goto_2b
    or-int/2addr v3, v9

    goto :goto_30

    :cond_2d
    move-object/from16 v2, p0

    move v3, v9

    :goto_30
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_37

    or-int/lit8 v3, v3, 0x30

    goto :goto_4a

    :cond_37
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_4a

    move-object/from16 v4, p1

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/16 v5, 0x20

    goto :goto_48

    :cond_46
    const/16 v5, 0x10

    :goto_48
    or-int/2addr v3, v5

    goto :goto_4c

    :cond_4a
    :goto_4a
    move-object/from16 v4, p1

    :goto_4c
    and-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_53

    or-int/lit16 v3, v3, 0x180

    goto :goto_66

    :cond_53
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_66

    move-object/from16 v6, p2

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    const/16 v7, 0x100

    goto :goto_64

    :cond_62
    const/16 v7, 0x80

    :goto_64
    or-int/2addr v3, v7

    goto :goto_68

    :cond_66
    :goto_66
    move-object/from16 v6, p2

    :goto_68
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_6f

    or-int/lit16 v3, v3, 0xc00

    goto :goto_82

    :cond_6f
    and-int/lit16 v8, v9, 0xc00

    if-nez v8, :cond_82

    move-object/from16 v8, p3

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    const/16 v11, 0x800

    goto :goto_80

    :cond_7e
    const/16 v11, 0x400

    :goto_80
    or-int/2addr v3, v11

    goto :goto_84

    :cond_82
    :goto_82
    move-object/from16 v8, p3

    :goto_84
    and-int/lit8 v11, v10, 0x10

    if-eqz v11, :cond_8b

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9e

    :cond_8b
    and-int/lit16 v12, v9, 0x6000

    if-nez v12, :cond_9e

    move-object/from16 v12, p4

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9a

    const/16 v13, 0x4000

    goto :goto_9c

    :cond_9a
    const/16 v13, 0x2000

    :goto_9c
    or-int/2addr v3, v13

    goto :goto_a0

    :cond_9e
    :goto_9e
    move-object/from16 v12, p4

    :goto_a0
    and-int/lit8 v13, v10, 0x20

    const/high16 v14, 0x30000

    if-eqz v13, :cond_a8

    or-int/2addr v3, v14

    goto :goto_ba

    :cond_a8
    and-int/2addr v14, v9

    if-nez v14, :cond_ba

    move-object/from16 v14, p5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b6

    const/high16 v15, 0x20000

    goto :goto_b8

    :cond_b6
    const/high16 v15, 0x10000

    :goto_b8
    or-int/2addr v3, v15

    goto :goto_bc

    :cond_ba
    :goto_ba
    move-object/from16 v14, p5

    :goto_bc
    const/high16 v15, 0x180000

    and-int/2addr v15, v9

    if-nez v15, :cond_d7

    and-int/lit8 v15, v10, 0x40

    if-nez v15, :cond_d0

    move-object/from16 v15, p6

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d2

    const/high16 v16, 0x100000

    goto :goto_d4

    :cond_d0
    move-object/from16 v15, p6

    :cond_d2
    const/high16 v16, 0x80000

    :goto_d4
    or-int v3, v3, v16

    goto :goto_d9

    :cond_d7
    move-object/from16 v15, p6

    :goto_d9
    const/high16 v16, 0xc00000

    and-int v16, v9, v16

    if-nez v16, :cond_f5

    and-int/lit16 v0, v10, 0x80

    if-nez v0, :cond_ee

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f0

    const/high16 v17, 0x800000

    goto :goto_f2

    :cond_ee
    move-object/from16 v0, p7

    :cond_f0
    const/high16 v17, 0x400000

    :goto_f2
    or-int v3, v3, v17

    goto :goto_f7

    :cond_f5
    move-object/from16 v0, p7

    :goto_f7
    const v17, 0x492493

    and-int v0, v3, v17

    const v2, 0x492492

    if-ne v0, v2, :cond_113

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_108

    goto :goto_113

    .line 442
    :cond_108
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v11, p7

    move-object v3, v6

    move-object v5, v12

    move-object v6, v14

    move-object v7, v15

    goto/16 :goto_1a6

    .line 431
    :cond_113
    :goto_113
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v9, 0x1

    const v2, -0x1c00001

    const v17, -0x380001

    if-eqz v0, :cond_13c

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_127

    goto :goto_13c

    .line 430
    :cond_127
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_130

    and-int v3, v3, v17

    :cond_130
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_135

    and-int/2addr v3, v2

    :cond_135
    move-object/from16 v5, p7

    move v7, v3

    move-object v0, v12

    move-object v2, v14

    :goto_13a
    move-object v3, v15

    goto :goto_16b

    :cond_13c
    :goto_13c
    if-eqz v5, :cond_143

    .line 419
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v6, v0

    :cond_143
    if-eqz v7, :cond_14c

    .line 420
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move-object v8, v0

    :cond_14c
    if-eqz v11, :cond_153

    .line 421
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$20;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$20;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v12, v0

    :cond_153
    if-eqz v13, :cond_15a

    .line 424
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$21;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$21;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object v14, v0

    :cond_15a
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_161

    and-int v3, v3, v17

    move-object v15, v12

    :cond_161
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_135

    and-int/2addr v3, v2

    move v7, v3

    move-object v0, v12

    move-object v2, v14

    move-object v5, v2

    goto :goto_13a

    .line 430
    :goto_16b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_17d

    const/4 v11, -0x1

    const-string v12, "androidx.navigation.compose.NavHost (NavHost.kt:430)"

    const v13, -0x6c5f682b

    .line 431
    invoke-static {v13, v7, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_17d
    const v11, 0x1fffffe

    and-int v21, v7, v11

    const/16 v22, 0x100

    const/16 v19, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object v14, v8

    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v20, v1

    .line 432
    invoke-static/range {v11 .. v22}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_1a1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a1
    move-object v7, v3

    move-object v11, v5

    move-object v3, v6

    move-object v5, v0

    move-object v6, v2

    .line 442
    :goto_1a6
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_1c1

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$22;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v8

    move-object v8, v11

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$NavHost$22;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1c1
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Landroidx/navigation/NavGraph;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x751a66d8

    move-object/from16 v2, p9

    .line 491
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(NavHost)P(5,3,4)492@19706L7,*494@19790L7,509@20395L16,511@20433L36,512@20498L34,513@20586L987,513@20537L1036,540@21612L138,540@21579L171,546@21782L29,548@21871L16,551@21976L186,561@22257L42,731@30483L27:NavHost.kt#opm8kd"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_1b

    or-int/lit8 v3, v10, 0x6

    goto :goto_2b

    :cond_1b
    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2a

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x4

    goto :goto_28

    :cond_27
    const/4 v3, 0x2

    :goto_28
    or-int/2addr v3, v10

    goto :goto_2b

    :cond_2a
    move v3, v10

    :goto_2b
    and-int/lit8 v5, v11, 0x2

    if-eqz v5, :cond_32

    or-int/lit8 v3, v3, 0x30

    goto :goto_45

    :cond_32
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_45

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v6, 0x20

    goto :goto_43

    :cond_41
    const/16 v6, 0x10

    :goto_43
    or-int/2addr v3, v6

    goto :goto_47

    :cond_45
    :goto_45
    move-object/from16 v5, p1

    :goto_47
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_4e

    or-int/lit16 v3, v3, 0x180

    goto :goto_61

    :cond_4e
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_61

    move-object/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    const/16 v8, 0x100

    goto :goto_5f

    :cond_5d
    const/16 v8, 0x80

    :goto_5f
    or-int/2addr v3, v8

    goto :goto_63

    :cond_61
    :goto_61
    move-object/from16 v7, p2

    :goto_63
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_6a

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7d

    :cond_6a
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_7d

    move-object/from16 v9, p3

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_79

    const/16 v12, 0x800

    goto :goto_7b

    :cond_79
    const/16 v12, 0x400

    :goto_7b
    or-int/2addr v3, v12

    goto :goto_7f

    :cond_7d
    :goto_7d
    move-object/from16 v9, p3

    :goto_7f
    and-int/lit8 v12, v11, 0x10

    if-eqz v12, :cond_86

    or-int/lit16 v3, v3, 0x6000

    goto :goto_99

    :cond_86
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_99

    move-object/from16 v13, p4

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_95

    const/16 v14, 0x4000

    goto :goto_97

    :cond_95
    const/16 v14, 0x2000

    :goto_97
    or-int/2addr v3, v14

    goto :goto_9b

    :cond_99
    :goto_99
    move-object/from16 v13, p4

    :goto_9b
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_a3

    or-int/2addr v3, v15

    goto :goto_b6

    :cond_a3
    and-int/2addr v15, v10

    if-nez v15, :cond_b6

    move-object/from16 v15, p5

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b1

    const/high16 v16, 0x20000

    goto :goto_b3

    :cond_b1
    const/high16 v16, 0x10000

    :goto_b3
    or-int v3, v3, v16

    goto :goto_b8

    :cond_b6
    :goto_b6
    move-object/from16 v15, p5

    :goto_b8
    const/high16 v16, 0x180000

    and-int v17, v10, v16

    if-nez v17, :cond_d2

    and-int/lit8 v17, v11, 0x40

    move-object/from16 v4, p6

    if-nez v17, :cond_cd

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cd

    const/high16 v18, 0x100000

    goto :goto_cf

    :cond_cd
    const/high16 v18, 0x80000

    :goto_cf
    or-int v3, v3, v18

    goto :goto_d4

    :cond_d2
    move-object/from16 v4, p6

    :goto_d4
    const/high16 v18, 0xc00000

    and-int v19, v10, v18

    if-nez v19, :cond_f0

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_e9

    move-object/from16 v0, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_eb

    const/high16 v21, 0x800000

    goto :goto_ed

    :cond_e9
    move-object/from16 v0, p7

    :cond_eb
    const/high16 v21, 0x400000

    :goto_ed
    or-int v3, v3, v21

    goto :goto_f2

    :cond_f0
    move-object/from16 v0, p7

    :goto_f2
    and-int/lit16 v0, v11, 0x100

    const/high16 v21, 0x6000000

    if-eqz v0, :cond_fd

    or-int v3, v3, v21

    move-object/from16 v4, p8

    goto :goto_110

    :cond_fd
    and-int v21, v10, v21

    move-object/from16 v4, p8

    if-nez v21, :cond_110

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10c

    const/high16 v21, 0x4000000

    goto :goto_10e

    :cond_10c
    const/high16 v21, 0x2000000

    :goto_10e
    or-int v3, v3, v21

    :cond_110
    :goto_110
    const v21, 0x2492493

    and-int v4, v3, v21

    const v5, 0x2492492

    if-ne v4, v5, :cond_131

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_121

    goto :goto_131

    .line 733
    :cond_121
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p7

    move-object v10, v1

    move-object v3, v7

    move-object v4, v9

    move-object v5, v13

    move-object v6, v15

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    goto/16 :goto_67b

    .line 491
    :cond_131
    :goto_131
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v10, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_15e

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_140

    goto :goto_15e

    .line 490
    :cond_140
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_14b

    const v0, -0x380001

    and-int/2addr v3, v0

    :cond_14b
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_153

    const v0, -0x1c00001

    and-int/2addr v3, v0

    :cond_153
    move-object/from16 v14, p8

    move-object v4, v7

    move-object v6, v9

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v9, p6

    move-object/from16 v15, p7

    goto :goto_1a5

    :cond_15e
    :goto_15e
    if-eqz v6, :cond_165

    .line 465
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_166

    :cond_165
    move-object v4, v7

    :goto_166
    if-eqz v8, :cond_16f

    .line 466
    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v6

    goto :goto_170

    :cond_16f
    move-object v6, v9

    :goto_170
    if-eqz v12, :cond_177

    .line 470
    sget-object v7, Landroidx/navigation/compose/NavHostKt$NavHost$23;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$23;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    goto :goto_178

    :cond_177
    move-object v7, v13

    :goto_178
    if-eqz v14, :cond_17f

    .line 476
    sget-object v8, Landroidx/navigation/compose/NavHostKt$NavHost$24;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$24;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    goto :goto_180

    :cond_17f
    move-object v8, v15

    :goto_180
    and-int/lit8 v9, v11, 0x40

    if-eqz v9, :cond_18b

    const v9, -0x380001

    and-int/2addr v3, v9

    move v9, v3

    move-object v3, v7

    goto :goto_18e

    :cond_18b
    move v9, v3

    move-object/from16 v3, p6

    :goto_18e
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_199

    const v12, -0x1c00001

    and-int/2addr v9, v12

    move v12, v9

    move-object v9, v8

    goto :goto_19c

    :cond_199
    move v12, v9

    move-object/from16 v9, p7

    :goto_19c
    if-eqz v0, :cond_1a0

    move-object v14, v5

    goto :goto_1a2

    :cond_1a0
    move-object/from16 v14, p8

    :goto_1a2
    move-object v15, v9

    move-object v9, v3

    move v3, v12

    .line 490
    :goto_1a5
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1b7

    const/4 v0, -0x1

    const-string v12, "androidx.navigation.compose.NavHost (NavHost.kt:490)"

    const v13, -0x751a66d8

    .line 491
    invoke-static {v13, v3, v0, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 493
    :cond_1b7
    invoke-static {}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v12, 0x789c5f52

    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    .line 820
    invoke-static {v2, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 493
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 495
    sget-object v12, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v13, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v12, v2, v13}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v12

    if-eqz v12, :cond_695

    .line 499
    invoke-interface {v12}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 502
    invoke-virtual/range {p0 .. p1}, Landroidx/navigation/NavHostController;->setGraph(Landroidx/navigation/NavGraph;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v12

    const-string v13, "composable"

    .line 821
    invoke-virtual {v12, v13}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v12

    .line 507
    instance-of v13, v12, Landroidx/navigation/compose/ComposeNavigator;

    if-eqz v13, :cond_1f4

    check-cast v12, Landroidx/navigation/compose/ComposeNavigator;

    move-object v13, v12

    goto :goto_1f5

    :cond_1f4
    move-object v13, v5

    :goto_1f5
    if-nez v13, :cond_221

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_200

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_200
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_220

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v15

    move-object v9, v14

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_220
    return-void

    .line 510
    :cond_221
    invoke-virtual {v13}, Landroidx/navigation/compose/ComposeNavigator;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v12, v5, v2, v10, v11}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    const v11, 0x26f085fe

    .line 512
    const-string v5, "CC(remember):NavHost.kt#9igjgp"

    invoke-static {v2, v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 822
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 823
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v11, v10, :cond_247

    const/4 v10, 0x0

    .line 512
    invoke-static {v10}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v11

    .line 825
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 512
    :cond_247
    check-cast v11, Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v10, 0x26f08e1c

    .line 513
    invoke-static {v2, v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 828
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 829
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v28, v6

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v10, v6, :cond_271

    const/4 v6, 0x0

    .line 513
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 p9, v4

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v10, v4, v6, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    .line 831
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_273

    :cond_271
    move-object/from16 p9, v4

    .line 513
    :goto_273
    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 514
    invoke-static {v12}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_285

    const/4 v4, 0x1

    goto :goto_286

    :cond_285
    const/4 v4, 0x0

    :goto_286
    const v6, 0x26f09cd5

    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    or-int v6, v6, v20

    move-object/from16 v29, v14

    .line 834
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v6, :cond_2a6

    .line 835
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v14, v6, :cond_2be

    .line 514
    :cond_2a6
    new-instance v6, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/4 v14, 0x0

    move-object/from16 p2, v6

    move-object/from16 p3, v13

    move-object/from16 p4, v12

    move-object/from16 p5, v11

    move-object/from16 p6, v10

    move-object/from16 p7, v14

    invoke-direct/range {p2 .. p7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 837
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 514
    :cond_2be
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v6, 0x0

    invoke-static {v4, v14, v2, v6, v6}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const v4, 0x26f119c4

    .line 541
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 840
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_2e4

    .line 841
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_2ef

    .line 541
    :cond_2e4
    new-instance v4, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;

    invoke-direct {v4, v1, v0}, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/LifecycleOwner;)V

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 843
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 541
    :cond_2ef
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v0, v6, v2, v4}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 547
    invoke-static {v2, v4}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v0

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v14, 0x0

    invoke-static {v6, v14, v2, v4, v1}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    const v1, 0x26f14774

    .line 552
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 846
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 847
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_326

    .line 553
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;

    invoke-direct {v1, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 849
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 552
    :cond_326
    check-cast v1, Landroidx/compose/runtime/State;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 560
    invoke-static {v1}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    const v6, 0x26f16a04

    .line 562
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 852
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 853
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v6, v14, :cond_351

    .line 562
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    .line 855
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 562
    :cond_351
    check-cast v6, Ljava/util/Map;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v14, 0x26f18efc

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v14, "564@22433L597,578@23128L597,594@23856L301,602@24190L146,602@24167L169,608@24368L348,615@24743L52,656@26717L1208,682@28002L1333,654@26649L2686,708@29408L861,708@29344L925"

    invoke-static {v2, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v4, :cond_613

    const v14, 0x26f1822f

    .line 565
    invoke-static {v2, v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    const/high16 v20, 0x380000

    and-int v20, v3, v20

    move-object/from16 p2, v0

    xor-int v0, v20, v16

    move-object/from16 p5, v6

    const/high16 v6, 0x100000

    if-le v0, v6, :cond_381

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_385

    :cond_381
    and-int v0, v3, v16

    if-ne v0, v6, :cond_387

    :cond_385
    const/4 v0, 0x1

    goto :goto_388

    :cond_387
    const/4 v0, 0x0

    :goto_388
    or-int/2addr v0, v14

    const v6, 0xe000

    and-int/2addr v6, v3

    const/16 v14, 0x4000

    if-ne v6, v14, :cond_393

    const/4 v6, 0x1

    goto :goto_394

    :cond_393
    const/4 v6, 0x0

    :goto_394
    or-int/2addr v0, v6

    .line 858
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_3a3

    .line 859
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_3ae

    .line 565
    :cond_3a3
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;

    invoke-direct {v0, v13, v9, v7, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 861
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 565
    :cond_3ae
    move-object v0, v6

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v6, 0x26f1d90f

    .line 579
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v3

    xor-int v14, v14, v18

    move-object/from16 v30, v9

    const/high16 v9, 0x800000

    if-le v14, v9, :cond_3cf

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3d3

    :cond_3cf
    and-int v14, v3, v18

    if-ne v14, v9, :cond_3d5

    :cond_3d3
    const/4 v9, 0x1

    goto :goto_3d6

    :cond_3d5
    const/4 v9, 0x0

    :goto_3d6
    or-int/2addr v6, v9

    const/high16 v9, 0x70000

    and-int/2addr v9, v3

    const/high16 v14, 0x20000

    if-ne v9, v14, :cond_3e0

    const/4 v9, 0x1

    goto :goto_3e1

    :cond_3e0
    const/4 v9, 0x0

    :goto_3e1
    or-int/2addr v6, v9

    .line 864
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_3f0

    .line 865
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v9, v6, :cond_3fb

    .line 579
    :cond_3f0
    new-instance v6, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;

    invoke-direct {v6, v13, v15, v8, v10}, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 867
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 579
    :cond_3fb
    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v9, 0x26f232e7

    .line 595
    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v9, 0xe000000

    and-int/2addr v9, v3

    const/high16 v14, 0x4000000

    if-ne v9, v14, :cond_410

    const/4 v9, 0x1

    goto :goto_411

    :cond_410
    const/4 v9, 0x0

    .line 870
    :goto_411
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_424

    .line 871
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_420

    goto :goto_424

    :cond_420
    move-object v9, v14

    move-object/from16 v14, v29

    goto :goto_430

    .line 595
    :cond_424
    :goto_424
    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;

    move-object/from16 v14, v29

    invoke-direct {v9, v14}, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 873
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 595
    :goto_430
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object/from16 v29, v14

    const/16 v16, 0x1

    .line 603
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 p3, v15

    const v15, 0x26f25c0c

    invoke-static {v2, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v31, v8

    .line 876
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v15, :cond_459

    .line 877
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v8, v15, :cond_463

    .line 603
    :cond_459
    new-instance v8, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;

    invoke-direct {v8, v1, v13}, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 879
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 603
    :cond_463
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v15, 0x6

    invoke-static {v14, v8, v2, v15}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v8, 0x26f27316

    .line 609
    invoke-static {v2, v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 882
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 883
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v8, v14, :cond_486

    .line 613
    new-instance v8, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v8, v4}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 885
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 609
    :cond_486
    check-cast v8, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 616
    move-object v14, v8

    check-cast v14, Landroidx/compose/animation/core/TransitionState;

    sget v15, Landroidx/compose/animation/core/SeekableTransitionState;->$stable:I

    or-int/lit8 v15, v15, 0x30

    move-object/from16 v32, v7

    const-string v7, "entry"

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v14, v7, v2, v15, v3}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v7

    .line 618
    invoke-static {v10}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z

    move-result v3

    if-eqz v3, :cond_4ed

    const v3, -0x489d2ea8

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "618@24866L159,618@24841L184"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 619
    invoke-static {v11}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x26f2b099    # 1.683999E-15f

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v4, v14

    .line 888
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_4d3

    .line 889
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v14, v4, :cond_4df

    .line 619
    :cond_4d3
    new-instance v4, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;

    const/4 v14, 0x0

    invoke-direct {v4, v8, v12, v11, v14}, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 891
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 619
    :cond_4df
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v3, v14, v2, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 618
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v11, 0x0

    goto :goto_535

    :cond_4ed
    const v3, -0x48994a6b

    .line 623
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "623@25086L1532,623@25055L1563"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v3, 0x26f2d176

    .line 624
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v3, v11

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 894
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_51e

    .line 895
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v11, v3, :cond_51b

    goto :goto_51e

    :cond_51b
    move-object v3, v11

    const/4 v11, 0x0

    goto :goto_529

    .line 624
    :cond_51e
    :goto_51e
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    const/4 v11, 0x0

    invoke-direct {v3, v8, v4, v7, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 897
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 624
    :goto_529
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v8, 0x0

    invoke-static {v4, v3, v2, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 623
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_535
    const v3, 0x26f39c12

    .line 657
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move-object/from16 v3, p5

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 900
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_563

    .line 901
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v8, v4, :cond_57e

    .line 657
    :cond_563
    new-instance v4, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move-object/from16 v23, v0

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v1

    move-object/from16 v27, v10

    invoke-direct/range {v20 .. v27}, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;-><init>(Ljava/util/Map;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 903
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 657
    :cond_57e
    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 655
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$31;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$31;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 683
    new-instance v4, Landroidx/navigation/compose/NavHostKt$NavHost$32;

    move-object/from16 v6, p2

    invoke-direct {v4, v6, v10, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$32;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    const/16 v6, 0x36

    const v8, 0x30ebd9dc

    const/4 v9, 0x1

    invoke-static {v8, v9, v4, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v4, v16, 0x3

    and-int/lit8 v4, v4, 0x70

    const v6, 0x36000

    or-int/2addr v4, v6

    move/from16 v12, v16

    and-int/lit16 v6, v12, 0x1c00

    or-int v19, v4, v6

    const/16 v20, 0x0

    move-object v12, v7

    move-object v4, v13

    move-object/from16 v13, p9

    move-object/from16 v9, v29

    move-object/from16 v8, p3

    move-object/from16 v15, v28

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 655
    invoke-static/range {v12 .. v20}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 709
    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    const v10, 0x26f4eb17

    invoke-static {v2, v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v10, p0

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v5, v12

    .line 906
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_5ef

    .line 907
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v12, v5, :cond_609

    .line 709
    :cond_5ef
    new-instance v5, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    const/4 v12, 0x0

    move-object/from16 p2, v5

    move-object/from16 p3, v7

    move-object/from16 p4, p0

    move-object/from16 p5, v3

    move-object/from16 p6, v1

    move-object/from16 p7, v4

    move-object/from16 p8, v12

    invoke-direct/range {p2 .. p8}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Ljava/util/Map;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 909
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 709
    :cond_609
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x0

    invoke-static {v0, v6, v12, v2, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_61f

    :cond_613
    move-object/from16 v10, p0

    move-object/from16 v32, v7

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object v8, v15

    move-object/from16 v9, v29

    const/4 v11, 0x0

    :goto_61f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-string v1, "dialog"

    .line 912
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 728
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_634

    move-object v5, v0

    check-cast v5, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_635

    :cond_634
    move-object v5, v11

    :goto_635
    if-nez v5, :cond_664

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_640

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_640
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_663

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p9

    move-object/from16 v4, v28

    move-object/from16 v5, v32

    move-object/from16 v6, v31

    move-object/from16 v7, v30

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_663
    return-void

    :cond_664
    const/4 v0, 0x0

    .line 732
    invoke-static {v5, v2, v0}, Landroidx/navigation/compose/DialogHostKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_671

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_671
    move-object/from16 v3, p9

    move-object/from16 v4, v28

    move-object/from16 v7, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    .line 733
    :goto_67b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_694

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$34;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$34;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_694
    return-void

    .line 495
    :cond_695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p11

    move/from16 v15, p13

    move/from16 v11, p15

    const v0, -0x57fa4371

    move-object/from16 v1, p12

    .line 355
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(NavHost)P(5,10,4,1,8,11,2,3,6,7,9)357@14555L135,355@14515L352:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_1f

    or-int/lit8 v1, v15, 0x6

    goto :goto_2f

    :cond_1f
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2e

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x2

    :goto_2c
    or-int/2addr v1, v15

    goto :goto_2f

    :cond_2e
    move v1, v15

    :goto_2f
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_36

    or-int/lit8 v1, v1, 0x30

    goto :goto_46

    :cond_36
    and-int/lit8 v4, v15, 0x30

    if-nez v4, :cond_46

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v4, 0x20

    goto :goto_45

    :cond_43
    const/16 v4, 0x10

    :goto_45
    or-int/2addr v1, v4

    :cond_46
    :goto_46
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_4d

    or-int/lit16 v1, v1, 0x180

    goto :goto_60

    :cond_4d
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_60

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const/16 v8, 0x100

    goto :goto_5e

    :cond_5c
    const/16 v8, 0x80

    :goto_5e
    or-int/2addr v1, v8

    goto :goto_62

    :cond_60
    :goto_60
    move-object/from16 v7, p2

    :goto_62
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_69

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7d

    :cond_69
    and-int/lit16 v9, v15, 0xc00

    if-nez v9, :cond_7d

    move-object/from16 v9, p3

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_78

    const/16 v16, 0x800

    goto :goto_7a

    :cond_78
    const/16 v16, 0x400

    :goto_7a
    or-int v1, v1, v16

    goto :goto_7f

    :cond_7d
    :goto_7d
    move-object/from16 v9, p3

    :goto_7f
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_86

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9a

    :cond_86
    and-int/lit16 v2, v15, 0x6000

    if-nez v2, :cond_9a

    move-object/from16 v2, p4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    const/16 v17, 0x4000

    goto :goto_97

    :cond_95
    const/16 v17, 0x2000

    :goto_97
    or-int v1, v1, v17

    goto :goto_9c

    :cond_9a
    :goto_9a
    move-object/from16 v2, p4

    :goto_9c
    and-int/lit8 v17, v11, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_a7

    or-int v1, v1, v18

    move-object/from16 v3, p5

    goto :goto_ba

    :cond_a7
    and-int v18, v15, v18

    move-object/from16 v3, p5

    if-nez v18, :cond_ba

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b6

    const/high16 v19, 0x20000

    goto :goto_b8

    :cond_b6
    const/high16 v19, 0x10000

    :goto_b8
    or-int v1, v1, v19

    :cond_ba
    :goto_ba
    and-int/lit8 v19, v11, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_c5

    or-int v1, v1, v20

    move-object/from16 v5, p6

    goto :goto_d8

    :cond_c5
    and-int v20, v15, v20

    move-object/from16 v5, p6

    if-nez v20, :cond_d8

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d4

    const/high16 v21, 0x100000

    goto :goto_d6

    :cond_d4
    const/high16 v21, 0x80000

    :goto_d6
    or-int v1, v1, v21

    :cond_d8
    :goto_d8
    and-int/lit16 v6, v11, 0x80

    const/high16 v22, 0xc00000

    if-eqz v6, :cond_e3

    or-int v1, v1, v22

    move-object/from16 v0, p7

    goto :goto_f6

    :cond_e3
    and-int v22, v15, v22

    move-object/from16 v0, p7

    if-nez v22, :cond_f6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f2

    const/high16 v23, 0x800000

    goto :goto_f4

    :cond_f2
    const/high16 v23, 0x400000

    :goto_f4
    or-int v1, v1, v23

    :cond_f6
    :goto_f6
    const/high16 v23, 0x6000000

    and-int v23, v15, v23

    if-nez v23, :cond_112

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_10b

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10d

    const/high16 v23, 0x4000000

    goto :goto_10f

    :cond_10b
    move-object/from16 v0, p8

    :cond_10d
    const/high16 v23, 0x2000000

    :goto_10f
    or-int v1, v1, v23

    goto :goto_114

    :cond_112
    move-object/from16 v0, p8

    :goto_114
    const/high16 v23, 0x30000000

    and-int v23, v15, v23

    if-nez v23, :cond_130

    and-int/lit16 v0, v11, 0x200

    if-nez v0, :cond_129

    move-object/from16 v0, p9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12b

    const/high16 v23, 0x20000000

    goto :goto_12d

    :cond_129
    move-object/from16 v0, p9

    :cond_12b
    const/high16 v23, 0x10000000

    :goto_12d
    or-int v1, v1, v23

    goto :goto_132

    :cond_130
    move-object/from16 v0, p9

    :goto_132
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_13b

    or-int/lit8 v18, p14, 0x6

    move-object/from16 v2, p10

    goto :goto_151

    :cond_13b
    and-int/lit8 v23, p14, 0x6

    move-object/from16 v2, p10

    if-nez v23, :cond_14f

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14a

    const/16 v18, 0x4

    goto :goto_14c

    :cond_14a
    const/16 v18, 0x2

    :goto_14c
    or-int v18, p14, v18

    goto :goto_151

    :cond_14f
    move/from16 v18, p14

    :goto_151
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_158

    or-int/lit8 v18, v18, 0x30

    goto :goto_169

    :cond_158
    and-int/lit8 v2, p14, 0x30

    if-nez v2, :cond_169

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    const/16 v20, 0x20

    goto :goto_167

    :cond_165
    const/16 v20, 0x10

    :goto_167
    or-int v18, v18, v20

    :cond_169
    :goto_169
    move/from16 v2, v18

    const v18, 0x12492493

    and-int v3, v1, v18

    const v5, 0x12492492

    if-ne v3, v5, :cond_199

    and-int/lit8 v3, v2, 0x13

    const/16 v5, 0x12

    if-ne v3, v5, :cond_199

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_182

    goto :goto_199

    .line 369
    :cond_182
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object v3, v7

    move-object v4, v9

    move-object/from16 v27, v10

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    goto/16 :goto_2eb

    .line 355
    :cond_199
    :goto_199
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v15, 0x1

    const v5, -0x70000001

    const v18, -0xe000001

    if-eqz v3, :cond_1cf

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1ad

    goto :goto_1cf

    .line 353
    :cond_1ad
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_1b6

    and-int v1, v1, v18

    :cond_1b6
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_1bb

    and-int/2addr v1, v5

    :cond_1bb
    move-object/from16 v8, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v9, p4

    goto/16 :goto_23e

    :cond_1cf
    :goto_1cf
    if-eqz v4, :cond_1d6

    .line 326
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_1d7

    :cond_1d6
    move-object v3, v7

    :goto_1d7
    if-eqz v8, :cond_1e0

    .line 327
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    goto :goto_1e1

    :cond_1e0
    move-object v4, v9

    :goto_1e1
    if-eqz v16, :cond_1e5

    const/4 v8, 0x0

    goto :goto_1e7

    :cond_1e5
    move-object/from16 v8, p4

    :goto_1e7
    if-eqz v17, :cond_1ee

    .line 329
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    goto :goto_1f0

    :cond_1ee
    move-object/from16 v9, p5

    :goto_1f0
    if-eqz v19, :cond_1f7

    .line 333
    sget-object v16, Landroidx/navigation/compose/NavHostKt$NavHost$15;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$15;

    check-cast v16, Lkotlin/jvm/functions/Function1;

    goto :goto_1f9

    :cond_1f7
    move-object/from16 v16, p6

    :goto_1f9
    if-eqz v6, :cond_200

    .line 339
    sget-object v6, Landroidx/navigation/compose/NavHostKt$NavHost$16;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$16;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    goto :goto_202

    :cond_200
    move-object/from16 v6, p7

    :goto_202
    and-int/lit16 v7, v11, 0x100

    if-eqz v7, :cond_20c

    and-int v1, v1, v18

    move v7, v1

    move-object/from16 v1, v16

    goto :goto_20f

    :cond_20c
    move v7, v1

    move-object/from16 v1, p8

    :goto_20f
    move-object/from16 p3, v1

    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_21a

    and-int v1, v7, v5

    move v7, v1

    move-object v1, v6

    goto :goto_21c

    :cond_21a
    move-object/from16 v1, p9

    :goto_21c
    move-object/from16 v20, p3

    if-eqz v0, :cond_22c

    move-object/from16 v23, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move v1, v7

    move-object/from16 v18, v16

    const/16 v24, 0x0

    goto :goto_237

    :cond_22c
    move-object/from16 v24, p10

    move-object/from16 v23, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move v1, v7

    move-object/from16 v18, v16

    :goto_237
    move-object/from16 v16, v3

    move-object/from16 v29, v9

    move-object v9, v8

    move-object/from16 v8, v29

    .line 353
    :goto_23e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24f

    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:354)"

    const v3, -0x57fa4371

    .line 355
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24f
    const v0, 0x26eda7a1

    .line 357
    const-string v3, "CC(remember):NavHost.kt#9igjgp"

    .line 358
    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    and-int/lit8 v3, v2, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_268

    const/4 v3, 0x1

    goto :goto_269

    :cond_268
    const/4 v3, 0x0

    :goto_269
    or-int/2addr v0, v3

    .line 812
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_278

    .line 813
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_28e

    .line 359
    :cond_278
    move-object v0, v12

    check-cast v0, Landroidx/navigation/NavController;

    .line 815
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 816
    new-instance v3, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v3, v0, v13, v9, v8}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {v14, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 817
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 358
    :cond_28e
    check-cast v3, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v0, v1, 0x1f8e

    shr-int/lit8 v1, v1, 0x6

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x18

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int v21, v0, v1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v23

    move-object/from16 v25, v8

    move-object/from16 v8, v24

    move-object/from16 v26, v9

    move-object v9, v10

    move-object/from16 v27, v10

    move/from16 v10, v21

    move/from16 v11, v22

    .line 356
    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d9
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    .line 369
    :goto_2eb
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_313

    new-instance v16, Landroidx/navigation/compose/NavHostKt$NavHost$18;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p1

    move-object v13, v12

    move-object/from16 v12, p11

    move-object v14, v13

    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    move-object/from16 v28, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/navigation/compose/NavHostKt$NavHost$18;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_313
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .registers 39
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports sizeTransform"
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p9

    move/from16 v15, p11

    move/from16 v11, p12

    const v0, 0x1876b5e3

    move-object/from16 v1, p10

    .line 143
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(NavHost)P(5,9,4,1,8,2,3,6,7)145@6005L126,143@5965L320:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_1f

    or-int/lit8 v1, v15, 0x6

    goto :goto_2f

    :cond_1f
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2e

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x2

    :goto_2c
    or-int/2addr v1, v15

    goto :goto_2f

    :cond_2e
    move v1, v15

    :goto_2f
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_36

    or-int/lit8 v1, v1, 0x30

    goto :goto_46

    :cond_36
    and-int/lit8 v2, v15, 0x30

    if-nez v2, :cond_46

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/16 v2, 0x20

    goto :goto_45

    :cond_43
    const/16 v2, 0x10

    :goto_45
    or-int/2addr v1, v2

    :cond_46
    :goto_46
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_4d

    or-int/lit16 v1, v1, 0x180

    goto :goto_60

    :cond_4d
    and-int/lit16 v4, v15, 0x180

    if-nez v4, :cond_60

    move-object/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v5, 0x100

    goto :goto_5e

    :cond_5c
    const/16 v5, 0x80

    :goto_5e
    or-int/2addr v1, v5

    goto :goto_62

    :cond_60
    :goto_60
    move-object/from16 v4, p2

    :goto_62
    and-int/lit8 v5, v11, 0x8

    if-eqz v5, :cond_69

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7c

    :cond_69
    and-int/lit16 v6, v15, 0xc00

    if-nez v6, :cond_7c

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const/16 v7, 0x800

    goto :goto_7a

    :cond_78
    const/16 v7, 0x400

    :goto_7a
    or-int/2addr v1, v7

    goto :goto_7e

    :cond_7c
    :goto_7c
    move-object/from16 v6, p3

    :goto_7e
    and-int/lit8 v7, v11, 0x10

    if-eqz v7, :cond_85

    or-int/lit16 v1, v1, 0x6000

    goto :goto_99

    :cond_85
    and-int/lit16 v9, v15, 0x6000

    if-nez v9, :cond_99

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_94

    const/16 v16, 0x4000

    goto :goto_96

    :cond_94
    const/16 v16, 0x2000

    :goto_96
    or-int v1, v1, v16

    goto :goto_9b

    :cond_99
    :goto_99
    move-object/from16 v9, p4

    :goto_9b
    and-int/lit8 v16, v11, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_a6

    or-int v1, v1, v17

    move-object/from16 v3, p5

    goto :goto_b9

    :cond_a6
    and-int v17, v15, v17

    move-object/from16 v3, p5

    if-nez v17, :cond_b9

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b5

    const/high16 v17, 0x20000

    goto :goto_b7

    :cond_b5
    const/high16 v17, 0x10000

    :goto_b7
    or-int v1, v1, v17

    :cond_b9
    :goto_b9
    and-int/lit8 v17, v11, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_c4

    or-int v1, v1, v18

    move-object/from16 v8, p6

    goto :goto_d7

    :cond_c4
    and-int v18, v15, v18

    move-object/from16 v8, p6

    if-nez v18, :cond_d7

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d3

    const/high16 v19, 0x100000

    goto :goto_d5

    :cond_d3
    const/high16 v19, 0x80000

    :goto_d5
    or-int v1, v1, v19

    :cond_d7
    :goto_d7
    const/high16 v19, 0xc00000

    and-int v19, v15, v19

    if-nez v19, :cond_f3

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_ec

    move-object/from16 v0, p7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ee

    const/high16 v20, 0x800000

    goto :goto_f0

    :cond_ec
    move-object/from16 v0, p7

    :cond_ee
    const/high16 v20, 0x400000

    :goto_f0
    or-int v1, v1, v20

    goto :goto_f5

    :cond_f3
    move-object/from16 v0, p7

    :goto_f5
    const/high16 v20, 0x6000000

    and-int v20, v15, v20

    if-nez v20, :cond_111

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_10a

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10c

    const/high16 v20, 0x4000000

    goto :goto_10e

    :cond_10a
    move-object/from16 v0, p8

    :cond_10c
    const/high16 v20, 0x2000000

    :goto_10e
    or-int v1, v1, v20

    goto :goto_113

    :cond_111
    move-object/from16 v0, p8

    :goto_113
    and-int/lit16 v0, v11, 0x200

    const/high16 v20, 0x30000000

    if-eqz v0, :cond_11c

    or-int v1, v1, v20

    goto :goto_12c

    :cond_11c
    and-int v0, v15, v20

    if-nez v0, :cond_12c

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    const/high16 v0, 0x20000000

    goto :goto_12b

    :cond_129
    const/high16 v0, 0x10000000

    :goto_12b
    or-int/2addr v1, v0

    :cond_12c
    :goto_12c
    const v0, 0x12492493

    and-int/2addr v0, v1

    const v3, 0x12492492

    if-ne v0, v3, :cond_14d

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_13c

    goto :goto_14d

    .line 156
    :cond_13c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v4

    move-object v4, v6

    move-object v7, v8

    move-object v5, v9

    move-object/from16 v25, v10

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto/16 :goto_274

    .line 143
    :cond_14d
    :goto_14d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v3, -0xe000001

    const v21, -0x1c00001

    if-eqz v0, :cond_17c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_161

    goto :goto_17c

    .line 141
    :cond_161
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_16a

    and-int v1, v1, v21

    :cond_16a
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_16f

    and-int/2addr v1, v3

    :cond_16f
    move-object/from16 v21, p5

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    :goto_175
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    goto :goto_1c7

    :cond_17c
    :goto_17c
    if-eqz v2, :cond_183

    .line 129
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    :cond_183
    if-eqz v5, :cond_18c

    .line 130
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    move-object v6, v0

    :cond_18c
    if-eqz v7, :cond_190

    const/4 v0, 0x0

    move-object v9, v0

    :cond_190
    if-eqz v16, :cond_197

    .line 132
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$3;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_199

    :cond_197
    move-object/from16 v0, p5

    :goto_199
    if-eqz v17, :cond_1a0

    .line 135
    sget-object v2, Landroidx/navigation/compose/NavHostKt$NavHost$4;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$4;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v8, v2

    :cond_1a0
    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_1a9

    and-int v1, v1, v21

    move v2, v1

    move-object v1, v0

    goto :goto_1ac

    :cond_1a9
    move v2, v1

    move-object/from16 v1, p7

    :goto_1ac
    and-int/lit16 v5, v11, 0x100

    if-eqz v5, :cond_1bf

    and-int/2addr v2, v3

    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move v1, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v22

    goto :goto_1c7

    :cond_1bf
    move-object/from16 v24, p8

    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move v1, v2

    goto :goto_175

    .line 141
    :goto_1c7
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d9

    const/4 v0, -0x1

    const-string v2, "androidx.navigation.compose.NavHost (NavHost.kt:142)"

    const v3, 0x1876b5e3

    .line 143
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d9
    const v0, 0x26e97ad8

    .line 145
    const-string v2, "CC(remember):NavHost.kt#9igjgp"

    .line 146
    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0xe000

    and-int v2, v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x4000

    if-ne v2, v5, :cond_1ee

    move v2, v4

    goto :goto_1ef

    :cond_1ee
    move v2, v3

    :goto_1ef
    and-int/lit8 v5, v1, 0x70

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1f7

    move v5, v4

    goto :goto_1f8

    :cond_1f7
    move v5, v3

    :goto_1f8
    or-int/2addr v2, v5

    const/high16 v5, 0x70000000

    and-int/2addr v5, v1

    const/high16 v6, 0x20000000

    if-ne v5, v6, :cond_201

    move v3, v4

    :cond_201
    or-int/2addr v2, v3

    .line 788
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_210

    .line 789
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_226

    .line 147
    :cond_210
    move-object v2, v12

    check-cast v2, Landroidx/navigation/NavController;

    .line 791
    invoke-virtual {v2}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    .line 792
    new-instance v3, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v3, v2, v13, v9}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 793
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    :cond_226
    move-object v2, v3

    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v3, v1, 0x1f8e

    shr-int/lit8 v1, v1, 0x3

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v1, v3

    or-int v18, v0, v1

    const/16 v19, 0x100

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v20, v9

    move-object v9, v10

    move-object/from16 v25, v10

    move/from16 v10, v18

    move/from16 v11, v19

    .line 144
    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_266

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_266
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    .line 156
    :goto_274
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_293

    new-instance v16, Landroidx/navigation/compose/NavHostKt$NavHost$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p9

    move-object v13, v11

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt$NavHost$6;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_293
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p10

    move/from16 v15, p12

    move/from16 v11, p14

    const v0, 0x6daffdb6

    move-object/from16 v1, p11

    .line 211
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(NavHost)P(5,10,4,1,8,2,3,6,7,9)213@8656L126,211@8616L343:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_1f

    or-int/lit8 v1, v15, 0x6

    goto :goto_2f

    :cond_1f
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2e

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x2

    :goto_2c
    or-int/2addr v1, v15

    goto :goto_2f

    :cond_2e
    move v1, v15

    :goto_2f
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_36

    or-int/lit8 v1, v1, 0x30

    goto :goto_46

    :cond_36
    and-int/lit8 v4, v15, 0x30

    if-nez v4, :cond_46

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v4, 0x20

    goto :goto_45

    :cond_43
    const/16 v4, 0x10

    :goto_45
    or-int/2addr v1, v4

    :cond_46
    :goto_46
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_4d

    or-int/lit16 v1, v1, 0x180

    goto :goto_60

    :cond_4d
    and-int/lit16 v6, v15, 0x180

    if-nez v6, :cond_60

    move-object/from16 v6, p2

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    const/16 v7, 0x100

    goto :goto_5e

    :cond_5c
    const/16 v7, 0x80

    :goto_5e
    or-int/2addr v1, v7

    goto :goto_62

    :cond_60
    :goto_60
    move-object/from16 v6, p2

    :goto_62
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_69

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7c

    :cond_69
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_7c

    move-object/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_78

    const/16 v9, 0x800

    goto :goto_7a

    :cond_78
    const/16 v9, 0x400

    :goto_7a
    or-int/2addr v1, v9

    goto :goto_7e

    :cond_7c
    :goto_7c
    move-object/from16 v8, p3

    :goto_7e
    and-int/lit8 v9, v11, 0x10

    if-eqz v9, :cond_85

    or-int/lit16 v1, v1, 0x6000

    goto :goto_99

    :cond_85
    and-int/lit16 v5, v15, 0x6000

    if-nez v5, :cond_99

    move-object/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_94

    const/16 v17, 0x4000

    goto :goto_96

    :cond_94
    const/16 v17, 0x2000

    :goto_96
    or-int v1, v1, v17

    goto :goto_9b

    :cond_99
    :goto_99
    move-object/from16 v5, p4

    :goto_9b
    and-int/lit8 v17, v11, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_a6

    or-int v1, v1, v18

    move-object/from16 v2, p5

    goto :goto_b9

    :cond_a6
    and-int v18, v15, v18

    move-object/from16 v2, p5

    if-nez v18, :cond_b9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b5

    const/high16 v19, 0x20000

    goto :goto_b7

    :cond_b5
    const/high16 v19, 0x10000

    :goto_b7
    or-int v1, v1, v19

    :cond_b9
    :goto_b9
    and-int/lit8 v19, v11, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_c4

    or-int v1, v1, v20

    move-object/from16 v0, p6

    goto :goto_d7

    :cond_c4
    and-int v20, v15, v20

    move-object/from16 v0, p6

    if-nez v20, :cond_d7

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d3

    const/high16 v21, 0x100000

    goto :goto_d5

    :cond_d3
    const/high16 v21, 0x80000

    :goto_d5
    or-int v1, v1, v21

    :cond_d7
    :goto_d7
    const/high16 v21, 0xc00000

    and-int v21, v15, v21

    if-nez v21, :cond_f3

    and-int/lit16 v3, v11, 0x80

    if-nez v3, :cond_ec

    move-object/from16 v3, p7

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_ee

    const/high16 v22, 0x800000

    goto :goto_f0

    :cond_ec
    move-object/from16 v3, p7

    :cond_ee
    const/high16 v22, 0x400000

    :goto_f0
    or-int v1, v1, v22

    goto :goto_f5

    :cond_f3
    move-object/from16 v3, p7

    :goto_f5
    const/high16 v22, 0x6000000

    and-int v22, v15, v22

    if-nez v22, :cond_111

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_10a

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10c

    const/high16 v22, 0x4000000

    goto :goto_10e

    :cond_10a
    move-object/from16 v0, p8

    :cond_10c
    const/high16 v22, 0x2000000

    :goto_10e
    or-int v1, v1, v22

    goto :goto_113

    :cond_111
    move-object/from16 v0, p8

    :goto_113
    and-int/lit16 v0, v11, 0x200

    const/high16 v22, 0x30000000

    if-eqz v0, :cond_11e

    or-int v1, v1, v22

    move-object/from16 v2, p9

    goto :goto_131

    :cond_11e
    and-int v22, v15, v22

    move-object/from16 v2, p9

    if-nez v22, :cond_131

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12d

    const/high16 v22, 0x20000000

    goto :goto_12f

    :cond_12d
    const/high16 v22, 0x10000000

    :goto_12f
    or-int v1, v1, v22

    :cond_131
    :goto_131
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_138

    or-int/lit8 v2, p13, 0x6

    goto :goto_14a

    :cond_138
    and-int/lit8 v2, p13, 0x6

    if-nez v2, :cond_148

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    const/4 v2, 0x4

    goto :goto_145

    :cond_144
    const/4 v2, 0x2

    :goto_145
    or-int v2, p13, v2

    goto :goto_14a

    :cond_148
    move/from16 v2, p13

    :goto_14a
    const v22, 0x12492493

    and-int v3, v1, v22

    const v5, 0x12492492

    if-ne v3, v5, :cond_175

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_175

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_160

    goto :goto_175

    .line 225
    :cond_160
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v26, v10

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    goto/16 :goto_2bf

    .line 211
    :cond_175
    :goto_175
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v15, 0x1

    const v5, -0x1c00001

    if-eqz v3, :cond_1a8

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_186

    goto :goto_1a8

    .line 209
    :cond_186
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_18e

    and-int/2addr v1, v5

    :cond_18e
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_196

    const v0, -0xe000001

    and-int/2addr v1, v0

    :cond_196
    move-object/from16 v9, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move-object/from16 v17, v6

    move-object/from16 v19, v8

    goto/16 :goto_20d

    :cond_1a8
    :goto_1a8
    if-eqz v4, :cond_1af

    .line 183
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_1b0

    :cond_1af
    move-object v3, v6

    :goto_1b0
    if-eqz v7, :cond_1b9

    .line 184
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    goto :goto_1ba

    :cond_1b9
    move-object v4, v8

    :goto_1ba
    if-eqz v9, :cond_1be

    const/4 v7, 0x0

    goto :goto_1c0

    :cond_1be
    move-object/from16 v7, p4

    :goto_1c0
    if-eqz v17, :cond_1c7

    .line 189
    sget-object v8, Landroidx/navigation/compose/NavHostKt$NavHost$7;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$7;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    goto :goto_1c9

    :cond_1c7
    move-object/from16 v8, p5

    :goto_1c9
    if-eqz v19, :cond_1d0

    .line 195
    sget-object v9, Landroidx/navigation/compose/NavHostKt$NavHost$8;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$8;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    goto :goto_1d2

    :cond_1d0
    move-object/from16 v9, p6

    :goto_1d2
    and-int/lit16 v6, v11, 0x80

    if-eqz v6, :cond_1da

    and-int/2addr v1, v5

    move v5, v1

    move-object v1, v8

    goto :goto_1dd

    :cond_1da
    move v5, v1

    move-object/from16 v1, p7

    :goto_1dd
    and-int/lit16 v6, v11, 0x100

    if-eqz v6, :cond_1e8

    const v6, -0xe000001

    and-int/2addr v5, v6

    move v6, v5

    move-object v5, v9

    goto :goto_1eb

    :cond_1e8
    move v6, v5

    move-object/from16 v5, p8

    :goto_1eb
    if-eqz v0, :cond_1fd

    move-object/from16 v23, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move v1, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    const/16 v25, 0x0

    goto :goto_20c

    :cond_1fd
    move-object/from16 v25, p9

    move-object/from16 v23, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move v1, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    :goto_20c
    move-object v9, v7

    .line 209
    :goto_20d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21e

    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:210)"

    const v3, 0x6daffdb6

    .line 211
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_21e
    const v0, 0x26eac638

    .line 213
    const-string v3, "CC(remember):NavHost.kt#9igjgp"

    .line 214
    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, 0xe000

    and-int/2addr v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x4000

    if-ne v0, v5, :cond_232

    move v0, v4

    goto :goto_233

    :cond_232
    move v0, v3

    :goto_233
    and-int/lit8 v5, v1, 0x70

    const/16 v6, 0x20

    if-ne v5, v6, :cond_23b

    move v5, v4

    goto :goto_23c

    :cond_23b
    move v5, v3

    :goto_23c
    or-int/2addr v0, v5

    and-int/lit8 v2, v2, 0xe

    const/4 v5, 0x4

    if-ne v2, v5, :cond_243

    move v3, v4

    :cond_243
    or-int/2addr v0, v3

    .line 796
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_252

    .line 797
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_268

    .line 215
    :cond_252
    move-object v0, v12

    check-cast v0, Landroidx/navigation/NavController;

    .line 799
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 800
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v13, v9}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 801
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    :cond_268
    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v0, v1, 0x1f8e

    shr-int/lit8 v1, v1, 0x3

    const v3, 0xe000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v1

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int v16, v0, v1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v20, v9

    move-object v9, v10

    move-object/from16 v26, v10

    move/from16 v10, v16

    move/from16 v11, v18

    .line 212
    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2af

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2af
    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    .line 225
    :goto_2bf
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2e1

    new-instance v16, Landroidx/navigation/compose/NavHostKt$NavHost$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v11

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v15, v13

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/navigation/compose/NavHostKt$NavHost$10;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2e1
    return-void
.end method

.method public static final synthetic NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .registers 28
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of NavHost that supports AnimatedContent"
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move/from16 v15, p6

    const v0, 0x8741dc0

    move-object/from16 v1, p5

    .line 91
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(NavHost)P(2,4,1,3)93@3780L126,91@3740L190:NavHost.kt#opm8kd"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v15, 0x6

    goto :goto_2d

    :cond_1d
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2c

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x4

    goto :goto_2a

    :cond_29
    const/4 v1, 0x2

    :goto_2a
    or-int/2addr v1, v15

    goto :goto_2d

    :cond_2c
    move v1, v15

    :goto_2d
    and-int/lit8 v2, p7, 0x2

    const/16 v3, 0x20

    if-eqz v2, :cond_36

    or-int/lit8 v1, v1, 0x30

    goto :goto_45

    :cond_36
    and-int/lit8 v2, v15, 0x30

    if-nez v2, :cond_45

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v3

    goto :goto_44

    :cond_42
    const/16 v2, 0x10

    :goto_44
    or-int/2addr v1, v2

    :cond_45
    :goto_45
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_4c

    or-int/lit16 v1, v1, 0x180

    goto :goto_5f

    :cond_4c
    and-int/lit16 v4, v15, 0x180

    if-nez v4, :cond_5f

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/16 v5, 0x100

    goto :goto_5d

    :cond_5b
    const/16 v5, 0x80

    :goto_5d
    or-int/2addr v1, v5

    goto :goto_61

    :cond_5f
    :goto_5f
    move-object/from16 v4, p2

    :goto_61
    and-int/lit8 v5, p7, 0x8

    const/16 v6, 0x800

    if-eqz v5, :cond_6a

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7c

    :cond_6a
    and-int/lit16 v7, v15, 0xc00

    if-nez v7, :cond_7c

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    move v8, v6

    goto :goto_7a

    :cond_78
    const/16 v8, 0x400

    :goto_7a
    or-int/2addr v1, v8

    goto :goto_7e

    :cond_7c
    :goto_7c
    move-object/from16 v7, p3

    :goto_7e
    and-int/lit8 v8, p7, 0x10

    const/16 v9, 0x4000

    if-eqz v8, :cond_87

    or-int/lit16 v1, v1, 0x6000

    goto :goto_96

    :cond_87
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_96

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    move v8, v9

    goto :goto_95

    :cond_93
    const/16 v8, 0x2000

    :goto_95
    or-int/2addr v1, v8

    :cond_96
    :goto_96
    and-int/lit16 v8, v1, 0x2493

    const/16 v10, 0x2492

    if-ne v8, v10, :cond_ac

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_a3

    goto :goto_ac

    .line 99
    :cond_a3
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v4

    move-object v4, v7

    move-object/from16 v18, v11

    goto/16 :goto_13d

    :cond_ac
    :goto_ac
    if-eqz v2, :cond_b5

    .line 88
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v2

    goto :goto_b7

    :cond_b5
    move-object/from16 v16, v4

    :goto_b7
    if-eqz v5, :cond_bc

    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_bd

    :cond_bc
    move-object v10, v7

    .line 89
    :goto_bd
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_c9

    const/4 v2, -0x1

    const-string v4, "androidx.navigation.compose.NavHost (NavHost.kt:90)"

    .line 91
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c9
    const v0, 0x26e864b8

    .line 93
    const-string v2, "CC(remember):NavHost.kt#9igjgp"

    .line 94
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v0, v1, 0x1c00

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v6, :cond_d9

    move v0, v4

    goto :goto_da

    :cond_d9
    move v0, v2

    :goto_da
    and-int/lit8 v5, v1, 0x70

    if-ne v5, v3, :cond_e0

    move v3, v4

    goto :goto_e1

    :cond_e0
    move v3, v2

    :goto_e1
    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v1

    if-ne v3, v9, :cond_e9

    move v2, v4

    :cond_e9
    or-int/2addr v0, v2

    .line 780
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_f8

    .line 781
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_10e

    .line 95
    :cond_f8
    move-object v0, v12

    check-cast v0, Landroidx/navigation/NavController;

    .line 783
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 784
    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v13, v10}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 785
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 94
    :cond_10e
    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v9, v1, 0x38e

    const/16 v17, 0x1f8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v16

    move/from16 v18, v9

    move-object v9, v11

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    .line 92
    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_139
    move-object/from16 v3, v16

    move-object/from16 v4, v19

    .line 99
    :goto_13d
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_158

    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$2;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_158
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p11

    move/from16 v15, p13

    move/from16 v11, p15

    const v0, 0x2cbb3aae

    move-object/from16 v1, p12

    .line 283
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(NavHost)P(5,10,4,1,8,11,2,3,6,7,9)285@11603L135,283@11563L352:NavHost.kt#opm8kd"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_1f

    or-int/lit8 v1, v15, 0x6

    goto :goto_2f

    :cond_1f
    and-int/lit8 v1, v15, 0x6

    if-nez v1, :cond_2e

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x2

    :goto_2c
    or-int/2addr v1, v15

    goto :goto_2f

    :cond_2e
    move v1, v15

    :goto_2f
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_36

    or-int/lit8 v1, v1, 0x30

    goto :goto_46

    :cond_36
    and-int/lit8 v4, v15, 0x30

    if-nez v4, :cond_46

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/16 v4, 0x20

    goto :goto_45

    :cond_43
    const/16 v4, 0x10

    :goto_45
    or-int/2addr v1, v4

    :cond_46
    :goto_46
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_4d

    or-int/lit16 v1, v1, 0x180

    goto :goto_60

    :cond_4d
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_60

    move-object/from16 v7, p2

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    const/16 v8, 0x100

    goto :goto_5e

    :cond_5c
    const/16 v8, 0x80

    :goto_5e
    or-int/2addr v1, v8

    goto :goto_62

    :cond_60
    :goto_60
    move-object/from16 v7, p2

    :goto_62
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_69

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7d

    :cond_69
    and-int/lit16 v9, v15, 0xc00

    if-nez v9, :cond_7d

    move-object/from16 v9, p3

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_78

    const/16 v16, 0x800

    goto :goto_7a

    :cond_78
    const/16 v16, 0x400

    :goto_7a
    or-int v1, v1, v16

    goto :goto_7f

    :cond_7d
    :goto_7d
    move-object/from16 v9, p3

    :goto_7f
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_86

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9a

    :cond_86
    and-int/lit16 v2, v15, 0x6000

    if-nez v2, :cond_9a

    move-object/from16 v2, p4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    const/16 v17, 0x4000

    goto :goto_97

    :cond_95
    const/16 v17, 0x2000

    :goto_97
    or-int v1, v1, v17

    goto :goto_9c

    :cond_9a
    :goto_9a
    move-object/from16 v2, p4

    :goto_9c
    and-int/lit8 v17, v11, 0x20

    const/high16 v18, 0x30000

    if-eqz v17, :cond_a7

    or-int v1, v1, v18

    move-object/from16 v3, p5

    goto :goto_ba

    :cond_a7
    and-int v18, v15, v18

    move-object/from16 v3, p5

    if-nez v18, :cond_ba

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b6

    const/high16 v19, 0x20000

    goto :goto_b8

    :cond_b6
    const/high16 v19, 0x10000

    :goto_b8
    or-int v1, v1, v19

    :cond_ba
    :goto_ba
    and-int/lit8 v19, v11, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_c5

    or-int v1, v1, v20

    move-object/from16 v5, p6

    goto :goto_d8

    :cond_c5
    and-int v20, v15, v20

    move-object/from16 v5, p6

    if-nez v20, :cond_d8

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d4

    const/high16 v21, 0x100000

    goto :goto_d6

    :cond_d4
    const/high16 v21, 0x80000

    :goto_d6
    or-int v1, v1, v21

    :cond_d8
    :goto_d8
    and-int/lit16 v6, v11, 0x80

    const/high16 v22, 0xc00000

    if-eqz v6, :cond_e3

    or-int v1, v1, v22

    move-object/from16 v0, p7

    goto :goto_f6

    :cond_e3
    and-int v22, v15, v22

    move-object/from16 v0, p7

    if-nez v22, :cond_f6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f2

    const/high16 v23, 0x800000

    goto :goto_f4

    :cond_f2
    const/high16 v23, 0x400000

    :goto_f4
    or-int v1, v1, v23

    :cond_f6
    :goto_f6
    const/high16 v23, 0x6000000

    and-int v23, v15, v23

    if-nez v23, :cond_112

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_10b

    move-object/from16 v0, p8

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10d

    const/high16 v23, 0x4000000

    goto :goto_10f

    :cond_10b
    move-object/from16 v0, p8

    :cond_10d
    const/high16 v23, 0x2000000

    :goto_10f
    or-int v1, v1, v23

    goto :goto_114

    :cond_112
    move-object/from16 v0, p8

    :goto_114
    const/high16 v23, 0x30000000

    and-int v23, v15, v23

    if-nez v23, :cond_130

    and-int/lit16 v0, v11, 0x200

    if-nez v0, :cond_129

    move-object/from16 v0, p9

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12b

    const/high16 v23, 0x20000000

    goto :goto_12d

    :cond_129
    move-object/from16 v0, p9

    :cond_12b
    const/high16 v23, 0x10000000

    :goto_12d
    or-int v1, v1, v23

    goto :goto_132

    :cond_130
    move-object/from16 v0, p9

    :goto_132
    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_13b

    or-int/lit8 v18, p14, 0x6

    move-object/from16 v2, p10

    goto :goto_151

    :cond_13b
    and-int/lit8 v23, p14, 0x6

    move-object/from16 v2, p10

    if-nez v23, :cond_14f

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14a

    const/16 v18, 0x4

    goto :goto_14c

    :cond_14a
    const/16 v18, 0x2

    :goto_14c
    or-int v18, p14, v18

    goto :goto_151

    :cond_14f
    move/from16 v18, p14

    :goto_151
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_158

    or-int/lit8 v18, v18, 0x30

    goto :goto_169

    :cond_158
    and-int/lit8 v2, p14, 0x30

    if-nez v2, :cond_169

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    const/16 v20, 0x20

    goto :goto_167

    :cond_165
    const/16 v20, 0x10

    :goto_167
    or-int v18, v18, v20

    :cond_169
    :goto_169
    move/from16 v2, v18

    const v18, 0x12492493

    and-int v3, v1, v18

    const v5, 0x12492492

    if-ne v3, v5, :cond_199

    and-int/lit8 v3, v2, 0x13

    const/16 v5, 0x12

    if-ne v3, v5, :cond_199

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_182

    goto :goto_199

    .line 297
    :cond_182
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object v3, v7

    move-object v4, v9

    move-object/from16 v27, v10

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    goto/16 :goto_2eb

    .line 283
    :cond_199
    :goto_199
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v15, 0x1

    const v5, -0x70000001

    const v18, -0xe000001

    if-eqz v3, :cond_1cf

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1ad

    goto :goto_1cf

    .line 281
    :cond_1ad
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_1b6

    and-int v1, v1, v18

    :cond_1b6
    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_1bb

    and-int/2addr v1, v5

    :cond_1bb
    move-object/from16 v8, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v9, p4

    goto/16 :goto_23e

    :cond_1cf
    :goto_1cf
    if-eqz v4, :cond_1d6

    .line 254
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    goto :goto_1d7

    :cond_1d6
    move-object v3, v7

    :goto_1d7
    if-eqz v8, :cond_1e0

    .line 255
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    goto :goto_1e1

    :cond_1e0
    move-object v4, v9

    :goto_1e1
    if-eqz v16, :cond_1e5

    const/4 v8, 0x0

    goto :goto_1e7

    :cond_1e5
    move-object/from16 v8, p4

    :goto_1e7
    if-eqz v17, :cond_1ee

    .line 257
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    goto :goto_1f0

    :cond_1ee
    move-object/from16 v9, p5

    :goto_1f0
    if-eqz v19, :cond_1f7

    .line 261
    sget-object v16, Landroidx/navigation/compose/NavHostKt$NavHost$11;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$11;

    check-cast v16, Lkotlin/jvm/functions/Function1;

    goto :goto_1f9

    :cond_1f7
    move-object/from16 v16, p6

    :goto_1f9
    if-eqz v6, :cond_200

    .line 267
    sget-object v6, Landroidx/navigation/compose/NavHostKt$NavHost$12;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$12;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    goto :goto_202

    :cond_200
    move-object/from16 v6, p7

    :goto_202
    and-int/lit16 v7, v11, 0x100

    if-eqz v7, :cond_20c

    and-int v1, v1, v18

    move v7, v1

    move-object/from16 v1, v16

    goto :goto_20f

    :cond_20c
    move v7, v1

    move-object/from16 v1, p8

    :goto_20f
    move-object/from16 p3, v1

    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_21a

    and-int v1, v7, v5

    move v7, v1

    move-object v1, v6

    goto :goto_21c

    :cond_21a
    move-object/from16 v1, p9

    :goto_21c
    move-object/from16 v20, p3

    if-eqz v0, :cond_22c

    move-object/from16 v23, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move v1, v7

    move-object/from16 v18, v16

    const/16 v24, 0x0

    goto :goto_237

    :cond_22c
    move-object/from16 v24, p10

    move-object/from16 v23, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move v1, v7

    move-object/from16 v18, v16

    :goto_237
    move-object/from16 v16, v3

    move-object/from16 v29, v9

    move-object v9, v8

    move-object/from16 v8, v29

    .line 281
    :goto_23e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24f

    const-string v0, "androidx.navigation.compose.NavHost (NavHost.kt:282)"

    const v3, 0x2cbb3aae

    .line 283
    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24f
    const v0, 0x26ec36a1

    .line 285
    const-string v3, "CC(remember):NavHost.kt#9igjgp"

    .line 286
    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    and-int/lit8 v3, v2, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_268

    const/4 v3, 0x1

    goto :goto_269

    :cond_268
    const/4 v3, 0x0

    :goto_269
    or-int/2addr v0, v3

    .line 804
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_278

    .line 805
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_28e

    .line 287
    :cond_278
    move-object v0, v12

    check-cast v0, Landroidx/navigation/NavController;

    .line 807
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 808
    new-instance v3, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v3, v0, v13, v9, v8}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {v14, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 809
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 286
    :cond_28e
    check-cast v3, Landroidx/navigation/NavGraph;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit16 v0, v1, 0x1f8e

    shr-int/lit8 v1, v1, 0x6

    const v4, 0xe000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v1

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x18

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int v21, v0, v1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v23

    move-object/from16 v25, v8

    move-object/from16 v8, v24

    move-object/from16 v26, v9

    move-object v9, v10

    move-object/from16 v27, v10

    move/from16 v10, v21

    move/from16 v11, v22

    .line 284
    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2d9
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    move-object/from16 v5, v26

    .line 297
    :goto_2eb
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_313

    new-instance v16, Landroidx/navigation/compose/NavHostKt$NavHost$14;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p1

    move-object v13, v12

    move-object/from16 v12, p11

    move-object v14, v13

    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    move-object/from16 v28, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/navigation/compose/NavHostKt$NavHost$14;-><init>(Landroidx/navigation/NavHostController;Lkotlin/reflect/KClass;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_313
    return-void
.end method

.method private static final NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 513
    check-cast p0, Landroidx/compose/runtime/State;

    .line 917
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 513
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 918
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 920
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 921
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 913
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F
    .registers 1

    .line 512
    check-cast p0, Landroidx/compose/runtime/FloatState;

    .line 914
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private static final NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V
    .registers 2

    .line 915
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public static final synthetic access$NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$11(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$12(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$15(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$17(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$8(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->NavHost$lambda$9(Landroidx/compose/runtime/MutableFloatState;F)V

    return-void
.end method

.method public static final synthetic access$createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/navigation/compose/NavHostKt;->createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;

    move-result-object p0

    return-object p0
.end method

.method private static final createEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 739
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_28

    .line 740
    :cond_15
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_28

    check-cast p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    :cond_28
    :goto_28
    return-object v1
.end method

.method private static final createExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 748
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_28

    .line 749
    :cond_15
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_28

    check-cast p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    :cond_28
    :goto_28
    return-object v1
.end method

.method private static final createPopEnterTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/EnterTransition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .line 757
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    goto :goto_28

    .line 758
    :cond_15
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_28

    check-cast p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopEnterTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/EnterTransition;

    :cond_28
    :goto_28
    return-object v1
.end method

.method private static final createPopExitTransition(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ExitTransition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .line 766
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    goto :goto_28

    .line 767
    :cond_15
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_28

    check-cast p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getPopExitTransition$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/ExitTransition;

    :cond_28
    :goto_28
    return-object v1
.end method

.method private static final createSizeTransform(Landroidx/navigation/NavDestination;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/SizeTransform;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/compose/animation/SizeTransform;"
        }
    .end annotation

    .line 775
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;->getSizeTransform$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/SizeTransform;

    goto :goto_28

    .line 776
    :cond_15
    instance-of v0, p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz v0, :cond_28

    check-cast p0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->getSizeTransform$navigation_compose_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/animation/SizeTransform;

    :cond_28
    :goto_28
    return-object v1
.end method
