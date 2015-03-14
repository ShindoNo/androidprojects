.class public Lcom/applovin/sdk/unity/AppLovinFacade;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
    }
.end annotation


# static fields
.field public static final AD_POSITION_BOTTOM:F = -50000.0f

.field public static final AD_POSITION_CENTER:F = -10000.0f

.field public static final AD_POSITION_LEFT:F = -20000.0f

.field public static final AD_POSITION_RIGHT:F = -30000.0f

.field public static final AD_POSITION_TOP:F = -40000.0f

.field public static final TAG:Ljava/lang/String; = "AppLovinFacade-Unity"

.field public static final UNITY_PLUGIN_VERSION:Ljava/lang/String; = "3.1.1"

.field private static final facades:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/applovin/sdk/unity/AppLovinFacade;",
            ">;"
        }
    .end annotation
.end field

.field private static gameObjectToNotify:Ljava/lang/String;

.field private static sdkKey:Ljava/lang/String;

.field private static sdkSettings:Lcom/applovin/sdk/AppLovinSdkSettings;


# instance fields
.field private adView:Lcom/applovin/adview/AppLovinAdView;

.field private adWidth:I

.field private final displayMetric:Landroid/util/DisplayMetrics;

.field private firstLoad:Z

.field private horizontalPosition:F

.field private incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private volatile interCurrentlyShowing:Z

.field private volatile isIncentReady:Z

.field private volatile lastAd:Lcom/applovin/sdk/AppLovinAd;

.field private final logger:Lcom/applovin/sdk/AppLovinLogger;

.field private mainLayout:Landroid/widget/FrameLayout;

.field private final parentActivity:Landroid/app/Activity;

.field private screenHeight:I

.field private screenWidth:I

.field private final sdk:Lcom/applovin/sdk/AppLovinSdk;

