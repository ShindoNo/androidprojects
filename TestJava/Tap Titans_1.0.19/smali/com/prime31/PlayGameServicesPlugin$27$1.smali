.class Lcom/prime31/PlayGameServicesPlugin$27$1;
.super Landroid/os/AsyncTask;
.source "PlayGameServicesPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

.field final synthetic this$1:Lcom/prime31/PlayGameServicesPlugin$27;

.field private final synthetic val$snapshotName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin$27;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    iput-object p2, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->val$snapshotName:Ljava/lang/String;

    .line 1343
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1351
    sget-object v2, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$27;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v3}, Lcom/prime31/PlayGameServicesPlugin$27;->access$0(Lcom/prime31/PlayGameServicesPlugin$27;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v3

    iget-object v3, v3, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v3}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->val$snapshotName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 1353
    .local v0, "result":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    .line 1354
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 1356
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    iput-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 1371
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1358
    :cond_1
    const/16 v2, 0xfa4

    if-ne v1, v2, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$27;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v2}, Lcom/prime31/PlayGameServicesPlugin$27;->access$0(Lcom/prime31/PlayGameServicesPlugin$27;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->processSnapshotOpenResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-static {v2, v0, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->access$14(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    iput-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 1363
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz v2, :cond_0

    .line 1364
    const/4 v1, 0x0

    .line 1365
    goto :goto_0

    .line 1368
    :cond_2
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while loading: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$27$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 1377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$27;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin$27;->access$0(Lcom/prime31/PlayGameServicesPlugin$27;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    const-string v2, "loadSnapshotSucceeded"

    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$27;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v3}, Lcom/prime31/PlayGameServicesPlugin$27;->access$0(Lcom/prime31/PlayGameServicesPlugin$27;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v3

    iget-object v4, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->snapshot:Lcom/google/android/gms/games/snapshot/Snapshot;

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->jsonObjectFromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lorg/json/JSONObject;
    invoke-static {v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->access$15(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/snapshot/Snapshot;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin;->gamesStatusErrorCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "statusString":Ljava/lang/String;
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$27$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$27;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$27;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin$27;->access$0(Lcom/prime31/PlayGameServicesPlugin$27;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    const-string v2, "loadSnapshotFailed"

    invoke-virtual {v1, v2, v0}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$27$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
