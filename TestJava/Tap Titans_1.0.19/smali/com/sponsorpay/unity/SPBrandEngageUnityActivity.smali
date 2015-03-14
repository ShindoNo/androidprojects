.class public Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;
.super Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;
.source "SPBrandEngageUnityActivity.java"


# static fields
.field private static final UNITY_CALLBACK_MBE:Ljava/lang/String; = "OnSPBrandEngageResultFromSDK"


# instance fields
.field private mListenerObject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    const-string v0, "listener.name.extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->mListenerObject:Ljava/lang/String;

    .line 36
    :goto_0
    invoke-super {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listener.name.extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->mListenerObject:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setStatusListener(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->closeEngagement()V

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->onDestroy()V

    .line 47
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "listener.name.extra"

    iget-object v1, p0, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->mListenerObject:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected setResultAndClose(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string p1, "ERROR"

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->mListenerObject:Ljava/lang/String;

    const-string v1, "OnSPBrandEngageResultFromSDK"

    invoke-static {v0, v1, p1}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPBrandEngageUnityActivity;->closeActivity()V

    .line 63
    return-void
.end method
