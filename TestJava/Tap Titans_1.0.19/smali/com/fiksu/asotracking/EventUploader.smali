.class final Lcom/fiksu/asotracking/EventUploader;
.super Ljava/lang/Object;
.source "EventUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FIKSU_ENDPOINT_1:Ljava/lang/String; = "https://a.fiksu.com/"

.field private static final FIKSU_SAVED_URLS_PREFERENCE_NAME:Ljava/lang/String; = "Fiksu.savedUrls"

.field private static final FIKSU_SEPARATOR:Ljava/lang/String; = "<FIKSU>"

.field private static final FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_FAILED_URLS:I = 0xa

.field static final TRACKING_REV:Ljava/lang/String; = "50016"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 33
    const-string v0, "<FIKSU>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fiksu/asotracking/EventUploader;->FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/StringBuilder;
    .param p2, "eventParameter"    # Lcom/fiksu/asotracking/FiksuEventParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "parameterValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    return-void
.end method

.method private buildURL()Ljava/lang/String;
    .locals 17

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    if-nez v14, :cond_0

    .line 55
    const-string v14, "FiksuTracking"

    const-string v15, "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext()."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v14, 0x0

    .line 153
    :goto_0
    return-object v14

    .line 59
    :cond_0
    const-string v8, "https://a.fiksu.com/"

    .line 60
    .local v8, "hostname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    sget-object v15, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {v15}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, "event":Ljava/lang/String;
    const-string v14, "FiksuTracking"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Event: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "packageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x200

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v13, "url":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "50016"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/android/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/event?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "appid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;->create(Landroid/content/Context;)Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;

    move-result-object v1

    .line 80
    .local v1, "androidAdvertisingConfig":Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
    invoke-virtual {v1}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;->isGooglePlayLibraryPresent()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 81
    invoke-virtual {v1}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;->isGooglePlayServicesAvailable()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 82
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&a_id="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "&a_enabled="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;->limitAdTracking()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "0"

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getDisableGetDeviceId()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 88
    const-string v14, "&deviceiddisabled=1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&udid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&device="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "clientID":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 98
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&clientid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getFiksuConfiguration()Lcom/fiksu/asotracking/FiksuConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fiksu/asotracking/FiksuConfiguration;->isFacebookAttributionEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/fiksu/asotracking/FacebookAttribution;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "facebookAttributionId":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 105
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&fb_id="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v7    # "facebookAttributionId":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 112
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&app_version="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "appName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 116
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&app_name="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .end local v2    # "appName":Ljava/lang/String;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_4
    :goto_3
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&system_version="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&system_name="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v9, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 129
    .local v9, "locale":Ljava/util/Locale;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&country="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&lang="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&timezone="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&gmtoffset="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v15

    div-int/lit16 v15, v15, 0x3e8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v5, :cond_5

    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&event="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_5
    sget-object v14, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 141
    sget-object v14, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 142
    sget-object v14, Lcom/fiksu/asotracking/FiksuEventParameter;->FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 143
    sget-object v14, Lcom/fiksu/asotracking/FiksuEventParameter;->IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 146
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "&app_tracking_enabled="

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->isAppTrackingEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "1"

    :goto_4
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 84
    .end local v3    # "clientID":Ljava/lang/String;
    .end local v9    # "locale":Ljava/util/Locale;
    :cond_6
    :try_start_3
    const-string v14, "1"

    goto/16 :goto_1

    .line 90
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&deviceid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 148
    .end local v1    # "androidAdvertisingConfig":Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v14, "FiksuTracking"

    const-string v15, "Problem creating URL"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 118
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "androidAdvertisingConfig":Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
    .restart local v3    # "clientID":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 119
    .local v12, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v14, "FiksuTracking"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Could not access package: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 120
    .end local v12    # "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v6

    .line 121
    .local v6, "ex":Ljava/lang/Exception;
    const-string v14, "FiksuTracking"

    const-string v15, "Unexpected exception"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 146
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v9    # "locale":Ljava/util/Locale;
    :cond_8
    const-string v14, "0"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4
.end method

.method private doUpload(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 258
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "fiksuUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 260
    .local v0, "fiksuConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 262
    .local v4, "responseCode":I
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_1

    .line 263
    const-string v7, "FiksuTracking"

    const-string v8, "Successfully uploaded tracking information."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "fiksuConnection":Ljava/net/HttpURLConnection;
    .end local v1    # "fiksuUrl":Ljava/net/URL;
    .end local v4    # "responseCode":I
    :cond_0
    :goto_0
    return v5

    .line 266
    .restart local v0    # "fiksuConnection":Ljava/net/HttpURLConnection;
    .restart local v1    # "fiksuUrl":Ljava/net/URL;
    .restart local v4    # "responseCode":I
    :cond_1
    const-string v7, "FiksuTracking"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to upload tracking information, bad response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    const/16 v7, 0x1f4

    if-lt v4, v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 269
    .end local v0    # "fiksuConnection":Ljava/net/HttpURLConnection;
    .end local v1    # "fiksuUrl":Ljava/net/URL;
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ioException":Ljava/io/IOException;
    const-string v5, "FiksuTracking"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to upload tracking information: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 271
    goto :goto_0

    .line 272
    .end local v2    # "ioException":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 279
    .local v3, "nullPointerException":Ljava/lang/NullPointerException;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "3."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 283
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Caught NullPointerException with Android OS version "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Tracking rev= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "50016"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private encodeParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSavedUrls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, "preferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 176
    const-string v5, "Fiksu.savedUrls"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "savedUrls":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    sget-object v5, Lcom/fiksu/asotracking/EventUploader;->FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "urlArray":[Ljava/lang/String;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 184
    .end local v1    # "savedUrls":Ljava/lang/String;
    .end local v3    # "urlArray":[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 179
    .restart local v1    # "savedUrls":Ljava/lang/String;
    .restart local v3    # "urlArray":[Ljava/lang/String;
    :cond_1
    aget-object v2, v3, v5

    .line 180
    .local v2, "tempUrl":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private saveFailedUrls(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local p1    # "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object p1, v1

    .line 193
    .end local v1    # "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v4, "urlsToSave":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 195
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 201
    .end local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 202
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "Fiksu.savedUrls"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void

    .line 197
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v2    # "i":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "<FIKSU>"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private uploadToTracking()V
    .locals 10

    .prologue
    .line 208
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 209
    const-string v5, "FiksuTracking"

    const-string v6, "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext()."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->buildURL()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "url":Ljava/lang/String;
    sget-object v6, Lcom/fiksu/asotracking/FiksuConstants;->SHARED_PREFERENCES_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->getSavedUrls()Ljava/util/List;

    move-result-object v4

    .line 218
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 219
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    sget-object v7, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {v7}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/fiksu/asotracking/FiksuEventType;->CONVERSION:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v7}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-direct {p0, v4}, Lcom/fiksu/asotracking/EventUploader;->saveFailedUrls(Ljava/util/List;)V

    .line 226
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 241
    invoke-direct {p0, v1}, Lcom/fiksu/asotracking/EventUploader;->saveFailedUrls(Ljava/util/List;)V

    .line 215
    monitor-exit v6

    goto :goto_0

    .end local v1    # "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 227
    .restart local v1    # "failedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .local v2, "tempUrl":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/fiksu/asotracking/EventUploader;->doUpload(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 230
    const-string v7, "FiksuTracking"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Upload failed for url.  Saving it for retry later: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_3
    const-string v7, "FiksuTracking"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v7, "FiksuTracking"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->uploadToTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-enter p0

    .line 294
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    return-void

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    monitor-enter p0

    .line 294
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    throw v0

    .line 293
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
