.class Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;
.super Ljava/lang/Object;
.source "AmazonGamesClientProxyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->init(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

.field final synthetic val$supportsAchievements:Z

.field final synthetic val$supportsLeaderboards:Z

.field final synthetic val$supportsWhisperSync:Z


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;ZZZ)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    iput-boolean p2, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsLeaderboards:Z

    iput-boolean p3, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsAchievements:Z

    iput-boolean p4, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsWhisperSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 59
    .local v0, "supportedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    iget-boolean v1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsLeaderboards:Z

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsAchievements:Z

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->val$supportsWhisperSync:Z

    if-eqz v1, :cond_2

    .line 66
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Whispersync:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;->this$0:Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;

    # getter for: Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->unityManager:Lcom/amazon/ags/api/unity/UnityManager;
    invoke-static {v1}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;->access$000(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl;)Lcom/amazon/ags/api/unity/UnityManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/ags/api/unity/UnityManager;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1$1;-><init>(Lcom/amazon/ags/api/unity/AmazonGamesClientProxyImpl$1;)V

    invoke-static {v1, v2, v0}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Activity;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V

    .line 85
    return-void
.end method
