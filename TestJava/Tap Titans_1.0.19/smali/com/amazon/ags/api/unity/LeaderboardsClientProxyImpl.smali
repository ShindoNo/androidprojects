.class public Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;
.super Ljava/lang/Object;
.source "LeaderboardsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final JSON_ERROR_KEY:Ljava/lang/String; = "error"

.field private static final JSON_LEADERBOARDS_KEY:Ljava/lang/String; = "leaderboards"

.field private static final JSON_LEADERBOARD_DISPLAY_TEXT_KEY:Ljava/lang/String; = "leaderboardDisplayText"

.field private static final JSON_LEADERBOARD_ID_KEY:Ljava/lang/String; = "leaderboardId"

.field private static final JSON_LEADERBOARD_IMAGE_URL_KEY:Ljava/lang/String; = "leaderboardImageUrl"

.field private static final JSON_LEADERBOARD_KEY:Ljava/lang/String; = "leaderboard"

.field private static final JSON_LEADERBOARD_NAME_KEY:Ljava/lang/String; = "leaderboardName"

.field private static final JSON_LEADERBOARD_SCORE_FORMAT_KEY:Ljava/lang/String; = "leaderboardScoreFormat"

.field private static final JSON_PERCENTILES_KEY:Ljava/lang/String; = "percentiles"

.field private static final JSON_PERCENTILE_KEY:Ljava/lang/String; = "percentile"

.field private static final JSON_PLAYER_KEY:Ljava/lang/String; = "player"

.field private static final JSON_RANK_KEY:Ljava/lang/String; = "rank"

.field private static final JSON_SCOPE_KEY:Ljava/lang/String; = "scope"

.field private static final JSON_SCORE_KEY:Ljava/lang/String; = "score"

.field private static final JSON_SCORE_STRING_KEY:Ljava/lang/String; = "scoreString"

.field private static final JSON_USER_DATA_KEY:Ljava/lang/String; = "userData"

