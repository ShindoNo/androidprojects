.class final Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;
.super Ljava/lang/Object;
.source "FiksuDeviceSettingsManager.java"


# static fields
.field private static final INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;


# instance fields
.field private disableGetDeviceId:Z

.field private final mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;-><init>()V

    sput-object v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->disableGetDeviceId:Z

    .line 35
    return-void
.end method

.method static getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    return-object v0
.end method

.method private setSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 63
    const-string v0, "FiksuTracking"

    const-string v1, "Context is null so we cannot load configuration from SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "FiksuDeviceSettingsSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method


# virtual methods
.method getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    const-string v1, "FiksuTracking"

    .line 101
    const-string v2, "Could not retrieve android_id.  The android_id is not available on emulators running Android 2.1 or below.  Run the code on emulator 2.2 or better or an a device."

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, ""

    .line 105
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 129
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 130
    const-string v3, "FiksuTracking"

    const-string v4, "Could not access telephonyManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const-string v0, ""

    .line 143
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v0

    .line 133
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 135
    :cond_2
    const-string v3, "FiksuTracking"

    const-string v4, "Could not retrieve deviceId. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    const-string v0, ""

    goto :goto_0

    .line 141
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "securityException":Ljava/lang/SecurityException;
    const-string v3, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not retrieve deviceId: READ_PHONE_STATE permission not granted. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, ""

    goto :goto_0
.end method

.method getDisableGetDeviceId()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->disableGetDeviceId:Z

    return v0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 53
    :cond_0
    return-void
.end method

.method isAppTrackingEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->isAppTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method setAppTrackingEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appTrackingEnabled"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0, p2}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->setAppTrackingEnabled(Z)V

    .line 85
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 91
    :cond_0
    return-void
.end method

.method setClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0, p2}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->setClientId(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 80
    :cond_0
    return-void
.end method

.method setDisableGetDeviceId()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->disableGetDeviceId:Z

    .line 114
    return-void
.end method
