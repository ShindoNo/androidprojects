.class public Lcom/sponsorpay/unity/SPUnityOfferWallWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityOfferWallWrapper.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityOfferWallWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public launchOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "credentialsToken"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "placementId"    # Ljava/lang/String;

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityOfferWallWrapper;->getCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 25
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 30
    .local v7, "offerWallIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v1, Lcom/sponsorpay/unity/SPWrapperActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v8, "wrapperIntent":Landroid/content/Intent;
    const-string v0, "activity.code.extra"

    const/16 v1, 0xc8e

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v0, "intent.extra"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string v0, "listener.name.extra"

    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityOfferWallWrapper;->mListenerObjectName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v7    # "offerWallIntent":Landroid/content/Intent;
    .end local v8    # "wrapperIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v6

    .line 38
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v6}, Lcom/sponsorpay/unity/SPUnityOfferWallWrapper;->sendNativeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
