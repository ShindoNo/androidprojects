.class Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;
.super Ljava/lang/Object;
.source "SPUnityBrandEngageWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->requestOffers(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

.field private final synthetic val$credentialsToken:Ljava/lang/String;

.field private final synthetic val$currencyId:Ljava/lang/String;

.field private final synthetic val$currencyName:Ljava/lang/String;

.field private final synthetic val$placementId:Ljava/lang/String;

.field private final synthetic val$queryVCS:Z


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    iput-boolean p2, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$queryVCS:Z

    iput-object p3, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$credentialsToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$currencyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$currencyId:Ljava/lang/String;

    iput-object p6, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$placementId:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 56
    :try_start_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    # getter for: Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->mShowNotification:Z
    invoke-static {v1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->access$1(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setShowRewardsNotification(Z)V

    .line 58
    iget-boolean v0, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$queryVCS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    # invokes: Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    invoke-static {v0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->access$2(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v5

    .line 59
    .local v5, "vcsListener":Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$credentialsToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->getCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    .line 61
    iget-object v3, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$currencyName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$currencyId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->val$placementId:Ljava/lang/String;

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v5    # "vcsListener":Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v8

    .line 64
    .local v8, "ex":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$2;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    invoke-virtual {v0, v8}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->sendNativeException(Ljava/lang/Exception;)V

    .line 65
    const-string v0, "SPUnityBrandEngageWrapper"

    const-string v1, "SponsorPay SDK Exception: "

    invoke-static {v0, v1, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
