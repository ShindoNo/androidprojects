.class Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;
.super Ljava/lang/Object;
.source "LeaderboardsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->requestPercentileRanks(Ljava/lang/String;II)V
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
        "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$scope:I

.field final synthetic val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

.field final synthetic val$userData:I


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->this$0:Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

    iput p2, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$userData:I

    iput-object p3, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$leaderboardId:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$scope:I

    iput-object p5, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 383
    check-cast p1, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;

    .end local p1    # "x0":Lcom/amazon/ags/api/RequestResponse;
    invoke-virtual {p0, p1}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->onComplete(Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;)V
    .locals 11
    .param p1, "response"    # Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;

    .prologue
    .line 386
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 390
    .local v6, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "userData"

    iget v9, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$userData:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    const-string v8, "leaderboardId"

    iget-object v9, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v8, "scope"

    iget v9, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$scope:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;->isError()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 395
    const-string v8, "error"

    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/ags/api/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    iget-object v8, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v9, "requestPercentileRanksFailed"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;->getLeaderboard()Lcom/amazon/ags/api/leaderboards/Leaderboard;

    move-result-object v2

    .line 401
    .local v2, "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    const-string v8, "leaderboard"

    # invokes: Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->leaderboardToJson(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->access$100(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 405
    .local v7, "scoresArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;->getPercentileList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;

    .line 407
    .local v3, "leaderboardPercentileItem":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .local v4, "percentileItemJSONObject":Lorg/json/JSONObject;
    const-string v8, "percentile"

    invoke-interface {v3}, Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;->getPercentile()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const-string v8, "score"

    invoke-interface {v3}, Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;->getPlayerScore()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 412
    invoke-interface {v3}, Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;->getPlayer()Lcom/amazon/ags/api/player/Player;

    move-result-object v5

    .line 414
    .local v5, "player":Lcom/amazon/ags/api/player/Player;
    const-string v8, "player"

    invoke-static {v5}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->playerToJson(Lcom/amazon/ags/api/player/Player;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 426
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .end local v3    # "leaderboardPercentileItem":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    .end local v4    # "percentileItemJSONObject":Lorg/json/JSONObject;
    .end local v5    # "player":Lcom/amazon/ags/api/player/Player;
    .end local v7    # "scoresArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating JSON for GetPercentileRanksResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .restart local v7    # "scoresArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string v8, "percentiles"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v8, "userIndex"

    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;->getUserIndex()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    iget-object v8, p0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;->val$unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    const-string v9, "requestPercentileRanksSucceeded"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/amazon/ags/api/unity/UnityManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method