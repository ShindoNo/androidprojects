.class public Lcom/itim/explorer/NhaNhaApplication;
.super Landroid/app/Application;
.source "NhaNhaApplication.java"


# static fields
.field private static mAppContext:Landroid/content/Context;

.field private static mInstance:Lcom/itim/explorer/NhaNhaApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/itim/explorer/NhaNhaApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/itim/explorer/NhaNhaApplication;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/itim/explorer/NhaNhaApplication;->mInstance:Lcom/itim/explorer/NhaNhaApplication;

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    sget-object v1, Lcom/itim/explorer/NhaNhaApplication;->mAppContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 40
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    sget-object v2, Lcom/itim/explorer/NhaNhaApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/itim/explorer/NhaNhaApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_0
    if-nez v1, :cond_0

    const-string v2, ""

    :goto_1
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    sput-object p0, Lcom/itim/explorer/NhaNhaApplication;->mInstance:Lcom/itim/explorer/NhaNhaApplication;

    .line 21
    invoke-virtual {p0}, Lcom/itim/explorer/NhaNhaApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/itim/explorer/NhaNhaApplication;->mAppContext:Landroid/content/Context;

    .line 23
    return-void
.end method
