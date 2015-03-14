.class public Lcom/prime31/PlayGameServicesPlugin;
.super Lcom/prime31/PlayGameServicesPluginBase;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Lcom/google/android/gms/games/quest/QuestUpdateListener;
.implements Lcom/prime31/GameHelper$GameHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prime31/PlayGameServicesPlugin$AchievementListener;,
        Lcom/prime31/PlayGameServicesPlugin$ListenerBase;,
        Lcom/prime31/PlayGameServicesPlugin$ScoreLoadListener;,
        Lcom/prime31/PlayGameServicesPlugin$ScoreSubmitListener;
    }
.end annotation


# static fields
.field private static final _leaderboardRequestCode:I = 0x10cb3

.field private static final _questListRequestCode:I = 0x16

.field private static final _savedGamesRequestCode:I = 0x21

.field private static final _shareRequestCode:I = 0x86ef


# instance fields
.field private MAX_SNAPSHOT_RESOLVE_RETRIES:I

.field private _achievementMetadataJson:Ljava/lang/String;

.field private _cloudDataMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _enableDebugLog:Z

.field private _imageManager:Lcom/google/android/gms/common/images/ImageManager;

.field private _leaderboardMetadataJson:Ljava/lang/String;

.field public helper:Lcom/prime31/GameHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/prime31/PlayGameServicesPluginBase;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_enableDebugLog:Z

    .line 80
    const-string v0, "[]"

    iput-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_achievementMetadataJson:Ljava/lang/String;

    .line 81
    const-string v0, "[]"

    iput-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_leaderboardMetadataJson:Ljava/lang/String;

    .line 1531
    const/4 v0, 0x3

    iput v0, p0, Lcom/prime31/PlayGameServicesPlugin;->MAX_SNAPSHOT_RESOLVE_RETRIES:I

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromLeaderboardScoreBuffer(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/achievement/AchievementBuffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromAchievementBuffer(Lcom/google/android/gms/games/achievement/AchievementBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/prime31/PlayGameServicesPlugin;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$11(Lcom/prime31/PlayGameServicesPlugin;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->appStateStatusCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/event/EventBuffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromEventBuffer(Lcom/google/android/gms/games/event/EventBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 1

    .prologue
    .line 1532
    invoke-direct {p0, p1, p2, p3}, Lcom/prime31/PlayGameServicesPlugin;->processSnapshotOpenResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/snapshot/Snapshot;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/quest/Milestone;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromQuestMilestone(Lcom/google/android/gms/games/quest/Milestone;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin;->_achievementMetadataJson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromLeaderboardBuffer(Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin;->_leaderboardMetadataJson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/prime31/PlayGameServicesPlugin;)Z
    .locals 1

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/prime31/PlayGameServicesPlugin;->shouldDisableDrive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/prime31/PlayGameServicesPlugin;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_enableDebugLog:Z

    return v0
.end method

.method static synthetic access$7(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/Player;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->playerToMap(Lcom/google/android/gms/games/Player;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/prime31/PlayGameServicesPlugin;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    return-object v0
.end method

.method static synthetic access$9(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 956
    invoke-static {p0}, Lcom/prime31/PlayGameServicesPlugin;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private appStateStatusCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 373
    sparse-switch p1, :sswitch_data_0

    .line 405
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received an error code we did not recognize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "UKNOWN_ERROR"

    :goto_0
    return-object v0

    .line 376
    :sswitch_0
    const-string v0, "STATUS_WRITE_OUT_OF_DATE_VERSION"

    goto :goto_0

    .line 378
    :sswitch_1
    const-string v0, "STATUS_STATE_KEY_NOT_FOUND"

    goto :goto_0

    .line 380
    :sswitch_2
    const-string v0, "STATUS_NETWORK_ERROR_NO_DATA"

    goto :goto_0

    .line 382
    :sswitch_3
    const-string v0, "STATUS_NETWORK_ERROR_STALE_DATA"

    goto :goto_0

    .line 384
    :sswitch_4
    const-string v0, "STATUS_DEVELOPER_ERROR"

    goto :goto_0

    .line 386
    :sswitch_5
    const-string v0, "STATUS_INTERNAL_ERROR"

    goto :goto_0

    .line 388
    :sswitch_6
    const-string v0, "STATUS_INTERRUPTED"

    goto :goto_0

    .line 390
    :sswitch_7
    const-string v0, "STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    goto :goto_0

    .line 392
    :sswitch_8
    const-string v0, "STATUS_NETWORK_ERROR_OPERATION_FAILED"

    goto :goto_0

    .line 394
    :sswitch_9
    const-string v0, "STATUS_OK"

    goto :goto_0

    .line 396
    :sswitch_a
    const-string v0, "STATUS_STATE_KEY_LIMIT_EXCEEDED"

    goto :goto_0

    .line 398
    :sswitch_b
    const-string v0, "STATUS_TIMEOUT"

    goto :goto_0

    .line 400
    :sswitch_c
    const-string v0, "STATUS_WRITE_SIZE_EXCEEDED"

    goto :goto_0

    .line 402
    :sswitch_d
    const-string v0, "STATUS_CLIENT_RECONNECT_REQUIRED"

    goto :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_5
        0x2 -> :sswitch_d
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_4
        0xe -> :sswitch_6
        0xf -> :sswitch_b
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_c
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_a
    .end sparse-switch
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 958
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 959
    .local v3, "width":I
    if-lez v3, :cond_0

    .line 960
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 961
    .local v2, "height":I
    if-lez v2, :cond_1

    .line 963
    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 964
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 965
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    return-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    :cond_0
    move v3, v4

    .line 959
    goto :goto_0

    .restart local v2    # "height":I
    :cond_1
    move v2, v4

    .line 961
    goto :goto_1
.end method

.method public static gamesStatusErrorCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 414
    sparse-switch p0, :sswitch_data_0

    .line 472
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received an error code we did not recognize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "UKNOWN_ERROR"

    :goto_0
    return-object v0

    .line 417
    :sswitch_0
    const-string v0, "STATUS_OK"

    goto :goto_0

    .line 419
    :sswitch_1
    const-string v0, "STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    goto :goto_0

    .line 421
    :sswitch_2
    const-string v0, "STATUS_NETWORK_ERROR_NO_DATA"

    goto :goto_0

    .line 423
    :sswitch_3
    const-string v0, "STATUS_NETWORK_ERROR_STALE_DATA"

    goto :goto_0

    .line 425
    :sswitch_4
    const-string v0, "STATUS_LICENSE_CHECK_FAILED"

    goto :goto_0

    .line 429
    :sswitch_5
    const-string v0, "STATUS_MATCH_ERROR_LOCALLY_MODIFIED"

    goto :goto_0

    .line 431
    :sswitch_6
    const-string v0, "STATUS_MATCH_ERROR_INACTIVE_MATCH"

    goto :goto_0

    .line 433
    :sswitch_7
    const-string v0, "STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION"

    goto :goto_0

    .line 435
    :sswitch_8
    const-string v0, "STATUS_MATCH_ERROR_ALREADY_REMATCHED"

    goto :goto_0

    .line 437
    :sswitch_9
    const-string v0, "STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    goto :goto_0

    .line 439
    :sswitch_a
    const-string v0, "STATUS_MATCH_ERROR_INVALID_MATCH_STATE"

    goto :goto_0

    .line 441
    :sswitch_b
    const-string v0, "STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS"

    goto :goto_0

    .line 444
    :sswitch_c
    const-string v0, "STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    goto :goto_0

    .line 446
    :sswitch_d
    const-string v0, "STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION"

    goto :goto_0

    .line 448
    :sswitch_e
    const-string v0, "STATUS_MULTIPLAYER_DISABLED"

    goto :goto_0

    .line 451
    :sswitch_f
    const-string v0, "STATUS_CLIENT_RECONNECT_REQUIRED"

    goto :goto_0

    .line 453
    :sswitch_10
    const-string v0, "STATUS_INTERNAL_ERROR"

    goto :goto_0

    .line 456
    :sswitch_11
    const-string v0, "STATUS_SNAPSHOT_CONFLICT"

    goto :goto_0

    .line 458
    :sswitch_12
    const-string v0, "STATUS_SNAPSHOT_COMMIT_FAILED"

    goto :goto_0

    .line 460
    :sswitch_13
    const-string v0, "STATUS_SNAPSHOT_CONFLICT_MISSING"

    goto :goto_0

    .line 462
    :sswitch_14
    const-string v0, "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE"

    goto :goto_0

    .line 464
    :sswitch_15
    const-string v0, "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE"

    goto :goto_0

    .line 466
    :sswitch_16
    const-string v0, "STATUS_SNAPSHOT_FOLDER_UNAVAILABLE"

    goto :goto_0

    .line 468
    :sswitch_17
    const-string v0, "STATUS_SNAPSHOT_NOT_FOUND"

    goto :goto_0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x7 -> :sswitch_4
        0xfa0 -> :sswitch_17
        0xfa1 -> :sswitch_15
        0xfa2 -> :sswitch_14
        0xfa3 -> :sswitch_12
        0xfa4 -> :sswitch_11
        0xfa5 -> :sswitch_16
        0xfa6 -> :sswitch_13
        0x1771 -> :sswitch_c
        0x1773 -> :sswitch_e
        0x1774 -> :sswitch_d
        0x1964 -> :sswitch_9
        0x1965 -> :sswitch_6
        0x1966 -> :sswitch_a
        0x1967 -> :sswitch_7
        0x1968 -> :sswitch_b
        0x1969 -> :sswitch_8
        0x196b -> :sswitch_5
    .end sparse-switch
.end method

.method private jsonFromAchievementBuffer(Lcom/google/android/gms/games/achievement/AchievementBuffer;)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # Lcom/google/android/gms/games/achievement/AchievementBuffer;

    .prologue
    .line 95
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 98
    .local v3, "jsonArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->close()V

    .line 139
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 98
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/Achievement;

    .line 100
    .local v0, "a":Lcom/google/android/gms/games/achievement/Achievement;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "achievementId"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v5, "state"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v5, "type"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v5, "name"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v5, "achievementDescription"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v5, "revealedIconUrl"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v5, "unlockedIconUrl"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v5, "xpValue"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 113
    const-string v5, "completedSteps"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v5, "numberOfSteps"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v5

    if-nez v5, :cond_2

    .line 117
    const-string v5, "progress"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    :goto_2
    const-string v5, "formattedCompletedSteps"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v5, "formattedNumberOfSteps"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_1
    const-string v5, "lastUpdatedTimestamp"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 130
    .end local v0    # "a":Lcom/google/android/gms/games/achievement/Achievement;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v4, "Prime31"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating JSON: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->close()V

    goto/16 :goto_1

    .line 120
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "a":Lcom/google/android/gms/games/achievement/Achievement;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    const-string v5, "progress"

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v6

    invoke-interface {v0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 135
    .end local v0    # "a":Lcom/google/android/gms/games/achievement/Achievement;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->close()V

    .line 137
    throw v4
.end method

.method private jsonFromEventBuffer(Lcom/google/android/gms/games/event/EventBuffer;)Ljava/lang/String;
    .locals 7
    .param p1, "buffer"    # Lcom/google/android/gms/games/event/EventBuffer;

    .prologue
    .line 212
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 215
    .local v2, "jsonArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->close()V

    .line 238
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 215
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/event/Event;

    .line 217
    .local v0, "e":Lcom/google/android/gms/games/event/Event;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 220
    const-string v4, "eventDescription"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v4, "eventId"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v4, "imageUrl"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v4, "name"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v4, "visible"

    invoke-interface {v0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v0    # "e":Lcom/google/android/gms/games/event/Event;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating JSON"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->close()V

    goto :goto_1

    .line 234
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/games/event/EventBuffer;->close()V

    .line 236
    throw v3
.end method

.method private jsonFromLeaderboardBuffer(Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)Ljava/lang/String;
    .locals 7
    .param p1, "buffer"    # Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    .prologue
    .line 145
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 148
    .local v2, "jsonArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    .line 169
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 148
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 150
    .local v3, "l":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "json":Lorg/json/JSONObject;
    const-string v5, "iconUrl"

    invoke-interface {v3}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v5, "leaderboardId"

    invoke-interface {v3}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v5, "order"

    invoke-interface {v3}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string v5, "title"

    invoke-interface {v3}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "l":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v4, "Prime31"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating JSON"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    goto :goto_1

    .line 165
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    .line 167
    throw v4
.end method

.method private jsonFromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "s"    # Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .param p2, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "leaderboardId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v2, "value"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string v2, "formattedScore"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v2, "formattedRank"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v2, "rank"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    const-string v2, "playerId"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v2, "displayName"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "avatarUrl"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "avatarUrlHiRes"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v2, "writeTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 192
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

.method private jsonFromLeaderboardScoreBuffer(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .param p2, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 203
    .local v0, "jsonArr":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 203
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 204
    .local v1, "s":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    invoke-direct {p0, v1, p2}, Lcom/prime31/PlayGameServicesPlugin;->jsonFromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private jsonObjectFromQuest(Lcom/google/android/gms/games/quest/Quest;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "quest"    # Lcom/google/android/gms/games/quest/Quest;

    .prologue
    .line 244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "questId"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v2, "name"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v2, "questDescription"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v2, "iconUrl"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getIconImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v2, "bannerUrl"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getBannerImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v2, "state"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getState()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string v2, "startTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getStartTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    const-string v2, "expirationTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getEndTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v2, "acceptedTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getAcceptedTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    const-string v2, "currentMilestone"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromQuestMilestone(Lcom/google/android/gms/games/quest/Milestone;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private jsonObjectFromQuestMilestone(Lcom/google/android/gms/games/quest/Milestone;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "milestone"    # Lcom/google/android/gms/games/quest/Milestone;

    .prologue
    .line 307
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "questMilestoneId"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v3, "questId"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v3, "currentCount"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 315
    const-string v3, "targetCount"

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 317
    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 318
    .local v2, "reward":Ljava/lang/String;
    const-string v3, "rewardData"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    .end local v2    # "reward":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private jsonObjectFromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "snapshot"    # Lcom/google/android/gms/games/snapshot/Snapshot;

    .prologue
    .line 289
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "metadata"

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v2, "data"

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->readFully()[B

    move-result-object v3

    invoke-static {v3}, Lcom/prime31/GPS/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private jsonObjectFromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "metadata"    # Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .prologue
    .line 270
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "lastModifiedTimestamp"

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    const-string v2, "description"

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v2, "name"

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p0, "requestCode"    # I
    .param p1, "responseCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 565
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2, p0, p1, p2}, Lcom/prime31/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 567
    const/16 v2, 0x2714

    if-ne p1, v2, :cond_0

    .line 568
    const-string v2, "Prime31"

    const-string v3, "This log is here to tell you Google has returned the following error: RESULT_APP_MISCONFIGURED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    const v2, 0x10cb3

    if-ne p0, v2, :cond_3

    const/16 v2, 0x2711

    if-ne p1, v2, :cond_3

    .line 572
    const-string v2, "Prime31"

    const-string v3, "Activity done. User potentially signed out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 575
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detected a disconnected Google API client. checking actual property. isSignedIn: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prime31/PlayGameServicesPlugin;->isSignedIn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "userSignedOut"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_1
    :goto_1
    return-void

    .line 579
    :cond_2
    const-string v2, "Prime31"

    const-string v3, "detected a connected Google API client. disconnecting it now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->disconnect()V

    goto :goto_0

    .line 585
    :cond_3
    const v2, 0x86ef

    if-ne p0, v2, :cond_5

    .line 587
    if-ne p1, v4, :cond_4

    .line 589
    const-string v2, "Prime31"

    const-string v3, "share RESULT OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "finishedSharing"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 594
    :cond_4
    const-string v2, "Prime31"

    const-string v3, "share RESULT NOT OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "finishedSharing"

    const-string v4, "User canceled"

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_5
    const/16 v2, 0x16

    if-ne p0, v2, :cond_6

    .line 600
    const-string v2, "Prime31"

    const-string v3, "quest list complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-ne p1, v4, :cond_1

    .line 603
    const-string v2, "Prime31"

    const-string v3, "quest list OK response. searching for selected quest..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v2, "quest"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    .line 605
    .local v0, "quest":Lcom/google/android/gms/games/quest/Quest;
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "questListLauncherAcceptedQuest"

    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v4

    invoke-direct {v4, v0}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromQuest(Lcom/google/android/gms/games/quest/Quest;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 608
    .end local v0    # "quest":Lcom/google/android/gms/games/quest/Quest;
    :cond_6
    const/16 v2, 0x21

    if-ne p0, v2, :cond_9

    .line 610
    if-eqz p2, :cond_8

    if-ne p1, v4, :cond_8

    .line 612
    const-string v2, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 615
    sget-object v2, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/snapshot/Snapshots;->getSnapshotFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    .line 616
    .local v1, "snapshotMetadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "snapshotListUserSelectedSnapshot"

    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v4

    invoke-direct {v4, v1}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    .end local v1    # "snapshotMetadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_7
    const-string v2, "com.google.android.gms.games.SNAPSHOT_NEW"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "snapshotListUserRequestedNewSnapshot"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 626
    :cond_8
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const-string v3, "snapshotListCanceled"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 631
    :cond_9
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->turnBasedMultiplayerInstance()Lcom/prime31/TurnBasedMultiplayer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/prime31/TurnBasedMultiplayer;->onActivityResult(IILandroid/content/Intent;)V

    .line 632
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->realtimeMultiplayerInstance()Lcom/prime31/RealtimeMultiplayer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/prime31/RealtimeMultiplayer;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public static onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    const-string v0, "Prime31"

    const-string v1, "onCreate. calling through to init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prime31/PlayGameServicesPlugin;->init()V

    .line 540
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 552
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->turnBasedMultiplayerInstance()Lcom/prime31/TurnBasedMultiplayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prime31/TurnBasedMultiplayer;->onResume()V

    .line 553
    return-void
.end method

.method public static onStart()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "Prime31"

    const-string v1, "onStart. calling through to onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prime31/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 547
    return-void
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 558
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->instance()Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v0}, Lcom/prime31/GameHelper;->onStop()V

    .line 559
    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->realtimeMultiplayerInstance()Lcom/prime31/RealtimeMultiplayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prime31/RealtimeMultiplayer;->leaveRoom(Z)V

    .line 560
    return-void
.end method

.method private playerToMap(Lcom/google/android/gms/games/Player;)Ljava/util/HashMap;
    .locals 3
    .param p1, "player"    # Lcom/google/android/gms/games/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Player;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "avatarUri"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "avatarUrl"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "avatarUriHiRes"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "avatarUrlHiRes"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v1, "name"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "playerId"

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-object v0
.end method

.method private processSnapshotOpenResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;
    .locals 9
    .param p1, "result"    # Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    .param p2, "retryCount"    # I
    .param p3, "conflictPolicy"    # I

    .prologue
    .line 1534
    const/4 v1, 0x0

    .line 1535
    .local v1, "mResolvedSnapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    add-int/lit8 p2, p2, 0x1

    .line 1536
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v4

    .line 1537
    .local v4, "status":I
    const-string v5, "Prime31"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "save Result status: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    if-nez v4, :cond_0

    .line 1541
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    .line 1571
    :goto_0
    return-object v5

    .line 1543
    :cond_0
    const/16 v5, 0xfa2

    if-ne v4, v5, :cond_1

    .line 1545
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    goto :goto_0

    .line 1547
    :cond_1
    const/16 v5, 0xfa4

    if-ne v4, v5, :cond_4

    .line 1549
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    .line 1550
    .local v3, "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v0

    .line 1553
    .local v0, "conflictSnapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    move-object v1, v3

    .line 1555
    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v5

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 1556
    move-object v1, v0

    .line 1558
    :cond_2
    sget-object v5, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v6}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getConflictId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Lcom/google/android/gms/games/snapshot/Snapshots;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    .line 1559
    invoke-interface {v5}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 1561
    .local v2, "resolveResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    iget v5, p0, Lcom/prime31/PlayGameServicesPlugin;->MAX_SNAPSHOT_RESOLVE_RETRIES:I

    if-ge p2, v5, :cond_3

    .line 1563
    invoke-direct {p0, v2, p2, p3}, Lcom/prime31/PlayGameServicesPlugin;->processSnapshotOpenResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v5

    goto :goto_0

    .line 1567
    :cond_3
    const-string v5, "Prime31"

    const-string v6, "Could not resolve snapshot conflicts"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v0    # "conflictSnapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    .end local v2    # "resolveResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    .end local v3    # "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private shouldDisableDrive()Z
    .locals 6

    .prologue
    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 516
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 517
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "com.prime31.PlayGameServicesPlugin.DisableDrive"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    const-string v3, "Prime31"

    const-string v4, "found meta-data tag to disable Drive API scope"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    const/4 v3, 0x1

    .line 528
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 523
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load meta-data, NameNotFound: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attemptSilentAuthentication()V
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$3;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$3;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 686
    return-void
.end method

.method public authenticate()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    iget-object v0, v0, Lcom/prime31/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Lcom/prime31/GameHelper;->mActivity:Landroid/app/Activity;

    .line 719
    :cond_0
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$5;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$5;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method public deleteCloudDataForKey(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "useRemoteDataForConflictResolution"    # Z

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v0}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/appstate/AppStateManager;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$14;

    invoke-direct {v1, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$14;-><init>(Lcom/prime31/PlayGameServicesPlugin;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1113
    return-void
.end method

.method public deleteSnapshot(Ljava/lang/String;)V
    .locals 1
    .param p1, "snapshotName"    # Ljava/lang/String;

    .prologue
    .line 1468
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$29;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$29;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1527
    return-void
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "shouldEnable"    # Z

    .prologue
    .line 842
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v0, p1}, Lcom/prime31/GameHelper;->enableDebugLog(Z)V

    .line 846
    :goto_0
    return-void

    .line 845
    :cond_0
    iput-boolean p1, p0, Lcom/prime31/PlayGameServicesPlugin;->_enableDebugLog:Z

    goto :goto_0
.end method

.method public getAllAchievementMetadata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_achievementMetadataJson:Ljava/lang/String;

    return-object v0
.end method

.method public getAllLeaderboardMetadata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_leaderboardMetadataJson:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 645
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    if-ne p1, v2, :cond_1

    .line 646
    :cond_0
    const-string p1, "oauth2:https://www.googleapis.com/auth/plus.login"

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 650
    .local v0, "accountName":Ljava/lang/String;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "using scope: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 658
    .end local v0    # "accountName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 653
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception getting auth token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLaunchInvitation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->hasInvitation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "inviteId":Ljava/lang/String;
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->clearInvitation()V

    .line 671
    .end local v0    # "inviteId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPlayerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 781
    :try_start_0
    sget-object v2, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v3}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v1

    .line 782
    .local v1, "player":Lcom/google/android/gms/games/Player;
    invoke-direct {p0, v1}, Lcom/prime31/PlayGameServicesPlugin;->playerToMap(Lcom/google/android/gms/games/Player;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prime31/PlayGameServicesPlugin;->jsonize(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 789
    .end local v1    # "player":Lcom/google/android/gms/games/Player;
    :goto_0
    return-object v2

    .line 784
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception getting local player info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v2, "{}"

    goto :goto_0
.end method

.method public incrementAchievement(Ljava/lang/String;I)V
    .locals 1
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 1158
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/prime31/PlayGameServicesPlugin$18;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method public incrementEvent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "steps"    # I

    .prologue
    .line 1279
    sget-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/event/Events;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 1280
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 691
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$4;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$4;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    return-void
.end method

.method public isSignedIn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 743
    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    if-nez v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v3

    .line 748
    :cond_1
    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v4}, Lcom/prime31/GameHelper;->isSignedIn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    :try_start_0
    sget-object v4, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v5}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "hi":Ljava/lang/String;
    sget-object v4, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v5}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 757
    .local v2, "player":Lcom/google/android/gms/games/Player;
    const/4 v3, 0x1

    goto :goto_0

    .line 759
    .end local v1    # "hi":Ljava/lang/String;
    .end local v2    # "player":Lcom/google/android/gms/games/Player;
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "Prime31"

    const-string v5, "SecurityException thrown which indicates we actually arent signed in. performing signOut now to reset all flags"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v4, Lcom/prime31/PlayGameServicesPlugin$7;

    invoke-direct {v4, p0}, Lcom/prime31/PlayGameServicesPlugin$7;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v4}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAllEvents()V
    .locals 3

    .prologue
    .line 1285
    sget-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/event/Events;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 1286
    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$24;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$24;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1301
    return-void
.end method

.method public loadBasicModelData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 335
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$1;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$1;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 352
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$2;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$2;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 368
    return-void
.end method

.method public loadCloudDataForKey(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "useRemoteDataForConflictResolution"    # Z

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v0}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/appstate/AppStateManager;->load(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$13;

    invoke-direct {v1, p0, p2}, Lcom/prime31/PlayGameServicesPlugin$13;-><init>(Lcom/prime31/PlayGameServicesPlugin;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1083
    return-void
.end method

.method public loadCurrentPlayerLeaderboardScore(Ljava/lang/String;I)V
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "timeScope"    # I

    .prologue
    .line 1238
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 1239
    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$23;

    invoke-direct {v1, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$23;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1262
    return-void
.end method

.method public loadPlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;

    .prologue
    .line 795
    sget-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/Players;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$8;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$8;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 812
    return-void
.end method

.method public loadProfileImageForUri(Ljava/lang/String;)V
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 851
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 853
    :cond_0
    const-string v1, "Prime31"

    const-string v2, "invalid or null profile image uri. aborting load."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 859
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v1, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    .line 862
    :cond_2
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "converted to uri and starting load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$10;

    invoke-direct {v1, p0, v0}, Lcom/prime31/PlayGameServicesPlugin$10;-><init>(Lcom/prime31/PlayGameServicesPlugin;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadScoresForLeaderboard(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "timeScope"    # I
    .param p3, "isSocial"    # Z
    .param p4, "personalWindow"    # Z

    .prologue
    .line 1220
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$22;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/prime31/PlayGameServicesPlugin$22;-><init>(Lcom/prime31/PlayGameServicesPlugin;ZLjava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1233
    return-void
.end method

.method public loadSnapshot(Ljava/lang/String;)V
    .locals 1
    .param p1, "snapshotName"    # Ljava/lang/String;

    .prologue
    .line 1338
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$27;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$27;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1391
    return-void
.end method

.method public onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V
    .locals 4
    .param p1, "quest"    # Lcom/google/android/gms/games/quest/Quest;

    .prologue
    .line 1853
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getQuestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Quest;->getCurrentMilestone()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/quest/Quests;->claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 1854
    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$30;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$30;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1869
    const-string v0, "questCompleted"

    invoke-direct {p0, p1}, Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromQuest(Lcom/google/android/gms/games/quest/Quest;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    return-void
.end method

.method public onSignInFailed()V
    .locals 4

    .prologue
    .line 1833
    const-string v0, "Unknown error"

    .line 1834
    .local v0, "error":Ljava/lang/String;
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->hasSignInError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getSignInError()Lcom/prime31/GameHelper$SignInFailureReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prime31/GameHelper$SignInFailureReason;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    :cond_0
    :goto_0
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSignInFailed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string v1, "authenticationFailed"

    invoke-virtual {p0, v1, v0}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return-void

    .line 1836
    :cond_1
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    iget-boolean v1, v1, Lcom/prime31/GameHelper;->mSignInCancelled:Z

    if-eqz v1, :cond_0

    .line 1837
    const-string v0, "Canceled"

    goto :goto_0
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/prime31/PlayGameServicesPlugin;->loadBasicModelData()V

    .line 1822
    const-string v0, "authenticationSucceeded"

    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/Players;->getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {}, Lcom/prime31/PlayGameServicesPlugin;->realtimeMultiplayerInstance()Lcom/prime31/RealtimeMultiplayer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/Invitations;->registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    .line 1826
    sget-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/quest/Quests;->registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    .line 1827
    return-void
.end method

.method public revealAchievement(Ljava/lang/String;)V
    .locals 1
    .param p1, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 1134
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$16;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$16;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1141
    return-void
.end method

.method public saveSnapshot(Ljava/lang/String;Z[BLjava/lang/String;I)V
    .locals 7
    .param p1, "snapshotName"    # Ljava/lang/String;
    .param p2, "createIfMissing"    # Z
    .param p3, "data"    # [B
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "conflictPolicy"    # I

    .prologue
    .line 1396
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$28;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/prime31/PlayGameServicesPlugin$28;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;ZILjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1463
    return-void
.end method

.method public setStateData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # I

    .prologue
    .line 978
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v0}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/appstate/AppStateManager;->updateImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$12;

    invoke-direct {v1, p0}, Lcom/prime31/PlayGameServicesPlugin$12;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1022
    return-void
.end method

.method public setToastSettings(I)V
    .locals 2
    .param p1, "placement"    # I

    .prologue
    .line 817
    const-string v0, "Prime31"

    const-string v1, "revision 17+ of the Play Game Services library does not currently support changing the toast placement"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$9;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$9;-><init>(Lcom/prime31/PlayGameServicesPlugin;I)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 837
    return-void
.end method

.method public showAchievements()V
    .locals 1

    .prologue
    .line 1122
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$15;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$15;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1129
    return-void
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 1
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 1183
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$19;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$19;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1190
    return-void
.end method

.method public showLeaderboards()V
    .locals 1

    .prologue
    .line 1195
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$20;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$20;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1202
    return-void
.end method

.method public showQuestList()V
    .locals 1

    .prologue
    .line 1306
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$25;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$25;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1315
    return-void
.end method

.method public showShareDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefillText"    # Ljava/lang/String;
    .param p2, "urlToShare"    # Ljava/lang/String;

    .prologue
    .line 936
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/prime31/PlayGameServicesPlugin$11;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    return-void
.end method

.method public showSnapshotList(ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "maxSavedGamesToShow"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "allowAddButton"    # Z
    .param p4, "allowDelete"    # Z

    .prologue
    .line 1324
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$26;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/prime31/PlayGameServicesPlugin$26;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;ZZI)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1333
    return-void
.end method

.method public signOut()V
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$6;

    invoke-direct {v0, p0}, Lcom/prime31/PlayGameServicesPlugin$6;-><init>(Lcom/prime31/PlayGameServicesPlugin;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public stateDataForKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1029
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cloud data for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist or has not been loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v0, 0x0

    .line 1033
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public submitScore(Ljava/lang/String;J)V
    .locals 1
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J

    .prologue
    .line 1207
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/prime31/PlayGameServicesPlugin$21;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1215
    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "showsCompletionNotification"    # Z

    .prologue
    .line 1146
    new-instance v0, Lcom/prime31/PlayGameServicesPlugin$17;

    invoke-direct {v0, p0, p1}, Lcom/prime31/PlayGameServicesPlugin$17;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/PlayGameServicesPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 1153
    return-void
.end method