.field private static final JSON_USER_INDEX_KEY:Ljava/lang/String; = "userIndex"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/api/leaderboards/Leaderboard;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->leaderboardToJson(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/LeaderboardsClientProxy;

    return-object v0
.end method

.method private static leaderboardToJson(Lcom/amazon/ags/api/leaderboards/Leaderboard;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "leaderboard"    # Lcom/amazon/ags/api/leaderboards/Leaderboard;

    .prologue
    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, "leaderboardJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "leaderboardId"

    invoke-interface {p0}, Lcom/amazon/ags/api/leaderboards/Leaderboard;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "leaderboardName"

    invoke-interface {p0}, Lcom/amazon/ags/api/leaderboards/Leaderboard;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "leaderboardDisplayText"

    invoke-interface {p0}, Lcom/amazon/ags/api/leaderboards/Leaderboard;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "leaderboardScoreFormat"

    invoke-interface {p0}, Lcom/amazon/ags/api/leaderboards/Leaderboard;->getScoreFormat()Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/ags/constants/ScoreFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "leaderboardImageUrl"

    invoke-interface {p0}, Lcom/amazon/ags/api/leaderboards/Leaderboard;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error creating JSON for leaderboard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public requestLeaderboards(I)V
    .locals 5
    .param p1, "userData"    # I

    .prologue
    .line 154
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 155
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v2

    .line 157
    .local v2, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 158
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Request for leaderboards will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 162
    :cond_0
    if-nez v2, :cond_1

    .line 163
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "UnityManager is not initialized. Request for leaderboards will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 169
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v1, :cond_2

    .line 170
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "LeaderboardsClient cannot be used. Leaderboards request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$2;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestLocalPlayerScore(Ljava/lang/String;II)V
    .locals 10
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "scope"    # I
    .param p3, "userData"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v6

    check-cast v6, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 204
    .local v6, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v5

    .line 206
    .local v5, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v6, :cond_0

    .line 207
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGamesClient is not initialized. Request for local player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez v5, :cond_1

    .line 212
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnityManager is not initialized. Request for local player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p2}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v7

    .line 217
    .local v7, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    invoke-virtual {v6}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v8

    .line 219
    .local v8, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v8, :cond_2

    .line 220
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "LeaderboardsClient cannot be used. Request for local player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v8, p1, v7, v0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v9

    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$3;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$3;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v9, v0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestPercentileRanks(Ljava/lang/String;II)V
    .locals 10
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "scope"    # I
    .param p3, "userData"    # I

    .prologue
    .line 363
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v6

    check-cast v6, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 364
    .local v6, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v5

    .line 366
    .local v5, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v6, :cond_0

    .line 367
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGamesClient is not initialized. Percentile ranks request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 371
    :cond_0
    if-nez v5, :cond_1

    .line 372
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnityManager is not initialized. Percentile ranks request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {p2}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v7

    .line 377
    .local v7, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    invoke-virtual {v6}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v8

    .line 378
    .local v8, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v8, :cond_2

    .line 379
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "LeaderboardsClient cannot be used. Percentile ranks request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v8, p1, v7, v0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v9

    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$6;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v9, v0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestPercentileRanksForPlayer(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "scope"    # I
    .param p4, "userData"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v7

    check-cast v7, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 436
    .local v7, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v6

    .line 438
    .local v6, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v7, :cond_0

    .line 439
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGamesClient is not initialized. Percentile ranks for player request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 443
    :cond_0
    if-nez v6, :cond_1

    .line 444
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnityManager is not initialized. Percentile ranks for player request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {p3}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v8

    .line 449
    .local v8, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    invoke-virtual {v7}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v9

    .line 450
    .local v9, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v9, :cond_2

    .line 451
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "LeaderboardsClient cannot be used. Percentile ranks for player request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v9, p1, p2, v8, v0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanksForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v10

    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$7;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$7;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;Ljava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v10, v0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestScoreForPlayer(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "scope"    # I
    .param p4, "userData"    # I

    .prologue
    .line 251
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v7

    check-cast v7, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 252
    .local v7, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v6

    .line 254
    .local v6, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v7, :cond_0

    .line 255
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGamesClient is not initialized. Request for player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 259
    :cond_0
    if-nez v6, :cond_1

    .line 260
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnityManager is not initialized. Request for player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {p3}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v8

    .line 265
    .local v8, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    invoke-virtual {v7}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v9

    .line 266
    .local v9, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v9, :cond_2

    .line 267
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "Could not get leaderboardsClient. Request for player score will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v9, p1, p2, v8, v0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScoreForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v10

    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$4;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$4;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;ILjava/lang/String;Lcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v10, v0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestScores(Ljava/lang/String;II)V
    .locals 10
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "scope"    # I
    .param p3, "userData"    # I

    .prologue
    .line 297
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v6

    check-cast v6, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 298
    .local v6, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v5

    .line 300
    .local v5, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v6, :cond_0

    .line 301
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGamesClient is not initialized. Score request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 305
    :cond_0
    if-nez v5, :cond_1

    .line 306
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnityManager is not initialized. Score request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {p2}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v7

    .line 311
    .local v7, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    invoke-virtual {v6}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v8

    .line 313
    .local v8, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v8, :cond_2

    .line 314
    sget-object v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v1, "Could not get leaderboardsClient. Score request will stop."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v8, p1, v7, v0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v9

    new-instance v0, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$5;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$5;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;ILjava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v9, v0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public showLeaderboardsOverlay()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 141
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    if-nez v0, :cond_1

    .line 142
    sget-object v2, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "AmazonGamesClient is not initialized. Score cannot be submitted."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 147
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-eqz v1, :cond_0

    .line 148
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method

.method public submitScore(Ljava/lang/String;JI)V
    .locals 5
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "userData"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 93
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v2

    .line 95
    .local v2, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 96
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Score cannot be submitted."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 100
    :cond_0
    if-nez v2, :cond_1

    .line 101
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "UnityManager is not initialized. Score cannot be submitted."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 106
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    if-nez v1, :cond_2

    .line 107
    sget-object v3, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "LeaderboardsClient cannot be used. Leaderboards request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, p1, p2, p3, v3}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$1;

    invoke-direct {v4, p0, p1, p4, v2}, Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl$1;-><init>(Lcom/amazon/ags/api/unity/LeaderboardsClientProxyImpl;Ljava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method
