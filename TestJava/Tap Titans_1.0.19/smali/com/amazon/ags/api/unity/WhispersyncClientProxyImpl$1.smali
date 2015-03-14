.class Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$1;
.super Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;
.source "WhispersyncClientProxyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;

    invoke-direct {p0}, Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadySynchronized()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 84
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 85
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v1, "onAlreadySynchronized"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataUploadedToCloud()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 40
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 41
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "onDataUploadedToCloud"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDiskWriteComplete()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 62
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 63
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v1, "onDiskWriteComplete"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFirstSynchronize()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 73
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 74
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "onFirstSynchronize"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNewCloudData()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 29
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 30
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v1, "onNewCloudData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncFailed(Lcom/amazon/ags/api/whispersync/FailReason;)V
    .locals 4
    .param p1, "reason"    # Lcom/amazon/ags/api/whispersync/FailReason;

    .prologue
    .line 93
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v1

    .line 95
    .local v1, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v1, :cond_0

    .line 96
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "Reason not found"

    .line 100
    .local v0, "failReasonAsString":Ljava/lang/String;
    sget-object v2, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl$2;->$SwitchMap$com$amazon$ags$api$whispersync$FailReason:[I

    invoke-virtual {p1}, Lcom/amazon/ags/api/whispersync/FailReason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_1
    const-string v2, "onSyncFailed"

    invoke-interface {v1, v2, v0}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_0
    const-string v0, "OFFLINE"

    .line 103
    goto :goto_1

    .line 105
    :pswitch_1
    const-string v0, "WHISPERSYNC_DISABLED"

    .line 106
    goto :goto_1

    .line 108
    :pswitch_2
    const-string v0, "SERVICE_ERROR"

    .line 109
    goto :goto_1

    .line 111
    :pswitch_3
    const-string v0, "CLIENT_ERROR"

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onThrottled()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 51
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 52
    # getter for: Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/WhispersyncClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send whispersync event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "onThrottled"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
