.class public Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityBrandEngageWrapper.java"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;


# static fields
.field private static final MBE_STATUS_UNITY_CALLBACK_METHOD_NAME:Ljava/lang/String; = "OnSPBrandEngageStatusMessageFromSDK"

.field private static final TAG:Ljava/lang/String; = "SPUnityBrandEngageWrapper"


# instance fields
.field private mBrandengageActivity:Landroid/content/Intent;

.field private mShowNotification:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mShowNotification:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mShowNotification:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->getListenerObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->setListenerName(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onSPBrandEngageError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "OnSPBrandEngageStatusMessageFromSDK"

    .line 91
    const/4 v1, 0x0

    const-string v2, "error"

    invoke-static {v1, v2, p1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method

.method public onSPBrandEngageOffersAvailable(Landroid/content/Intent;)V
    .locals 4
    .param p1, "brandengageActivity"    # Landroid/content/Intent;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mBrandengageActivity:Landroid/content/Intent;

    .line 97
    const-string v0, "OnSPBrandEngageStatusMessageFromSDK"

    .line 98
    const/4 v1, 0x1

    const-string v2, "offersAvailable"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 99
    return-void
.end method

.method public onSPBrandEngageOffersNotAvailable()V
    .locals 4

    .prologue
    .line 103
    const-string v0, "OnSPBrandEngageStatusMessageFromSDK"

    .line 104
    const/4 v1, 0x1

    const-string v2, "offersAvailable"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 105
    return-void
.end method

.method public requestOffers(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "credentialsToken"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "queryVCS"    # Z
    .param p4, "currencyId"    # Ljava/lang/String;
    .param p5, "placementId"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;-><init>(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public showRewardsNotification(Z)V
    .locals 1
    .param p1, "showNotification"    # Z

    .prologue
    .line 32
    new-instance v0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;-><init>(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;Z)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public startEngagement()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mBrandengageActivity:Landroid/content/Intent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canStartEngagement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "SPUnityBrandEngageWrapper"

    const-string v2, "Starting MBE engagement..."

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "brandEngage":Landroid/content/Intent;
    const-string v1, "listener.name.extra"

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mListenerObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mBrandengageActivity:Landroid/content/Intent;

    .line 86
    .end local v0    # "brandEngage":Landroid/content/Intent;
    :cond_0
    return-void
.end method
