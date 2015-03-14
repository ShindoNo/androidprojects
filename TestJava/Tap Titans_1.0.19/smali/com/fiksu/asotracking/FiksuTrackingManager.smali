.class public Lcom/fiksu/asotracking/FiksuTrackingManager;
.super Ljava/lang/Object;
.source "FiksuTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;,
        Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;
    }
.end annotation


# static fields
.field public static final FIKSU_LOG_TAG:Ljava/lang/String; = "FiksuTracking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c2dMessageReceived(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    return-void
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 8
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "application was null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_0
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->initialize(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->initialize(Landroid/content/Context;)V

    .line 85
    new-instance v5, Lcom/fiksu/asotracking/ForegroundTester;

    new-instance v6, Lcom/fiksu/asotracking/LaunchEventTracker;

    invoke-direct {v6, p0}, Lcom/fiksu/asotracking/LaunchEventTracker;-><init>(Landroid/app/Application;)V

    invoke-direct {v5, p0, v6}, Lcom/fiksu/asotracking/ForegroundTester;-><init>(Landroid/app/Application;Lcom/fiksu/asotracking/LaunchEventTracker;)V

    .line 89
    const/4 v1, 0x0

    .line 92
    .local v1, "disableGetDeviceId":Z
    const/4 v2, 0x1

    .line 94
    .local v2, "doReceiverCheck":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 95
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 96
    const/16 v7, 0x80

    .line 95
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 98
    .local v4, "metaData":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 99
    const-string v5, "FiksuDisableGetDeviceId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 100
    const-string v5, "FiksuDisableReceiverCheck"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x0

    .line 107
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "metaData":Landroid/os/Bundle;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 108
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setDisableGetDeviceId()V

    .line 110
    :cond_2
    if-eqz v2, :cond_3

    .line 111
    invoke-static {p0}, Lcom/fiksu/asotracking/InstallTracking;->checkForFiksuReceiver(Landroid/content/Context;)V

    .line 113
    :cond_3
    return-void

    .line 100
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FiksuTracking"

    const-string v6, "Unexpected NameNotFoundException"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "FiksuTracking"

    const-string v6, "Unexpected exception"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isAppTrackingEnabled()Z
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->isAppTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public static promptForRating(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    return-void
.end method

.method public static setAppTrackingEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appTrackingEnabled"    # Z

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setAppTrackingEnabled(Landroid/content/Context;Z)V

    .line 262
    return-void
.end method

.method public static setClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setClientId(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static setDebugModeEnabled(Z)V
    .locals 1
    .param p0, "debugModeEnabled"    # Z

    .prologue
    .line 244
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->setDebugModeEnabled(Z)V

    .line 245
    return-void
.end method

.method public static uploadCustomEvent(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    new-instance v0, Lcom/fiksu/asotracking/CustomEventTracker;

    invoke-direct {v0, p0}, Lcom/fiksu/asotracking/CustomEventTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/CustomEventTracker;->uploadEvent()V

    .line 234
    return-void
.end method

.method public static uploadPurchase(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;DLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;
    .param p2, "price"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-nez p1, :cond_1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Lcom/fiksu/asotracking/PurchaseEventTracker;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiksu/asotracking/PurchaseEventTracker;-><init>(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/PurchaseEventTracker;->uploadEvent()V

    .line 183
    return-void
.end method

.method public static uploadPurchaseEvent(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "price"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Lcom/fiksu/asotracking/PurchaseEventTracker;

    sget-object v2, Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;->EVENT1:Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fiksu/asotracking/PurchaseEventTracker;-><init>(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$PurchaseEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/PurchaseEventTracker;->uploadEvent()V

    .line 163
    return-void
.end method

.method public static uploadRegistration(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    if-nez p1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    new-instance v0, Lcom/fiksu/asotracking/RegistrationEventTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fiksu/asotracking/RegistrationEventTracker;-><init>(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RegistrationEventTracker;->uploadEvent()V

    .line 219
    return-void
.end method

.method public static uploadRegistrationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Lcom/fiksu/asotracking/RegistrationEventTracker;

    sget-object v1, Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;->EVENT1:Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;

    invoke-direct {v0, p0, v1, p1}, Lcom/fiksu/asotracking/RegistrationEventTracker;-><init>(Landroid/content/Context;Lcom/fiksu/asotracking/FiksuTrackingManager$RegistrationEvent;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RegistrationEventTracker;->uploadEvent()V

    .line 201
    return-void
.end method
