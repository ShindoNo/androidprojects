.class abstract Lcom/fiksu/asotracking/EventTracker;
.super Ljava/lang/Object;
.source "EventTracker.java"


# static fields
.field private static mCachedContext:Landroid/content/Context;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->updateConfiguration(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/EventTracker;->addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    .line 33
    :cond_0
    sget-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private copyOfParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected static getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FiksuSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addParameter(Lcom/fiksu/asotracking/FiksuEventParameter;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventParameter"    # Lcom/fiksu/asotracking/FiksuEventParameter;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method protected uploadEvent()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/EventUploader;

    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method protected uploadEventSynchronously(J)V
    .locals 3
    .param p1, "timeoutMs"    # J

    .prologue
    .line 49
    new-instance v0, Lcom/fiksu/asotracking/EventUploader;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 51
    .local v0, "uploader":Lcom/fiksu/asotracking/EventUploader;
    monitor-enter v0

    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 58
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method
