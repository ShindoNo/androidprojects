.class Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;
.super Ljava/lang/Object;
.source "AmazonGamesClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGamesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;->this$1:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 3
    .param p1, "reason"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;->this$1:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;

    iget-object v0, v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    # getter for: Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;
    invoke-static {v0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->access$000(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;)Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    const-string v1, "serviceNotReady"

    invoke-virtual {p1}, Lcom/amazon/ags/api/AmazonGamesStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onServiceReady(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 3
    .param p1, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 79
    # getter for: Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameCircle - Service is Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;->this$1:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;

    iget-object v0, v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    # getter for: Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;
    invoke-static {v0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->access$000(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;)Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    const-string v1, "serviceReady"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;->this$1:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;

    iget-object v0, v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    # setter for: Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {v0, p1}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->access$202(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;

    .line 82
    invoke-static {}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->attachSignedInListener()V

    .line 83
    return-void
.end method