.field private verticalPosition:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->facades:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const v9, -0x39e3c000

    const/4 v8, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->firstLoad:Z

    .line 71
    iput v9, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    .line 72
    iput v9, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F

    .line 73
    iput-boolean v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->interCurrentlyShowing:Z

    .line 74
    iput-boolean v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady:Z

    .line 78
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No activity specified"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    .line 83
    invoke-static {p1}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v8

    iput-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 84
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v8}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v8

    iput-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    .line 88
    :try_start_0
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    const-string v9, "unity-3.1.1"

    invoke-virtual {v8, v9}, Lcom/applovin/sdk/AppLovinSdk;->setPluginVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 96
    .local v1, "display":Landroid/view/Display;
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iput-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->displayMetric:Landroid/util/DisplayMetrics;

    .line 98
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-le v8, v9, :cond_4

    .line 99
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 101
    iget v8, v5, Landroid/graphics/Point;->x:I

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenWidth:I

    .line 102
    iget v8, v5, Landroid/graphics/Point;->y:I

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenHeight:I

    .line 111
    .end local v5    # "size":Landroid/graphics/Point;
    :goto_1
    iget v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenWidth:I

    iget v9, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenHeight:I

    if-le v8, v9, :cond_5

    .line 112
    const/4 v8, 0x1

    const/high16 v9, 0x43a00000

    iget-object v10, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->displayMetric:Landroid/util/DisplayMetrics;

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adWidth:I

    .line 118
    :goto_2
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 120
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 122
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 124
    .local v3, "metaData":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 125
    const-string v8, "applovin.sdk.ad.width"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 127
    .local v7, "userAdWidth":I
    if-lez v7, :cond_1

    .line 128
    invoke-virtual {p0, v7}, Lcom/applovin/sdk/unity/AppLovinFacade;->setAdWidth(I)V

    .line 131
    :cond_1
    const-string v8, "applovin.sdk.ad.position.vertical"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 132
    const-string v8, "applovin.sdk.ad.position.vertical"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/applovin/sdk/unity/AppLovinFacade;->stringCompatibility(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F

    .line 134
    :cond_2
    const-string v8, "applovin.sdk.ad.position.horizontal"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 135
    const-string v8, "applovin.sdk.ad.position.horizontal"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/applovin/sdk/unity/AppLovinFacade;->stringCompatibility(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "metaData":Landroid/os/Bundle;
    .end local v7    # "userAdWidth":I
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v9, Lcom/applovin/sdk/unity/AppLovinFacade$1;

    invoke-direct {v9, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$1;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void

    .line 89
    .end local v1    # "display":Landroid/view/Display;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 90
    .local v6, "th":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v9, "AppLovinSdk"

    const-string v10, "AppLovin SDK may be out of date. Please consider updating to the latest version."

    invoke-interface {v8, v9, v10}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v6    # "th":Ljava/lang/Throwable;
    .restart local v1    # "display":Landroid/view/Display;
    :cond_4
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenWidth:I

    .line 105
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenHeight:I

    goto :goto_1

    .line 114
    :cond_5
    iget v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenWidth:I

    iput v8, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adWidth:I

    goto :goto_2

    .line 137
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AppLovinSdk"

    const-string v9, "Name not found"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static HideAd(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->hideAd()V

    .line 241
    return-void
.end method

.method public static InitializeSdk(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 333
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 336
    :cond_0
    return-void
.end method

.method public static IsCurrentInterstitialVideo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 424
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-direct {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->isCurrentInterstitialVideo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsIncentReady(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 420
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-direct {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsInterstitialReady(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 412
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->isInterstitialReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsInterstitialShowing(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 416
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->isInterstitialShowing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static LoadIncentInterstitial(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->preloadIncentInterstitial()V

    .line 266
    return-void
.end method

.method public static LoadNextAd(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 247
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->loadNextAd()V

    .line 248
    return-void
.end method

.method public static PreloadInterstitial(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 408
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->preloadInterstitial()V

    .line 409
    return-void
.end method

.method public static PutExtra(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/applovin/sdk/AppLovinTargetingData;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetAdPosition(Landroid/app/Activity;FF)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 226
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/sdk/unity/AppLovinFacade;->setAdPosition(FF)V

    .line 227
    return-void
.end method

.method public static SetAdPosition(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "horizontal"    # Ljava/lang/String;
    .param p2, "vertical"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/sdk/unity/AppLovinFacade;->stringCompatibility(Ljava/lang/String;)F

    move-result v1

    invoke-static {p2}, Lcom/applovin/sdk/unity/AppLovinFacade;->stringCompatibility(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->setAdPosition(FF)V

    .line 215
    return-void
.end method

.method public static SetAdWidth(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "width"    # I

    .prologue
    .line 254
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/unity/AppLovinFacade;->setAdWidth(I)V

    .line 255
    return-void
.end method

.method public static SetBirthYear(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "birthYear"    # I

    .prologue
    .line 298
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setBirthYear(I)V

    goto :goto_0
.end method

.method public static SetCarrier(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setCarrier(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetCountry(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setCountry(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetGender(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v1, "m"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "male"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    :cond_2
    const/16 v0, 0x6d

    .line 289
    .local v0, "genderChar":C
    :goto_1
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/sdk/AppLovinTargetingData;->setGender(C)V

    goto :goto_0

    .line 283
    .end local v0    # "genderChar":C
    :cond_3
    const-string v1, "f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "female"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :cond_4
    const/16 v0, 0x66

    .restart local v0    # "genderChar":C
    goto :goto_1
.end method

.method public static SetIncentivizedUsername(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v0, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->setUserIdentifier(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public static varargs SetInterests(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "interests"    # [Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setInterests([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs SetKeywords(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setKeywords([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetLanguage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinTargetingData;->setLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetLocation(Landroid/app/Activity;DD)V
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "lon"    # D
    .param p3, "lat"    # D

    .prologue
    .line 377
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkInitialized(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "user"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    .line 382
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 384
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/sdk/AppLovinTargetingData;->setLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public static SetSdkKey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 400
    sput-object p1, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkKey:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public static SetUnityAdListener(Ljava/lang/String;)V
    .locals 0
    .param p0, "gameObjectToNotify"    # Ljava/lang/String;

    .prologue
    .line 609
    sput-object p0, Lcom/applovin/sdk/unity/AppLovinFacade;->gameObjectToNotify:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public static SetVerboseLoggingOn(Ljava/lang/String;)V
    .locals 2
    .param p0, "isVerboseLogging"    # Ljava/lang/String;

    .prologue
    .line 404
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkSettings:Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 405
    return-void
.end method

.method public static ShowAd(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->showAd()V

    .line 234
    return-void
.end method

.method public static ShowIncentInterstitial(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 269
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->showIncentInterstitial()V

    .line 270
    return-void
.end method

.method public static ShowInterstitial(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->showInterstitial()V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinAdView;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/adview/AppLovinAdView;
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p1, "x1"    # Lcom/applovin/adview/AppLovinAdView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/applovin/sdk/unity/AppLovinFacade;)F
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    return v0
.end method

.method static synthetic access$1100(Lcom/applovin/sdk/unity/AppLovinFacade;)F
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F

    return v0
.end method

.method static synthetic access$1202(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->interCurrentlyShowing:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/applovin/sdk/unity/AppLovinFacade;)V
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->setAdViewListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/applovin/sdk/unity/AppLovinFacade;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/applovin/sdk/unity/AppLovinFacade;)V
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->updatePadding()V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method static synthetic access$802(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p1, "x1"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$900(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-object v0
.end method

.method public static getAppLovinFacade(Landroid/app/Activity;)Lcom/applovin/sdk/unity/AppLovinFacade;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    sget-object v2, Lcom/applovin/sdk/unity/AppLovinFacade;->facades:Ljava/util/Map;

    monitor-enter v2

    .line 197
    :try_start_0
    sget-object v1, Lcom/applovin/sdk/unity/AppLovinFacade;->facades:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/unity/AppLovinFacade;

    .line 198
    .local v0, "facade":Lcom/applovin/sdk/unity/AppLovinFacade;
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/applovin/sdk/unity/AppLovinFacade;

    .end local v0    # "facade":Lcom/applovin/sdk/unity/AppLovinFacade;
    invoke-direct {v0, p0}, Lcom/applovin/sdk/unity/AppLovinFacade;-><init>(Landroid/app/Activity;)V

    .line 200
    .restart local v0    # "facade":Lcom/applovin/sdk/unity/AppLovinFacade;
    sget-object v1, Lcom/applovin/sdk/unity/AppLovinFacade;->facades:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    monitor-exit v2

    return-object v0

    .line 204
    .end local v0    # "facade":Lcom/applovin/sdk/unity/AppLovinFacade;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 178
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkSettings:Lcom/applovin/sdk/AppLovinSdkSettings;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    sput-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkSettings:Lcom/applovin/sdk/AppLovinSdkSettings;

    .line 182
    :cond_0
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkKey:Ljava/lang/String;

    sget-object v1, Lcom/applovin/sdk/unity/AppLovinFacade;->sdkSettings:Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-static {v0, v1, p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    goto :goto_0
.end method

.method private isCurrentInterstitialVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncentReady()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sdkInitialized(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 326
    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAdViewListeners()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V

    .line 171
    .local v0, "listenerWrapper":Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 172
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 173
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 174
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 175
    return-void
.end method

.method public static stringCompatibility(Ljava/lang/String;)F
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    const v0, -0x39e3c000

    .line 428
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const v0, -0x3963c000

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    const v0, -0x3915a000

    goto :goto_0

    .line 432
    :cond_2
    const-string v1, "top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const v0, -0x38e3c000

    goto :goto_0

    .line 434
    :cond_3
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    const v0, -0x38bcb000

    goto :goto_0

    .line 436
    :cond_4
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "middle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 529
    iget v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->screenWidth:I

    iget v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adWidth:I

    sub-int v0, v1, v2

    .line 530
    .local v0, "difference":I
    iget v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    const v2, -0x3963c000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/applovin/adview/AppLovinAdView;->setPadding(IIII)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    const v2, -0x39e3c000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/applovin/adview/AppLovinAdView;->setPadding(IIII)V

    goto :goto_0

    .line 534
    :cond_2
    iget v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    const v2, -0x3915a000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0, v4, v4, v4}, Lcom/applovin/adview/AppLovinAdView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public hideAd()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinSdk"

    const-string v2, "Hide AppLovin Ad"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$3;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$3;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method public isInterstitialReady()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterstitialShowing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->interCurrentlyShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadNextAd()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinSdk"

    const-string v2, "AppLovin Load Next Ad"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->firstLoad:Z

    .line 472
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$4;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$4;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public preloadIncentInterstitial()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 512
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 513
    return-void
.end method

.method public preloadInterstitial()V
    .locals 4

    .prologue
    .line 579
    new-instance v0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V

    .line 581
    .local v0, "listenerWrapper":Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v3, Lcom/applovin/sdk/unity/AppLovinFacade$9;

    invoke-direct {v3, p0, v0}, Lcom/applovin/sdk/unity/AppLovinFacade$9;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;)V

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 593
    return-void
.end method

.method public sendToCSharp(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinFacade-Unity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message to Unity/C#: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->gameObjectToNotify:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 616
    sget-object v0, Lcom/applovin/sdk/unity/AppLovinFacade;->gameObjectToNotify:Ljava/lang/String;

    const-string v1, "onAppLovinEventReceived"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinFacade-Unity"

    const-string v2, "Skipping sending message to Unity/C#: No GameObject provided."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdPosition(FF)V
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/4 v1, 0x0

    .line 569
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No horizontal position specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No vertical position specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    iput p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    .line 573
    iput p2, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F

    .line 575
    invoke-virtual {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->updateAdPosition()V

    .line 576
    return-void
.end method

.method public setAdWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 481
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->displayMetric:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->adWidth:I

    .line 483
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$5;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$5;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public showAd()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->logger:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinSdk"

    const-string v2, "Show AppLovin Ad"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->firstLoad:Z

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/applovin/sdk/unity/AppLovinFacade;->loadNextAd()V

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->firstLoad:Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$2;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$2;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method public showIncentInterstitial()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$7;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$7;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$6;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$6;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public updateAdPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    iget v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No horizontal position specifed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    iget v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No vertical position specifed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$8;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/unity/AppLovinFacade$8;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method
