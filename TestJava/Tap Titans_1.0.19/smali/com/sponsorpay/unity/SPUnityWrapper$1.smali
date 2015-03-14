.class Lcom/sponsorpay/unity/SPUnityWrapper$1;
.super Ljava/lang/Object;
.source "SPUnityWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityWrapper;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityWrapper;

.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$securityToken:Ljava/lang/String;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityWrapper;

    iput-object p2, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$securityToken:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPUnityWrapper$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sponsorpay/unity/SPUnityWrapper$1;->val$securityToken:Ljava/lang/String;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
