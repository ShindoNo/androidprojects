.class public Lcom/applovin/sdk/unity/AppLovinUnityActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "AppLovinUnityActivity.java"


# instance fields
.field private autoload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinUnityActivity;->autoload:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/applovin/sdk/unity/AppLovinUnityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 36
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/sdk/unity/AppLovinUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 41
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 43
    const-string v4, "applovin.sdk.autoload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/applovin/sdk/unity/AppLovinUnityActivity;->autoload:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/applovin/sdk/unity/AppLovinUnityActivity;->autoload:Z

    if-eqz v4, :cond_1

    .line 54
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->ShowAd(Landroid/app/Activity;)V

    .line 57
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppLovin SDK"

    const-string v5, "Name not found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
