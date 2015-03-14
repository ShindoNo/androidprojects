.class public Lcom/gamehivecorp/ghplugin/GHPlugin;
.super Ljava/lang/Object;
.source "GHPlugin.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final GHPLUGIN_ID:I = 0x539

.field private static MAX_NOTIFICATIONS:I

.field private static instance:Lcom/gamehivecorp/ghplugin/GHPlugin;

.field private static playerAdId:Ljava/lang/String;

.field private static uiChangeListenerAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamehivecorp/ghplugin/GHPlugin;->uiChangeListenerAdded:Z

    .line 33
    const/16 v0, 0x8

    sput v0, Lcom/gamehivecorp/ghplugin/GHPlugin;->MAX_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CancelAllLocalNotifications(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 176
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v5, Lcom/gamehivecorp/ghplugin/GHPlugin;->MAX_NOTIFICATIONS:I

    if-lt v2, v5, :cond_0

    .line 189
    return-void

    .line 177
    :cond_0
    new-instance v3, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sbrgh://com.gamehivecorp.superbattleracers.notification/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "intent":Landroid/content/Intent;
    const-class v5, Lcom/gamehivecorp/ghplugin/GHNotificationReceiver;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const/16 v5, 0x539

    const/high16 v6, 0x10000000

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 184
    .local v4, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Unity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not cancel notification "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static CancelLocalNotification(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 158
    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sbrgh://com.gamehivecorp.superbattleracers.notification/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcom/gamehivecorp/ghplugin/GHNotificationReceiver;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    const/16 v4, 0x539

    const/high16 v5, 0x10000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 163
    .local v3, "pi":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 167
    .local v0, "am":Landroid/app/AlarmManager;
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Unity"

    const-string v5, "Could not cancel notification"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static GetAndroidAdvertisingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v2, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    sget-object v2, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v2

    .line 101
    :cond_0
    new-instance v1, Lcom/gamehivecorp/ghplugin/GHPlugin$3;

    invoke-direct {v1, p0}, Lcom/gamehivecorp/ghplugin/GHPlugin$3;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    sget-object v2, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetAndroidID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ShowLocalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageTitle"    # Ljava/lang/String;
    .param p2, "messageBody"    # Ljava/lang/String;
    .param p3, "waitSeconds"    # I
    .param p4, "notificationId"    # I

    .prologue
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 141
    .local v3, "timeToShow":J
    mul-int/lit16 v5, p3, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 144
    new-instance v1, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sbrgh://com.gamehivecorp.superbattleracers.notification/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    const-class v5, Lcom/gamehivecorp/ghplugin/GHNotificationReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v5, "messageTitle"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v5, "messageBody"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/16 v5, 0x539

    const/high16 v6, 0x10000000

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 153
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 154
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 155
    return-void
.end method

.method public static TriggerImmersiveMode(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    .local v0, "window":Landroid/view/Window;
    new-instance v1, Lcom/gamehivecorp/ghplugin/GHPlugin$1;

    invoke-direct {v1, v0}, Lcom/gamehivecorp/ghplugin/GHPlugin$1;-><init>(Landroid/view/Window;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    sget-boolean v1, Lcom/gamehivecorp/ghplugin/GHPlugin;->uiChangeListenerAdded:Z

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/gamehivecorp/ghplugin/GHPlugin$2;

    invoke-direct {v1, v0}, Lcom/gamehivecorp/ghplugin/GHPlugin$2;-><init>(Landroid/view/Window;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    const/4 v1, 0x1

    sput-boolean v1, Lcom/gamehivecorp/ghplugin/GHPlugin;->uiChangeListenerAdded:Z

    .line 87
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0}, Lcom/gamehivecorp/ghplugin/GHPlugin;->getIDInThread(Landroid/content/Context;)V

    return-void
.end method

.method private static getIDInThread(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 123
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 134
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gamehivecorp/ghplugin/GHPlugin;->playerAdId:Ljava/lang/String;

    .line 137
    :cond_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    goto :goto_0

    .line 128
    :catch_2
    move-exception v1

    goto :goto_0

    .line 130
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static init()Lcom/gamehivecorp/ghplugin/GHPlugin;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/gamehivecorp/ghplugin/GHPlugin;

    invoke-direct {v0}, Lcom/gamehivecorp/ghplugin/GHPlugin;-><init>()V

    sput-object v0, Lcom/gamehivecorp/ghplugin/GHPlugin;->instance:Lcom/gamehivecorp/ghplugin/GHPlugin;

    .line 38
    sget-object v0, Lcom/gamehivecorp/ghplugin/GHPlugin;->instance:Lcom/gamehivecorp/ghplugin/GHPlugin;

    return-object v0
.end method
