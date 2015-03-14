.class final Lcom/fiksu/asotracking/FiksuConfiguration;
.super Ljava/lang/Object;
.source "FiksuConfiguration.java"


# static fields
.field private static final DEBUG_MODE_ENABLED_KEY:Ljava/lang/String; = "debug_mode_enabled"

.field private static final DEFAULT_DEBUG_MODE_ENABLED_SETTING:Z = false

.field private static final DEFAULT_FACEBOOK_ATTRIBUTION_SETTING:Z = true

.field private static final FACEBOOK_ATTRIBUTION_KEY:Ljava/lang/String; = "facebook_attribution"

.field private static final LAST_UPDATE_TIMESTAMP:Ljava/lang/String; = "last_update_timestamp"


# instance fields
.field private mDebugModeEnabled:Z

.field private mFacebookAttributionEnabled:Z

.field private mLastUpdateTimestamp:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 42
    return-void
.end method

.method private static getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 86
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 85
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 86
    .local v0, "jsonException":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method hasEverSynchedWithServer()Z
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDebugModeEnabled()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    return v0
.end method

.method isFacebookAttributionEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    return v0
.end method

.method isUpToDate()Z
    .locals 6

    .prologue
    .line 103
    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x1b7740

    .line 104
    .local v0, "threshold":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 103
    .end local v0    # "threshold":J
    :cond_0
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 104
    .restart local v0    # "threshold":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method readFromJSONObject(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string v0, "facebook_attribution"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-static {p1, v0, v1}, Lcom/fiksu/asotracking/FiksuConfiguration;->getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 76
    const-string v0, "debug_mode_enabled"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-static {p1, v0, v1}, Lcom/fiksu/asotracking/FiksuConfiguration;->getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method readFromSharedPreferences(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 63
    :cond_0
    const-string v0, "facebook_attribution"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 64
    const-string v0, "debug_mode_enabled"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 65
    const-string v0, "last_update_timestamp"

    iget-wide v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setDebugModeEnabled(Z)V
    .locals 0
    .param p1, "debugModeEnabled"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 126
    return-void
.end method

.method updateLastUpdateTimestamp()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 96
    return-void
.end method

.method writeToSharedPreferences(Landroid/content/SharedPreferences;)Z
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 49
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "facebook_attribution"

    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "debug_mode_enabled"

    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "last_update_timestamp"

    iget-wide v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0
.end method
