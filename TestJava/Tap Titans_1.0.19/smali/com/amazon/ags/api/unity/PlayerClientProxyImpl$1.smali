.class final Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$1;
.super Ljava/lang/Object;
.source "PlayerClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/player/AGSignedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignedInStateChange(Z)V
    .locals 3
    .param p1, "isSignedIn"    # Z

    .prologue
    .line 54
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    .line 56
    .local v0, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 57
    # getter for: Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityManager is not initialized. Cannot send signed in event."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v2, "onSignedInStateChange"

    if-eqz p1, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "false"

    goto :goto_1
.end method
