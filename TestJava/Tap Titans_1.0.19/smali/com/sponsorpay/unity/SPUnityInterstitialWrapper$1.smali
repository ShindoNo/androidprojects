.class Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;
.super Ljava/lang/Object;
.source "SPUnityInterstitialWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->requestAds(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;

.field private final synthetic val$credentialsToken:Ljava/lang/String;

.field private final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;

    iput-object p2, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->val$credentialsToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->val$placementId:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->val$credentialsToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->getCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 35
    iget-object v3, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;

    .line 36
    iget-object v4, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->val$placementId:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2, v3, v4}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/unity/SPUnityInterstitialWrapper;->sendNativeException(Ljava/lang/Exception;)V

    .line 40
    const-string v1, "SPUnityInterstitialWrapper"

    const-string v2, "SponsorPay SDK Exception: "

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
