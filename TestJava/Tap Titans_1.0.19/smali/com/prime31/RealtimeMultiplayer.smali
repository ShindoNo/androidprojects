.class public Lcom/prime31/RealtimeMultiplayer;
.super Ljava/lang/Object;
.source "RealtimeMultiplayer.java"

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Prime31-RTMP"

.field private static final _invitationInboxCode:I = 0x13427

.field private static final _invitePlayersCode:I = 0x15f85

.field private static final _waitingRoomCode:I = 0x8c8c


# instance fields
.field private _realtimeMessageListener:Lcom/prime31/IRealTimeMessageReceivedListener;

.field private _room:Lcom/google/android/gms/games/multiplayer/realtime/Room;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMultiplayerMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/prime31/RealtimeMultiplayer;)Lcom/prime31/PlayGameServicesPlugin;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/prime31/RealtimeMultiplayer;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/prime31/RealtimeMultiplayer;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    return-object v0
.end method

.method private instance()Lcom/prime31/PlayGameServicesPlugin;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    return-object v0
.end method

.method private jsonFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v1, "roomJsonObject":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-object v1

    .line 141
    :cond_0
    :try_start_0
    const-string v2, "autoMatchWaitEstimateSeconds"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getAutoMatchWaitEstimateSeconds()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v2, "creationTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreationTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 143
    const-string v2, "creatorId"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getCreatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "description"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "roomId"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "status"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getStatus()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v2, "variant"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getVariant()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating JSON"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private jsonFromRoomAndStatus(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Ljava/lang/String;
    .locals 5
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .param p2, "statusCode"    # I

    .prologue
    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v1, "rootJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "statusCode"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v2, "room"

    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating JSON"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logRoomUpdateStatusCode(I)V
    .locals 3
    .param p1, "statusCode"    # I

    .prologue
    .line 72
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "room update statusCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sparse-switch p1, :sswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 77
    :sswitch_0
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_INTERNAL_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :sswitch_2
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_CLIENT_RECONNECT_REQUIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :sswitch_3
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_REAL_TIME_CONNECTION_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :sswitch_4
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_MULTIPLAYER_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :sswitch_5
    const-string v0, "Prime31-RTMP"

    const-string v1, "STATUS_OPERATION_IN_FLIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x1773 -> :sswitch_4
        0x1b58 -> :sswitch_3
        0x1b5f -> :sswitch_5
    .end sparse-switch
.end method

.method private makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method private updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 67
    return-void
.end method


