.class public Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityRewardedActionWrapper.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public reportActionCompletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "credentialsToken"    # Ljava/lang/String;
    .param p2, "actionId"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;-><init>(Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method
