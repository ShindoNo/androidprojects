.class Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;
.super Ljava/lang/Object;
.source "PlayerClientProxyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->requestLocalPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

.field final synthetic val$agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;Lcom/amazon/ags/api/AmazonGamesClient;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->this$0:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

    iput-object p2, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    iput p3, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$userData:I

    iput-object p4, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesClient;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v0

    .line 97
    .local v0, "playerClient":Lcom/amazon/ags/api/player/PlayerClient;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->getLocalPlayer([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v1

    new-instance v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;

    invoke-direct {v2, p0}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;-><init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;)V

    invoke-interface {v1, v2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 121
    :cond_0
    return-void
.end method
