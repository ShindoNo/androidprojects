.class public Lcom/tapjoy/TapjoyFullScreenAd;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Full Screen Ad"

.field private static baseURL:Ljava/lang/String;

.field private static fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

.field private static htmlResponseData:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private legacyFullScreenAdParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->baseURL:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->htmlResponseData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/tapjoy/TapjoyFullScreenAd;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFullScreenAd;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tapjoy/TapjoyFullScreenAd;->legacyFullScreenAdParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    sput-object p0, Lcom/tapjoy/TapjoyFullScreenAd;->baseURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    sput-object p0, Lcom/tapjoy/TapjoyFullScreenAd;->htmlResponseData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    return-object v0
.end method


# virtual methods
.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 42
    const-string v0, "Full Screen Ad"

    const-string v1, "getFullScreenAd"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 44
    return-void
.end method

.method public getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 0
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 54
    sput-object p2, Lcom/tapjoy/TapjoyFullScreenAd;->fullScreenAdNotifier:Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .line 55
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdLegacy(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getFullScreenAdLegacy(Ljava/lang/String;)V
    .locals 3
    .param p1, "currencyID"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "Full Screen Ad"

    const-string v1, "Getting Full Screen Ad"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFullScreenAd;->legacyFullScreenAdParams:Ljava/util/Map;

    .line 97
    iget-object v0, p0, Lcom/tapjoy/TapjoyFullScreenAd;->legacyFullScreenAdParams:Ljava/util/Map;

    const-string v1, "currency_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyFullScreenAd$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyFullScreenAd$1;-><init>(Lcom/tapjoy/TapjoyFullScreenAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method public setDisplayCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 86
    return-void
.end method

.method public showFullScreenAd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlResponseData:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyFullScreenAd;->htmlResponseData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyFullScreenAdWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v1, "html"

    sget-object v2, Lcom/tapjoy/TapjoyFullScreenAd;->htmlResponseData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "base_url"

    sget-object v2, Lcom/tapjoy/TapjoyFullScreenAd;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "legacy_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/tapjoy/TapjoyFullScreenAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
