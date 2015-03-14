.class Lcom/fiksu/asotracking/ForegroundTester;
.super Ljava/lang/Object;
.source "ForegroundTester.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static sStarted:Z


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

.field private mPostedLaunch:Z

.field private mWasInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/fiksu/asotracking/LaunchEventTracker;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "launchEventTracker"    # Lcom/fiksu/asotracking/LaunchEventTracker;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    .line 27
    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    .line 32
    iput-object p1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    .line 33
    iput-object p2, p0, Lcom/fiksu/asotracking/ForegroundTester;->mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

    .line 34
    const-class v1, Lcom/fiksu/asotracking/ForegroundTester;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "FiksuTracking"

    const-string v2, "Already initialized!. Only call FiksuTrackingManager.initialize() once."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v1

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiksu/asotracking/ForegroundTester;->sStarted:Z

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private inForeground()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v5, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 47
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 49
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    :goto_0
    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_1
    return v4

    .line 50
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "FiksuTracking"

    const-string v6, "Unexpected exception"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_2

    .line 66
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 67
    iget-object v6, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method postEvent()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mPostedLaunch:Z

    .line 79
    iget-object v0, p0, Lcom/fiksu/asotracking/ForegroundTester;->mLaunchEventTracker:Lcom/fiksu/asotracking/LaunchEventTracker;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/LaunchEventTracker;->uploadEvent()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/fiksu/asotracking/ResumeEventTracker;

    iget-object v1, p0, Lcom/fiksu/asotracking/ForegroundTester;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/fiksu/asotracking/ResumeEventTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/ResumeEventTracker;->uploadEvent()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 87
    :try_start_0
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ForegroundTester thread started, process: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-wide/16 v3, 0x1770

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    :cond_0
    :goto_0
    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    iget-boolean v3, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/fiksu/asotracking/ForegroundTester;->inForeground()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/fiksu/asotracking/ForegroundTester;->postEvent()V

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v3, "FiksuTracking"

    .line 103
    const-string v4, "ForegroundTester thread was interrupted."

    .line 102
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 97
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/fiksu/asotracking/ForegroundTester;->inForeground()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fiksu/asotracking/ForegroundTester;->mWasInForeground:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 104
    :catch_1
    move-exception v2

    .line 105
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "FiksuTracking"

    .line 106
    const-string v4, "ForegroundTester thread was aborted."

    .line 105
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FiksuTracking"

    .line 109
    const-string v4, "Unexpected exception"

    .line 108
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
