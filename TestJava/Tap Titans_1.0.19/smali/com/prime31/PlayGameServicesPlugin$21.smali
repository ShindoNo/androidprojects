.class Lcom/prime31/PlayGameServicesPlugin$21;
.super Ljava/lang/Object;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin;->submitScore(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/PlayGameServicesPlugin;

.field private final synthetic val$leaderboardId:Ljava/lang/String;

.field private final synthetic val$score:J


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$21;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iput-object p2, p0, Lcom/prime31/PlayGameServicesPlugin$21;->val$leaderboardId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/prime31/PlayGameServicesPlugin$21;->val$score:J

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1211
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$21;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$21;->val$leaderboardId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/prime31/PlayGameServicesPlugin$21;->val$score:J

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 1212
    new-instance v1, Lcom/prime31/PlayGameServicesPlugin$ScoreSubmitListener;

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$21;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v3, "submitScoreSucceeded"

    const-string v4, "submitScoreFailed"

    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin$21;->val$leaderboardId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/prime31/PlayGameServicesPlugin$ScoreSubmitListener;-><init>(Lcom/prime31/PlayGameServicesPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1213
    return-void
.end method
