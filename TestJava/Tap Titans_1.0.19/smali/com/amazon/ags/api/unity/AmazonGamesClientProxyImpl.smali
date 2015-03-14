.class public Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;
.super Ljava/lang/Object;
.source "AmazonGamesClientProxyImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGS"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;


# instance fields
.field private agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private unityManager:Lcom/amazon/ags/api/unity/UnityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    .line 32
    iput-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 35
    invoke-static {}, Lcom/amazon/ags/api/unity/UnityManagerImpl;->getInstance()Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;)Lcom/amazon/ags/api/unity/UnityManager;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;
    .param p1, "x1"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    invoke-direct {v0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;-><init>()V

    sput-object v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;

    .line 42
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->instance:Lcom/amazon/ags/api/unity/AmazonGamesClientProxy;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(ZZZ)V
    .locals 2
    .param p1, "supportsLeaderboards"    # Z
    .param p2, "supportsAchievements"    # Z
    .param p3, "supportsWhisperSync"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;

    invoke-interface {v0}, Lcom/amazon/ags/api/unity/UnityManager;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;-><init>(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->release()V

    .line 114
    :cond_0
    return-void
.end method

.method public setPopUpLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-static {p1}, Lcom/amazon/ags/api/overlay/PopUpLocation;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setPopupEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    sget-object v0, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    if-eqz v0, :cond_0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    sget-object v0, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->enable()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->disable()V

    goto :goto_0
.end method

.method public showGameCircleOverlay()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->showGameCircle([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 149
    :cond_0
    return-void
.end method

.method public showSignInPage()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->agsClient:Lcom/amazon/ags/api/AmazonGamesClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->showSignInPage([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 159
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->shutdown()V

    .line 168
    :cond_0
    return-void
.end method