# virtual methods
.method public createRoomProgrammatically(IIJI)V
    .locals 8
    .param p1, "minAutoMatchPlayers"    # I
    .param p2, "maxAutoMatchPlayers"    # I
    .param p3, "exclusiveBitmask"    # J
    .param p5, "variant"    # I

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom(Z)V

    .line 261
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v7

    new-instance v0, Lcom/prime31/RealtimeMultiplayer$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/prime31/RealtimeMultiplayer$2;-><init>(Lcom/prime31/RealtimeMultiplayer;IIJI)V

    invoke-virtual {v7, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public getCurrentPlayerParticipantId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-nez v1, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 420
    :goto_0
    return-object v1

    .line 419
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "currentPlayerId":Ljava/lang/String;
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParticipants()Ljava/lang/String;
    .locals 8

    .prologue
    .line 350
    iget-object v5, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 351
    :cond_0
    const-string v5, "[]"

    .line 410
    :goto_0
    return-object v5

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/prime31/RealtimeMultiplayer;->getCurrentPlayerParticipantId()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "currentPlayerParticipantId":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 357
    .local v3, "jsonArr":Lorg/json/JSONArray;
    :try_start_0
    iget-object v5, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v5}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 410
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 357
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 359
    .local v4, "p":Lcom/google/android/gms/games/multiplayer/Participant;
    if-nez v4, :cond_3

    .line 361
    const-string v6, "Prime31-RTMP"

    const-string v7, "found null participant in participant list. Ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 405
    .end local v4    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Prime31"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error creating JSON for participants: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "p":Lcom/google/android/gms/games/multiplayer/Participant;
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    const-string v6, "Prime31-RTMP"

    const-string v7, "found current player participant. Ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 373
    .local v2, "json":Lorg/json/JSONObject;
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 374
    const-string v6, "participantId"

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    :cond_5
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 377
    const-string v6, "displayName"

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    :cond_6
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 380
    const-string v6, "iconImageUrl"

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    :cond_7
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 383
    const-string v6, "hiResImageUrl"

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    :cond_8
    const-string v6, "isConnectedToRoom"

    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->isConnectedToRoom()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 386
    invoke-interface {v4}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 402
    :goto_3
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 389
    :pswitch_0
    const-string v6, "status"

    const-string v7, "Invited"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 392
    :pswitch_1
    const-string v6, "status"

    const-string v7, "Joined"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 395
    :pswitch_2
    const-string v6, "status"

    const-string v7, "Declined"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 398
    :pswitch_3
    const-string v6, "status"

    const-string v7, "Left"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-nez v0, :cond_0

    .line 343
    const-string v0, "{}"

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-direct {p0, v0}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public joinRoomWithInvitation(Ljava/lang/String;)V
    .locals 2
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom(Z)V

    .line 301
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/RealtimeMultiplayer$4;

    invoke-direct {v1, p0, p1}, Lcom/prime31/RealtimeMultiplayer$4;-><init>(Lcom/prime31/RealtimeMultiplayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public leaveRoom()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom(Z)V

    .line 337
    return-void
.end method

.method public leaveRoom(Z)V
    .locals 3
    .param p1, "dontLogIfRoomIsNull"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-nez v0, :cond_1

    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "Prime31-RTMP"

    const-string v1, "the current room is null so we cannot leave the room"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 164
    const v8, 0x13427

    if-ne p1, v8, :cond_4

    .line 166
    if-ne p2, v10, :cond_1

    .line 167
    .local v6, "success":Z
    :goto_0
    const-string v8, "onInvitationInboxCompleted"

    if-eqz v6, :cond_2

    const-string v7, "1"

    :goto_1
    invoke-direct {p0, v8, v7}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-ne p2, v10, :cond_3

    .line 171
    const-string v7, "Prime31-RTMP"

    const-string v8, "invitation inbox result OK. Joining room with selected invitation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "invitation"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 175
    .local v1, "invitation":Lcom/google/android/gms/games/multiplayer/Invitation;
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v7

    .line 176
    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v5

    .line 178
    .local v5, "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    sget-object v7, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v8

    iget-object v8, v8, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v8}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 233
    .end local v1    # "invitation":Lcom/google/android/gms/games/multiplayer/Invitation;
    .end local v5    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .end local v6    # "success":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v6, v7

    .line 166
    goto :goto_0

    .line 167
    .restart local v6    # "success":Z
    :cond_2
    const-string v7, "0"

    goto :goto_1

    .line 182
    :cond_3
    const-string v7, "Prime31-RTMP"

    const-string v8, "invitation responseCode NOT OK. User most likely cancelled."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    .end local v6    # "success":Z
    :cond_4
    const v8, 0x15f85

    if-ne p1, v8, :cond_9

    .line 187
    if-ne p2, v10, :cond_6

    .line 188
    .restart local v6    # "success":Z
    :goto_3
    const-string v9, "onInvitePlayersCompleted"

    if-eqz v6, :cond_7

    const-string v8, "1"

    :goto_4
    invoke-direct {p0, v9, v8}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-ne p2, v10, :cond_8

    .line 192
    const-string v8, "Prime31-RTMP"

    const-string v9, "invite players result OK. creating room"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "autoMatchCriteria":Landroid/os/Bundle;
    const-string v8, "players"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "min_automatch_players"

    invoke-virtual {p3, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "minAutoMatchPlayers":I
    const-string v8, "max_automatch_players"

    invoke-virtual {p3, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 199
    .local v3, "maxAutoMatchPlayers":I
    const-string v7, "Prime31-RTMP"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invitee count: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v7

    .line 203
    invoke-virtual {v7, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v5

    .line 205
    .restart local v5    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    if-lez v4, :cond_5

    .line 207
    const-wide/16 v7, 0x0

    invoke-static {v4, v3, v7, v8}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    .line 208
    invoke-virtual {v5, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 211
    :cond_5
    sget-object v7, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v8

    iget-object v8, v8, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v8}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    goto :goto_2

    .end local v0    # "autoMatchCriteria":Landroid/os/Bundle;
    .end local v2    # "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "maxAutoMatchPlayers":I
    .end local v4    # "minAutoMatchPlayers":I
    .end local v5    # "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .end local v6    # "success":Z
    :cond_6
    move v6, v7

    .line 187
    goto :goto_3

    .line 188
    .restart local v6    # "success":Z
    :cond_7
    const-string v8, "0"

    goto :goto_4

    .line 215
    :cond_8
    const-string v7, "Prime31-RTMP"

    const-string v8, "invitation responseCode NOT OK. User most likely cancelled."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 218
    .end local v6    # "success":Z
    :cond_9
    const v8, 0x8c8c

    if-ne p1, v8, :cond_0

    .line 220
    if-ne p2, v10, :cond_a

    .line 221
    .restart local v6    # "success":Z
    :goto_5
    const-string v8, "onWaitingRoomCompleted"

    if-eqz v6, :cond_b

    const-string v7, "1"

    :goto_6
    invoke-direct {p0, v8, v7}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-ne p2, v10, :cond_c

    .line 225
    const-string v7, "Prime31-RTMP"

    const-string v8, "waiting room result OK. Clear to start the multiplayer game."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6    # "success":Z
    :cond_a
    move v6, v7

    .line 220
    goto :goto_5

    .line 221
    .restart local v6    # "success":Z
    :cond_b
    const-string v7, "0"

    goto :goto_6

    .line 230
    :cond_c
    invoke-virtual {p0}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom()V

    goto/16 :goto_2
.end method

.method public onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 604
    const-string v0, "onConnectedToRoom"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "Prime31-RTMP"

    const-string v1, "onConnectedToRoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method public onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 612
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .line 615
    const-string v0, "onDisconnectedFromRoom"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "Prime31-RTMP"

    const-string v1, "onDisconnectedFromRoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 3
    .param p1, "invitation"    # Lcom/google/android/gms/games/multiplayer/Invitation;

    .prologue
    .line 511
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInvitationReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "onInvitationReceived"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    const-string v1, "onInvitationReceived"

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendTBMultiplayerMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInvitationRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "onInvitationRemoved"

    invoke-direct {p0, v0, p1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    const-string v1, "onInvitationRemoved"

    invoke-virtual {v0, v1, p1}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendTBMultiplayerMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 533
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onJoinedRoom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->logRoomUpdateStatusCode(I)V

    .line 535
    invoke-direct {p0, p2}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 538
    const-string v0, "onJoinedRoom"

    invoke-direct {p0, p2, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoomAndStatus(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "roomId"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v0, "Prime31-RTMP"

    const-string v1, "onLeftRoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->logRoomUpdateStatusCode(I)V

    .line 547
    const-string v0, "onLeftRoom"

    invoke-direct {p0, v0, p2}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "participantId"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string v0, "onP2PConnected"

    invoke-direct {p0, v0, p1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "Prime31-RTMP"

    const-string v1, "onP2PConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "participantId"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "onP2PDisconnected"

    invoke-direct {p0, v0, p1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "Prime31-RTMP"

    const-string v1, "onP2PDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method public onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 641
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeerDeclined"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 641
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerDeclined"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 652
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeerInvitedToRoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 652
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerInvitedToRoom"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 663
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeerJoined"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void

    .line 663
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerJoined"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 674
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeerLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void

    .line 674
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerLeft"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 685
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeersConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 685
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerConnected"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .locals 3
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, "participantIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 696
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 698
    const-string v1, "Prime31-RTMP"

    const-string v2, "onPeersDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void

    .line 696
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 697
    .local v0, "id":Ljava/lang/String;
    const-string v2, "onPeerDisconnected"

    invoke-direct {p0, v2, v0}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getMessageData()[B

    move-result-object v0

    .line 583
    .local v0, "messageData":[B
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->getSenderParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "senderParticipantId":Ljava/lang/String;
    iget-object v2, p0, Lcom/prime31/RealtimeMultiplayer;->_realtimeMessageListener:Lcom/prime31/IRealTimeMessageReceivedListener;

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/prime31/RealtimeMultiplayer;->_realtimeMessageListener:Lcom/prime31/IRealTimeMessageReceivedListener;

    invoke-interface {v2, v1, v0}, Lcom/prime31/IRealTimeMessageReceivedListener;->onRawMessageReceived(Ljava/lang/String;[B)V

    .line 592
    :cond_0
    return-void
.end method

.method public onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 706
    const-string v0, "onRoomAutoMatching"

    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "Prime31-RTMP"

    const-string v1, "onRoomAutoMatching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 554
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRoomConnected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->logRoomUpdateStatusCode(I)V

    .line 556
    invoke-direct {p0, p2}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 559
    const-string v0, "onRoomConnected"

    invoke-direct {p0, p2, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoomAndStatus(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 2
    .param p1, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 715
    const-string v0, "onRoomConnecting"

    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "Prime31-RTMP"

    const-string v1, "onRoomConnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void
.end method

.method public onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "room"    # Lcom/google/android/gms/games/multiplayer/realtime/Room;

    .prologue
    .line 566
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRoomCreated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0, p1}, Lcom/prime31/RealtimeMultiplayer;->logRoomUpdateStatusCode(I)V

    .line 568
    invoke-direct {p0, p2}, Lcom/prime31/RealtimeMultiplayer;->updateRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    .line 571
    const-string v0, "onRoomCreated"

    invoke-direct {p0, p2, p1}, Lcom/prime31/RealtimeMultiplayer;->jsonFromRoomAndStatus(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/prime31/RealtimeMultiplayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public sendReliableRealtimeMessage(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .prologue
    .line 427
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 429
    :cond_0
    const-string v0, "Prime31-RTMP"

    const-string v1, "cannot send a message due to the player not being connected to a room"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 435
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot send a message to a participant that has not joined the room. Particpent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v2, p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_3
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 440
    .local v6, "res":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 441
    const-string v0, "Prime31-RTMP"

    const-string v1, "realtime message send failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReliableRealtimeMessageToAll([B)V
    .locals 9
    .param p1, "message"    # [B

    .prologue
    .line 447
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 449
    :cond_0
    const-string v0, "Prime31-RTMP"

    const-string v1, "cannot send a message due to the player not being connected to a room"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    return-void

    .line 453
    :cond_2
    invoke-virtual {p0}, Lcom/prime31/RealtimeMultiplayer;->getCurrentPlayerParticipantId()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "currentPlayerParticipantId":Ljava/lang/String;
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 456
    .local v5, "participantId":Ljava/lang/String;
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0, v5}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 459
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    sget-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 463
    .local v7, "res":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    .line 464
    const-string v0, "Prime31-RTMP"

    const-string v1, "realtime message send failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUnreliableRealtimeMessage(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "message"    # [B

    .prologue
    .line 471
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 473
    :cond_0
    const-string v1, "Prime31-RTMP"

    const-string v2, "cannot send a message due to the player not being connected to a room"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 479
    const-string v1, "Prime31-RTMP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot send a message to a participant that has not joined the room. Particpent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3, p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipantStatus(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_3
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 484
    .local v0, "res":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 485
    const-string v1, "Prime31-RTMP"

    const-string v2, "realtime message send failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUnreliableRealtimeMessageToAll([B)V
    .locals 4
    .param p1, "message"    # [B

    .prologue
    .line 491
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getParticipants()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 493
    :cond_0
    const-string v1, "Prime31-RTMP"

    const-string v2, "cannot send a message due to the player not being connected to a room"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    sget-object v1, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->sendUnreliableMessageToOthers(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I

    move-result v0

    .line 498
    .local v0, "res":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 499
    const-string v1, "Prime31-RTMP"

    const-string v2, "realtime message send failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRealtimeMessageListener(Lcom/prime31/IRealTimeMessageReceivedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/prime31/IRealTimeMessageReceivedListener;

    .prologue
    .line 238
    const-string v0, "Prime31-RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adding the realtime message listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iput-object p1, p0, Lcom/prime31/RealtimeMultiplayer;->_realtimeMessageListener:Lcom/prime31/IRealTimeMessageReceivedListener;

    .line 240
    return-void
.end method

.method public showInvitationInbox()V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/RealtimeMultiplayer$1;

    invoke-direct {v1, p0}, Lcom/prime31/RealtimeMultiplayer$1;-><init>(Lcom/prime31/RealtimeMultiplayer;)V

    invoke-virtual {v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public showPlayerSelector(II)V
    .locals 2
    .param p1, "minPlayers"    # I
    .param p2, "maxPlayers"    # I

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom(Z)V

    .line 285
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/RealtimeMultiplayer$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/RealtimeMultiplayer$3;-><init>(Lcom/prime31/RealtimeMultiplayer;II)V

    invoke-virtual {v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public showWaitingRoom(I)V
    .locals 2
    .param p1, "minParticipantsToStart"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/prime31/RealtimeMultiplayer;->_room:Lcom/google/android/gms/games/multiplayer/realtime/Room;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "Prime31-RTMP"

    const-string v1, "the current room is null so we cannot show a waiting room"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/RealtimeMultiplayer$5;

    invoke-direct {v1, p0, p1}, Lcom/prime31/RealtimeMultiplayer$5;-><init>(Lcom/prime31/RealtimeMultiplayer;I)V

    invoke-virtual {v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
