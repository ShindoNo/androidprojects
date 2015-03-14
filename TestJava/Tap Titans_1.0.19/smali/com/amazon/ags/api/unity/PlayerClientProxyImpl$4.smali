.class Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;
.super Ljava/lang/Object;
.source "PlayerClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->requestBatchFriends(Ljava/lang/String;I)V
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
        "Lcom/amazon/ags/api/player/RequestFriendsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->this$0:Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

    iput p2, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->val$userData:I

    iput-object p3, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 192
    check-cast p1, Lcom/amazon/ags/api/player/RequestFriendsResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->onComplete(Lcom/amazon/ags/api/player/RequestFriendsResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/player/RequestFriendsResponse;)V
    .locals 8
    .param p1, "result"    # Lcom/amazon/ags/api/player/RequestFriendsResponse;

    .prologue
    .line 195
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v4, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "userData"

    iget v6, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->val$userData:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestFriendsResponse;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const-string v5, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestFriendsResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :goto_0
    iget-object v5, p0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v6, "batchFriendsRequestComplete"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_1
    return-void

    .line 201
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 202
    .local v2, "friendArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Lcom/amazon/ags/api/player/RequestFriendsResponse;->getFriends()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/api/player/Player;

    .line 203
    .local v1, "friend":Lcom/amazon/ags/api/player/Player;
    invoke-static {v1}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->playerToJson(Lcom/amazon/ags/api/player/Player;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    .end local v1    # "friend":Lcom/amazon/ags/api/player/Player;
    .end local v2    # "friendArray":Lorg/json/JSONArray;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating JSON for get friends response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "friendArray":Lorg/json/JSONArray;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v5, "friends"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
