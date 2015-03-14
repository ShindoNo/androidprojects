.class public final Lcom/tapjoy/TapjoyConnectUnity;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Lcom/tapjoy/TJEventCallback;
.implements Lcom/tapjoy/TapjoyAwardPointsNotifier;
.implements Lcom/tapjoy/TapjoyDisplayAdNotifier;
.implements Lcom/tapjoy/TapjoyFullScreenAdNotifier;
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoySpendPointsNotifier;
.implements Lcom/tapjoy/TapjoyVideoNotifier;
.implements Lcom/tapjoy/TapjoyViewNotifier;


# static fields
.field private static final CONNECT_FLAG_DICTIONARY_NAME:Ljava/lang/String; = "connectFlags"

.field private static final SEGMENTATION_DICTIONARY_NAME:Ljava/lang/String; = "segmentationParams"

.field public static final TAPJOY_UNITY:Ljava/lang/String; = "TapjoyUnity"

.field private static activity:Landroid/app/Activity;

.field private static activityField:Ljava/lang/reflect/Field;

.field private static cSharpDictionaryRefs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static ctx:Landroid/content/Context;

.field private static displayAdView:Landroid/view/View;

.field private static displayAdX:I

.field private static displayAdY:I

.field private static earnedAmount:I

.field private static earnedCurrencyName:Ljava/lang/String;

.field private static eventRequestMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static guidMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static handler:Landroid/os/Handler;

.field private static handlerClassName:Ljava/lang/String;

.field private static linearLayout:Landroid/widget/LinearLayout;

.field static final mUpdateResults:Ljava/lang/Runnable;

.field static final removeDisplayAd:Ljava/lang/Runnable;

.field static final showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

.field private static tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

.field private static unityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private tapjoyPointTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    .line 38
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    .line 45
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    .line 46
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;

    .line 48
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    .line 55
    const-string v0, "Points"

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedCurrencyName:Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    .line 1261
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$26;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$26;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->mUpdateResults:Ljava/lang/Runnable;

    .line 1332
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$27;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$27;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->removeDisplayAd:Ljava/lang/Runnable;

    .line 1345
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$28;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$28;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    .line 217
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->onSuccess()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .prologue
    .line 35
    sput p0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    return p0
.end method

.method static synthetic access$400()Lcom/tapjoy/TapjoyConnect;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectUnity;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1565
    const/4 v2, 0x0

    .line 1567
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 1569
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1583
    :goto_0
    return-object v0

    .line 1580
    :cond_1
    const-string v0, "TapjoyUnity"

    const-string v1, "Cannot get the AndroidGuid, the guidmap is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    .line 1583
    goto :goto_0
.end method

.method public static getEarnedAmountTotal()I
    .locals 1

    .prologue
    .line 1058
    sget v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    return v0
.end method

.method public static getEarnedCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1067
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public static getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1176
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1177
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1178
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    :cond_0
    return-object v0
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnectUnity;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "TapjoyUnity"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v0, "TapjoyUnity"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "TapjoyUnity"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    return-object v0
.end method

.method private static onSuccess()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    .line 177
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$2;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectUnity$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 188
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 190
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 192
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "connectFlags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectUnity;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 80
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    .line 102
    :try_start_0
    sput-object p0, Lcom/tapjoy/TapjoyConnectUnity;->ctx:Landroid/content/Context;

    .line 103
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->unityClass:Ljava/lang/Class;

    .line 104
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->unityClass:Ljava/lang/Class;

    const-string v1, "currentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activityField:Ljava/lang/reflect/Field;

    .line 105
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activityField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->unityClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/TapjoyConnectUnity$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    :cond_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "TapjoyUnity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error getting Unity activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDictionaryInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1240
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1241
    if-nez v0, :cond_1

    .line 1242
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1243
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1247
    :goto_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1248
    if-nez v0, :cond_0

    .line 1250
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no dictionary reference by the name of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :goto_1
    return-void

    .line 1254
    :cond_0
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1100
    return-void
.end method

