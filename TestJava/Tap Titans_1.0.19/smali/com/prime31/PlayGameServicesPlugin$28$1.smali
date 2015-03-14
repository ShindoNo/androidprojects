.class Lcom/prime31/PlayGameServicesPlugin$28$1;
.super Landroid/os/AsyncTask;
.source "PlayGameServicesPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin$28;->run()V
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
.field final synthetic this$1:Lcom/prime31/PlayGameServicesPlugin$28;

.field private final synthetic val$conflictPolicy:I

.field private final synthetic val$createIfMissing:Z

.field private final synthetic val$data:[B

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$snapshotName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin$28;Ljava/lang/String;ZILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    iput-object p2, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$snapshotName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$createIfMissing:Z

    iput p4, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$conflictPolicy:I

    iput-object p5, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$data:[B

    .line 1401
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1406
    const/4 v3, 0x0

    .line 1407
    .local v3, "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    sget-object v5, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$28;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v6}, Lcom/prime31/PlayGameServicesPlugin$28;->access$0(Lcom/prime31/PlayGameServicesPlugin$28;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v6

    iget-object v6, v6, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v6}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    iget-object v7, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$snapshotName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$createIfMissing:Z

    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/games/snapshot/Snapshots;->open(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;

    .line 1409
    .local v2, "openResult":Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;
    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v4

    .line 1410
    .local v4, "status":I
    const/16 v5, 0xfa4

    if-ne v4, v5, :cond_1

    .line 1412
    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$28;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v5}, Lcom/prime31/PlayGameServicesPlugin$28;->access$0(Lcom/prime31/PlayGameServicesPlugin$28;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$conflictPolicy:I

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->processSnapshotOpenResult(Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;
    invoke-static {v5, v2, v6, v7}, Lcom/prime31/PlayGameServicesPlugin;->access$14(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;II)Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v3

    .line 1415
    if-eqz v3, :cond_0

    .line 1416
    const/4 v4, 0x0

    .line 1424
    :cond_0
    if-nez v3, :cond_2

    .line 1425
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1443
    :goto_0
    return-object v5

    .line 1418
    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1420
    const-string v5, "Prime31"

    const-string v6, "Could not open Snapshot for update."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1428
    :cond_2
    new-instance v5, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    .line 1429
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v5

    .line 1430
    invoke-virtual {v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v1

    .line 1434
    .local v1, "metadataChange":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    iget-object v5, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->val$data:[B

    invoke-interface {v3, v5}, Lcom/google/android/gms/games/snapshot/Snapshot;->writeBytes([B)Z

    .line 1436
    sget-object v5, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$28;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v6}, Lcom/prime31/PlayGameServicesPlugin$28;->access$0(Lcom/prime31/PlayGameServicesPlugin$28;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v6

    iget-object v6, v6, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v6}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    invoke-interface {v5, v6, v3, v1}, Lcom/google/android/gms/games/snapshot/Snapshots;->commitAndClose(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;

    .line 1437
    .local v0, "commit":Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1439
    const-string v5, "Prime31"

    const-string v6, "Failed to commit Snapshot."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1443
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$28$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 1449
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$28;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin$28;->access$0(Lcom/prime31/PlayGameServicesPlugin$28;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    const-string v2, "saveSnapshotSucceeded"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin;->gamesStatusErrorCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, "statusString":Ljava/lang/String;
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$28$1;->this$1:Lcom/prime31/PlayGameServicesPlugin$28;

    # getter for: Lcom/prime31/PlayGameServicesPlugin$28;->this$0:Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin$28;->access$0(Lcom/prime31/PlayGameServicesPlugin$28;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    const-string v2, "saveSnapshotFailed"

    invoke-virtual {v1, v2, v0}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$28$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
