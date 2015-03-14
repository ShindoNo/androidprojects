.class Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;
.super Ljava/lang/Object;
.source "LeaderboardsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->requestLeaderboards(I)V
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
        "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->this$0:Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

    iput p2, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->val$userData:I

    iput-object p3, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 174
    check-cast p1, Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->onComplete(Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;

    .prologue
    .line 177
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v5, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "userData"

    iget v7, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->val$userData:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;->isError()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    const-string v6, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    iget-object v6, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v7, "requestLeaderboardsFailed"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .local v4, "leaderboardsArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;->getLeaderboards()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ags/api/leaderboards/Leaderboard;

    .line 186
    .local v2, "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    # invokes: Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->leaderboardToJson(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->access$100(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;

    move-result-object v3

    .line 187
    .local v3, "leaderboardJson":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 188
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .end local v3    # "leaderboardJson":Lorg/json/JSONObject;
    .end local v4    # "leaderboardsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to construct leaderboards json response for Unity."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "leaderboardsArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    const-string v6, "leaderboards"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object v6, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v7, "requestLeaderboardsSucceeded"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