.method public static setHandlerClass(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1038
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandlerClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sput-object p0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    .line 1040
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;FLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1219
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1209
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1199
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1229
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    return-void
.end method

.method static updateResultsInUi()V
    .locals 10

    .prologue
    .line 1274
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1275
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1276
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1279
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1284
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1285
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1288
    if-ge v1, v3, :cond_1

    .line 1294
    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 1298
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1299
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1300
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1301
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1303
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 1306
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    mul-int/2addr v4, v1

    div-int v3, v4, v3

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1307
    sget-object v3, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1312
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1315
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v3, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    .line 1316
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnectUnity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyConnectUnity;->getDisplayAdX()I

    move-result v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnectUnity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyConnectUnity;->getDisplayAdY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1320
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1322
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v3, Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1326
    const-string v1, "TapjoyPluginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception adding display ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$9;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$9;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method

.method public appPause()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$4;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$4;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    :cond_0
    return-void
.end method

.method public appResume()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$5;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$5;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    return-void
.end method

.method public awardTapPoints(I)V
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$14;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$14;-><init>(Lcom/tapjoy/TapjoyConnectUnity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    :cond_0
    return-void
.end method

.method public cacheVideos()V
    .locals 2

    .prologue
    .line 683
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$23;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$23;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 693
    :cond_0
    return-void
.end method

.method public contentDidDisappear(Lcom/tapjoy/TJEvent;)V
    .locals 4

    .prologue
    .line 1407
    const-string v0, "TapjoyUnity"

    const-string v1, "contentDidDisappear"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "ContentDidDisappear"

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    return-void
.end method

.method public contentDidShow(Lcom/tapjoy/TJEvent;)V
    .locals 4

    .prologue
    .line 1400
    const-string v0, "TapjoyUnity"

    const-string v1, "contentDidShow"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "ContentDidAppear"

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-void
.end method

.method public contentIsReady(Lcom/tapjoy/TJEvent;I)V
    .locals 5

    .prologue
    .line 1386
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentIsReady - status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "ContentIsReady"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public createEventWithGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1435
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1437
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$29;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/tapjoy/TapjoyConnectUnity$29;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1450
    :cond_0
    return-void
.end method

.method public didRequestAction(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJEventRequest;)V
    .locals 3

    .prologue
    .line 1416
    const-string v0, "TapjoyUnity"

    const-string v1, "didRequestAction"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1419
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 1420
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;

    .line 1422
    :cond_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/tapjoy/TJEventRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/tapjoy/TJEventRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/tapjoy/TJEventRequest;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "DidRequestAction"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public enableDisplayAdAutoRefresh(Z)V
    .locals 2

    .prologue
    .line 597
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$19;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$19;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 607
    :cond_0
    return-void
.end method

.method public enableEventAutoPresent(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1494
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1496
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TapjoyConnectUnity$32;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1509
    :cond_0
    return-void
.end method

.method public enableEventPreload(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1512
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1513
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TapjoyConnectUnity$33;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1523
    :cond_0
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$7;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$7;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    :cond_0
    return-void
.end method

.method public eventRequestCancelled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1546
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1548
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$35;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$35;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1561
    :cond_0
    return-void
.end method

.method public eventRequestCompleted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1527
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1529
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$34;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$34;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1542
    :cond_0
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAwardPointsResponse(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 966
    iput p2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    .line 967
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsAwarded"

    iget v2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public getAwardPointsResponseFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 977
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsAwardError"

    const-string v2, "Error awarding Tap Points"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDisplayAd()V
    .locals 2

    .prologue
    .line 616
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 618
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$20;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$20;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 626
    :cond_0
    return-void
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 876
    const-string v0, "TapjoyUnity"

    const-string v1, "getDisplayAdResponse"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-nez p1, :cond_0

    .line 879
    const-string v0, "TapjoyUnity"

    const-string v1, "null ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :goto_0
    sput-object p1, Lcom/tapjoy/TapjoyConnectUnity;->displayAdView:Landroid/view/View;

    .line 884
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "DisplayAdLoaded"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void

    .line 881
    :cond_0
    const-string v0, "TapjoyUnity"

    const-string v1, "ad not null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 894
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayAdResponseFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "DisplayAdError"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$21;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$21;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 648
    :cond_0
    return-void
.end method

.method public getDisplayAdX()I
    .locals 1

    .prologue
    .line 1151
    sget v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdX:I

    return v0
.end method

.method public getDisplayAdY()I
    .locals 1

    .prologue
    .line 1160
    sget v0, Lcom/tapjoy/TapjoyConnectUnity;->displayAdY:I

    return v0
.end method

.method public getFullScreenAd()V
    .locals 2

    .prologue
    .line 508
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$15;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$15;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 518
    :cond_0
    return-void
.end method

.method public getFullScreenAdResponse()V
    .locals 3

    .prologue
    .line 925
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "FullScreenAdLoaded"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public getFullScreenAdResponseFailed(I)V
    .locals 4

    .prologue
    .line 934
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "FullScreenAdError"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method public getFullScreenAdWithCurrencyID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 531
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$16;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$16;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 541
    :cond_0
    return-void
.end method

.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 905
    iput p2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    .line 906
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsSpent"

    iget v2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 916
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsSpendError"

    const-string v2, "Error spending Tap Points"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method public getTapPoints()V
    .locals 2

    .prologue
    .line 443
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$12;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$12;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    :cond_0
    return-void
.end method

.method public getTapPointsTotal()I
    .locals 3

    .prologue
    .line 1048
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTapPointsTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget v0, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    return v0
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 944
    sput-object p1, Lcom/tapjoy/TapjoyConnectUnity;->earnedCurrencyName:Ljava/lang/String;

    .line 945
    iput p2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    .line 946
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsLoaded"

    iget v2, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyPointTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 956
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "TapPointsLoadedError"

    const-string v2, "Error loading Tap Points"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideDisplayAd()V
    .locals 2

    .prologue
    .line 1107
    const-string v0, "TapjoyUnity"

    const-string v1, "removeDisplayAd"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1110
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    :cond_0
    return-void
.end method

.method public sendEventCompleted(Lcom/tapjoy/TJEvent;Z)V
    .locals 4

    .prologue
    .line 1377
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEventCompleted - contentAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    if-eqz p2, :cond_0

    .line 1380
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "SendEventCompleteWithContent"

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "SendEventComplete"

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendEventFail(Lcom/tapjoy/TJEvent;Lcom/tapjoy/TJError;)V
    .locals 4

    .prologue
    .line 1393
    const-string v0, "TapjoyUnity"

    const-string v1, "sendEventFail"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v2, "SendEventFail"

    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    return-void
.end method

.method public sendEventWithGuid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1454
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1456
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$30;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$30;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1470
    :cond_0
    return-void
.end method

.method public sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
    .locals 7

    .prologue
    .line 726
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 728
    sget-object v6, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$25;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyConnectUnity$25;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;FILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 736
    :cond_0
    return-void
.end method

.method public sendSegmentationParams(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$3;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public sendShutDownEvent()V
    .locals 2

    .prologue
    .line 704
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$24;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$24;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 714
    :cond_0
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$8;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$8;-><init>(Lcom/tapjoy/TapjoyConnectUnity;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setDisplayAdPosition(II)V
    .locals 2

    .prologue
    .line 1134
    sput p1, Lcom/tapjoy/TapjoyConnectUnity;->displayAdX:I

    .line 1135
    sput p2, Lcom/tapjoy/TapjoyConnectUnity;->displayAdY:I

    .line 1137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1138
    const/16 v1, 0x2a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1141
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1142
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    :cond_0
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 578
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$18;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$18;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$6;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$6;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    :cond_0
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 2

    .prologue
    .line 662
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$22;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$22;-><init>(Lcom/tapjoy/TapjoyConnectUnity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 672
    :cond_0
    return-void
.end method

.method public showDefaultEarnedCurrencyAlert()V
    .locals 2

    .prologue
    .line 1075
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1076
    const/16 v1, 0x38f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1078
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1079
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1080
    :cond_0
    return-void
.end method

.method public showDisplayAd()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "TapjoyUnity"

    const-string v1, "showDisplayAd"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1121
    const/16 v1, 0x2a

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1123
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1124
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1125
    :cond_0
    return-void
.end method

.method public showEventWithGuid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1474
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1476
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$31;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$31;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1490
    :cond_0
    return-void
.end method

.method public showFullScreenAd()V
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$17;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$17;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    :cond_0
    return-void
.end method

.method public showOffers()V
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$10;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectUnity$10;-><init>(Lcom/tapjoy/TapjoyConnectUnity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 413
    :cond_0
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 424
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/TapjoyConnectUnity$11;-><init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    :cond_0
    return-void
.end method

.method public spendTapPoints(I)V
    .locals 2

    .prologue
    .line 462
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$13;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$13;-><init>(Lcom/tapjoy/TapjoyConnectUnity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 472
    :cond_0
    return-void
.end method

.method public videoComplete()V
    .locals 3

    .prologue
    .line 998
    const-string v0, "TapjoyUnity"

    const-string v1, "VIDEO COMPLETE"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "VideoAdComplete"

    const-string v2, "complete"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public videoError(I)V
    .locals 3

    .prologue
    .line 991
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "VideoAdError"

    const-string v2, "Video playback error has occurred. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public videoStart()V
    .locals 3

    .prologue
    .line 984
    const-string v0, "TapjoyUnity"

    const-string v1, "VIDEO START"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "VideoAdStart"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public viewDidClose(I)V
    .locals 3

    .prologue
    .line 1011
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;

    const-string v1, "ViewClosed"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public viewDidOpen(I)V
    .locals 0

    .prologue
    .line 1024
    return-void
.end method

.method public viewWillClose(I)V
    .locals 0

    .prologue
    .line 1006
    return-void
.end method

.method public viewWillOpen(I)V
    .locals 0

    .prologue
    .line 1018
    return-void
.end method
