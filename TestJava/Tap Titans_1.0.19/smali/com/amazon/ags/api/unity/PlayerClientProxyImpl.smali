.class public Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;
.super Ljava/lang/Object;
.source "PlayerClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/unity/PlayerClientProxy;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "PF"

.field private static final JSON_ERROR_KEY:Ljava/lang/String; = "error"

.field private static final JSON_FRIENDS_KEY:Ljava/lang/String; = "friends"

.field private static final JSON_FRIEND_IDS_KEY:Ljava/lang/String; = "friendIds"

.field public static final JSON_PLAYER_ALIAS_KEY:Ljava/lang/String; = "alias"

.field public static final JSON_PLAYER_AVATAR_URL_KEY:Ljava/lang/String; = "avatarUrl"

.field public static final JSON_PLAYER_ID_KEY:Ljava/lang/String; = "playerId"

.field private static final JSON_PLAYER_KEY:Ljava/lang/String; = "player"

.field private static final JSON_USER_DATA_KEY:Ljava/lang/String; = "userData"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/ags/api/unity/PlayerClientProxy;

.field private static signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/PlayerClientProxy;

    .line 51
    new-instance v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$1;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$1;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static attachSignedInListener()V
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v0

    .line 238
    .local v0, "playerClient":Lcom/amazon/ags/api/player/PlayerClient;
    if-nez v0, :cond_0

    .line 239
    sget-object v1, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v2, "Player client not found. Please initialize Amazon Games Client. Cannot attach signed in listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v1, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->setSignedInListener(Lcom/amazon/ags/api/player/AGSignedInListener;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/amazon/ags/api/unity/PlayerClientProxy;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/PlayerClientProxy;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/PlayerClientProxy;

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/PlayerClientProxy;

    return-object v0
.end method

.method public static playerToJson(Lcom/amazon/ags/api/player/Player;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "player"    # Lcom/amazon/ags/api/player/Player;

    .prologue
    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v1, "playerJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "alias"

    invoke-interface {p0}, Lcom/amazon/ags/api/player/Player;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v2, "playerId"

    invoke-interface {p0}, Lcom/amazon/ags/api/player/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "avatarUrl"

    invoke-interface {p0}, Lcom/amazon/ags/api/player/Player;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error converting player to JSON object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isSignedIn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 221
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    if-nez v0, :cond_0

    .line 222
    sget-object v3, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Signed in state request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return v2

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v1

    .line 227
    .local v1, "playerClient":Lcom/amazon/ags/api/player/PlayerClient;
    if-nez v1, :cond_1

    .line 228
    sget-object v3, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "Player client is not available. Signed in state request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {v1}, Lcom/amazon/ags/api/player/PlayerClient;->isSignedIn()Z

    move-result v2

    goto :goto_0
.end method

.method public requestBatchFriends(Ljava/lang/String;I)V
    .locals 8
    .param p1, "jsonFriendIds"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 168
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v5

    .line 170
    .local v5, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 171
    sget-object v6, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v7, "AmazonGamesClient is not initialized. Batch friends request will stop."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 175
    :cond_0
    if-nez v5, :cond_1

    .line 176
    sget-object v6, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v7, "UnityManager is not initialized. Batch friends request will stop."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 183
    .local v2, "friendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "friendIdsJSON":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 185
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    .end local v3    # "friendIdsJSON":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v7, "Could not parse friendIds request. Batch friends request will stop."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "friendIdsJSON":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v2, v7}, Lcom/amazon/ags/api/player/PlayerClient;->getBatchFriends(Ljava/util/List;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v6

    new-instance v7, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;

    invoke-direct {v7, p0, p2, v5}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$4;-><init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v6, v7}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestLocalPlayer(I)V
    .locals 4
    .param p1, "userData"    # I

    .prologue
    .line 78
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 79
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v1

    .line 81
    .local v1, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 82
    sget-object v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "AmazonGamesClient is not initialized. Local player request will stop."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 86
    :cond_0
    if-nez v1, :cond_1

    .line 87
    sget-object v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "UnityManager is not initialized. Local player request will stop."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v1}, Lcom/amazon/ags/api/unity/UnityManager;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$2;-><init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;Lcom/amazon/ags/api/AmazonGamesClient;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestLocalPlayerFriends(I)V
    .locals 4
    .param p1, "userData"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 128
    .local v0, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v1

    .line 130
    .local v1, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v0, :cond_0

    .line 131
    sget-object v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "AmazonGamesClient is not initialized. FriendIds request will stop."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 135
    :cond_0
    if-nez v1, :cond_1

    .line 136
    sget-object v2, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "UnityManager is not initialized. FriendIds request will stop."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/amazon/ags/api/player/PlayerClient;->getFriendIds([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    new-instance v3, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/amazon/ags/api/unity/PlayerClientProxyImpl$3;-><init>(Lcom/amazon/ags/api/unity/PlayerClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v2, v3}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method
