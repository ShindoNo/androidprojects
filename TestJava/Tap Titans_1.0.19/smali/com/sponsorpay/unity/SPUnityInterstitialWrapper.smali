.class public Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityInterstitialWrapper.java"

# interfaces
.implements Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;


# static fields
.field private static final INTERSTITIAL_STATUS_UNITY_CALLBACK_METHOD_NAME:Ljava/lang/String; = "OnSPInterstitialMessageFromSDK"

.field private static final TAG:Ljava/lang/String; = "SPUnityInterstitialWrapper"


# instance fields
.field private mIntersittialActivity:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onSPInterstitialAdAvailable(Landroid/content/Intent;)V
    .locals 4
    .param p1, "interstitialActivity"    # Landroid/content/Intent;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    .line 64
    const-string v0, "OnSPInterstitialMessageFromSDK"

    .line 65
    const/4 v1, 0x1

    const-string v2, "adsAvailable"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 66
    return-void
.end method

.method public onSPInterstitialAdError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    .line 78
    const-string v0, "OnSPInterstitialMessageFromSDK"

    .line 79
    const/4 v1, 0x0

    const-string v2, "error"

    invoke-static {v1, v2, p1}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 80
    return-void
.end method

.method public onSPInterstitialAdNotAvailable()V
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    .line 71
    const-string v0, "OnSPInterstitialMessageFromSDK"

    .line 72
    const/4 v1, 0x1

    const-string v2, "adsAvailable"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 73
    return-void
.end method

.method public requestAds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "credentialsToken"    # Ljava/lang/String;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;-><init>(Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public showAd()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "SPUnityInterstitialWrapper"

    const-string v2, "Starting MBE engagement..."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/sponsorpay/unity/SPWrapperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "wrapperIntent":Landroid/content/Intent;
    const-string v1, "activity.code.extra"

    const/16 v2, 0x153b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v1, "intent.extra"

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v1, "listener.name.extra"

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mListenerObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->mIntersittialActivity:Landroid/content/Intent;

    .line 59
    .end local v0    # "wrapperIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
