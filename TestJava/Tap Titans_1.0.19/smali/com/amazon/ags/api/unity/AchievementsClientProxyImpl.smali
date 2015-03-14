.class public Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;
.super Ljava/lang/Object;
.source "AchievementsClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/unity/AchievementsClientProxy;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final JSON_ACHIEVEMENTS_KEY:Ljava/lang/String; = "achievements"

.field private static final JSON_ACHIEVEMENT_DATE_UNLOCKED_KEY:Ljava/lang/String; = "achievementDateUnlocked"

.field private static final JSON_ACHIEVEMENT_DESCRIPTION_KEY:Ljava/lang/String; = "achievementDescription"

.field private static final JSON_ACHIEVEMENT_HIDDEN_KEY:Ljava/lang/String; = "achievementHidden"

.field private static final JSON_ACHIEVEMENT_ID_KEY:Ljava/lang/String; = "achievementId"

.field private static final JSON_ACHIEVEMENT_POINT_VALUE_KEY:Ljava/lang/String; = "achievementPointValue"

.field private static final JSON_ACHIEVEMENT_POSITION_KEY:Ljava/lang/String; = "achievementPosition"

.field private static final JSON_ACHIEVEMENT_PROGRESS_KEY:Ljava/lang/String; = "achievementProgress"

.field private static final JSON_ACHIEVEMENT_TITLE_KEY:Ljava/lang/String; = "achievementTitle"

.field private static final JSON_ACHIEVEMENT_UNLOCKED_KEY:Ljava/lang/String; = "achievementUnlocked"

.field private static final JSON_ERROR_KEY:Ljava/lang/String; = "error"

.field private static final JSON_USER_DATA_KEY:Ljava/lang/String; = "userData"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/ags/api/unity/AchievementsClientProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AchievementsClientProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/ags/api/unity/AchievementsClientProxy;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AchievementsClientProxy;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AchievementsClientProxy;

    .line 50
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AchievementsClientProxy;

    return-object v0
.end method


# virtual methods
.method public requestAchievements(I)V
    .locals 5
    .param p1, "userData"    # I

    .prologue
    .line 116
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 117
    .local v1, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v2

    .line 119
    .local v2, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v1, :cond_0

    .line 120
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Request for achievements will not complete."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 124
    :cond_0
    if-nez v2, :cond_1

    .line 125
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "UnityManager is not initialized. Request for achievements will not complete."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 130
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    if-nez v0, :cond_2

    .line 131
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AchievementsClient cannot be used. Achievements request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$2;-><init>(Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public requestAchievementsForPlayer(Ljava/lang/String;I)V
    .locals 5
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .prologue
    .line 185
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 186
    .local v1, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v2

    .line 188
    .local v2, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v1, :cond_0

    .line 189
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Request for achievements will not complete."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 193
    :cond_0
    if-nez v2, :cond_1

    .line 194
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "UnityManager is not initialized. Request for achievements will not complete."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 199
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    if-nez v0, :cond_2

    .line 200
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AchievementsClient cannot be used. Achievements request will stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v3}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievementsForPlayer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$3;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$3;-><init>(Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;ILjava/lang/String;Lcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public showAchievementsOverlay()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 103
    .local v1, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    if-nez v1, :cond_1

    .line 104
    sget-object v2, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v3, "AmazonGamesClient is not initialized. Will not show achievements overlay."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 109
    .local v0, "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    if-eqz v0, :cond_0

    .line 110
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    goto :goto_0
.end method

.method public updateAchievementProgress(Ljava/lang/String;FI)V
    .locals 5
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "userData"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/api/AmazonGamesClient;

    .line 56
    .local v1, "agsClient":Lcom/amazon/ags/api/AmazonGamesClient;
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v2

    .line 58
    .local v2, "unityManager":Lcom/amazon/ags/api/unity/UnityManager;
    if-nez v1, :cond_0

    .line 59
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AmazonGamesClient is not initialized. Unable to update achievement progress."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 63
    :cond_0
    if-nez v2, :cond_1

    .line 64
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "UnityManager is not initialized. Unable to update achievement progress."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 69
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    if-nez v0, :cond_2

    .line 70
    sget-object v3, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;->TAG:Ljava/lang/String;

    const-string v4, "AchievementsClient cannot be used. Unable to update achievement progress."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v3}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;

    invoke-direct {v4, p0, p1, p3, v2}, Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl$1;-><init>(Lcom/amazon/ags/api/unity/AchievementsClientProxyImpl;Ljava/lang/String;ILcom/amazon/ags/api/unity/UnityManager;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method
