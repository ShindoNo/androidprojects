.class public Lcom/vasilij/unbiasedtime/UnbiasedTime;
.super Ljava/lang/Object;
.source "UnbiasedTime.java"


# static fields
.field private static lastOffset:J

.field private static lastTimestamp:J

.field private static lastUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    sput-wide v0, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastTimestamp:J

    .line 11
    sput-wide v0, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastUptime:J

    .line 12
    sput-wide v0, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastOffset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateOffset(JJJJJ)J
    .locals 8
    .param p0, "ts1"    # J
    .param p2, "ts2"    # J
    .param p4, "up1"    # J
    .param p6, "up2"    # J
    .param p8, "off1"    # J

    .prologue
    .line 20
    sub-long v4, p6, p4

    .line 21
    .local v4, "uptimeElapsed":J
    sub-long v0, p0, p8

    .line 23
    .local v0, "lastRealtime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 24
    add-long v6, v0, v4

    sub-long v2, p2, v6

    .line 30
    .local v2, "offset":J
    :goto_0
    return-wide v2

    .line 27
    .end local v2    # "offset":J
    :cond_0
    sget-wide v2, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastOffset:J

    .restart local v2    # "offset":J
    goto :goto_0
.end method

.method private static getOffset()J
    .locals 10

    .prologue
    .line 38
    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getTimestamp()J

    move-result-wide v2

    .line 39
    .local v2, "timestamp":J
    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getUptime()J

    move-result-wide v6

    .line 41
    .local v6, "uptime":J
    sget-wide v0, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastTimestamp:J

    sget-wide v4, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastUptime:J

    sget-wide v8, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastOffset:J

    invoke-static/range {v0 .. v9}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->calculateOffset(JJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTimestamp()J
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getUptime()J
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static readPreferences(Landroid/content/Context;)V
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v1, "unbiasedTime"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "timestamp"

    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getTimestamp()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastTimestamp:J

    .line 48
    const-string v1, "uptime"

    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getUptime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastUptime:J

    .line 49
    const-string v1, "offset"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/vasilij/unbiasedtime/UnbiasedTime;->lastOffset:J

    .line 50
    return-void
.end method

.method public static vtcOnSessionEnd(Landroid/content/Context;)V
    .locals 0
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->writePreferences(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public static vtcOnSessionStart(Landroid/content/Context;)V
    .locals 0
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->readPreferences(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public static vtcTimestampOffset()J
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method private static writePreferences(Landroid/content/Context;)V
    .locals 5
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v2, "unbiasedTime"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "timestamp"

    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getTimestamp()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v2, "uptime"

    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getUptime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v2, "offset"

    invoke-static {}, Lcom/vasilij/unbiasedtime/UnbiasedTime;->getOffset()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method
