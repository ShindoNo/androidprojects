.class Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;
.super Ljava/lang/Object;
.source "PlayerClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/player/RequestPlayerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;->this$1:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 99
    check-cast p1, Lcom/amazon/ags/api/player/RequestPlayerResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;->onComplete(Lcom/amazon/ags/api/player/RequestPlayerResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/player/RequestPlayerResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/amazon/ags/api/player/RequestPlayerResponse;

    .prologue
    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v1, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "userData"

    iget-object v3, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;->this$1:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;

    iget v3, v3, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$userData:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestPlayerResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v2, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestPlayerResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v2, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;->this$1:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;

    iget-object v2, v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v3, "playerFailed"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v2, "player"

    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestPlayerResponse;->getPlayer()Lcom/amazon/ags/api/player/Player;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->playerToJson(Lcom/amazon/ags/api/player/Player;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v2, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2$1;->this$1:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;

    iget-object v2, v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v3, "playerReceived"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating JSON for get player response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
