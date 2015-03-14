.class Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;
.super Ljava/lang/Object;
.source "SPUnityBrandEngageWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->showRewardsNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

.field private final synthetic val$showNotification:Z


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    iput-boolean p2, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;->val$showNotification:Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canRequestOffers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canRequestOffers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    iget-boolean v2, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;->val$showNotification:Z

    invoke-static {v1, v2}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->access$0(Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/unity/SPUnityBrandEngageWrapper;->sendNativeException(Ljava/lang/Exception;)V

    .line 42
    const-string v1, "SPUnityBrandEngageWrapper"

    const-string v2, "SponsorPay SDK Exception: "

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
