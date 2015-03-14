.class public Lcom/flurry/sdk/bo;
.super Lcom/flurry/sdk/ba;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/bo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ba;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 31
    const-string v0, "com.flurry.fan.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bo;->c:Ljava/lang/String;

    .line 32
    const-string v0, "com.flurry.fan.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bo;->d:Ljava/lang/String;

    .line 33
    const-string v0, "com.flurry.fan.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bo;->e:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->b()Landroid/content/Context;

    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lcom/flurry/sdk/bo;->e:Z

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/flurry/sdk/bo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 44
    :cond_0
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    iget-object v2, p0, Lcom/flurry/sdk/bo;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 47
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdClicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bo;->b(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 76
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onError."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bo;->d(Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bo;->f:Lcom/facebook/ads/InterstitialAd;

    .line 68
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bo;->c(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/String;

    const-string v2, "FAN interstitial onInterstitialDisplayed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bo;->a(Ljava/util/Map;)V

    .line 53
    return-void
.end method
