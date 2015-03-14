.class Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;
.super Ljava/lang/Object;
.source "SPUnityRewardedActionWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;->reportActionCompletion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;

.field private final synthetic val$actionId:Ljava/lang/String;

.field private final synthetic val$credentialsToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;

    iput-object p2, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->val$credentialsToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->val$actionId:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->val$credentialsToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;->getCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->val$actionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->reportActionCompletion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/unity/SPUnityRewardedActionWrapper;->sendNativeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
