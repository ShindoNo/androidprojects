.class Lcom/prime31/PlayGameServicesPlugin$12;
.super Ljava/lang/Object;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin;->setStateData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/PlayGameServicesPlugin;


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V
    .locals 10
    .param p1, "result"    # Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    .prologue
    .line 983
    if-nez p1, :cond_0

    .line 985
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v7, "updateCloudDataForKeyFailed"

    .line 986
    const-string v8, "Google returned a null StateResult object. Technically, this should never happen. If you can reproduce this please report the bug direclty to Google."

    .line 985
    invoke-virtual {v6, v7, v8}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :goto_0
    return-void

    .line 992
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;

    move-result-object v0

    .line 993
    .local v0, "conflictResult":Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;

    move-result-object v4

    .line 995
    .local v4, "loadedResult":Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    if-eqz v4, :cond_1

    .line 997
    new-instance v5, Ljava/lang/String;

    invoke-interface {v4}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getLocalData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 998
    .local v5, "localData":Ljava/lang/String;
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # getter for: Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/prime31/PlayGameServicesPlugin;->access$10(Lcom/prime31/PlayGameServicesPlugin;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStateKey()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v7, "updateCloudDataForKeySucceeded"

    iget-object v8, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    invoke-interface {v4}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStateKey()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/prime31/PlayGameServicesPlugin;->jsonizeCloudData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    .end local v0    # "conflictResult":Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    .end local v4    # "loadedResult":Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    .end local v5    # "localData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1017
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Prime31"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception updating cloud data: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v7, "updateCloudDataForKeyFailed"

    const-string v8, "Unknown error"

    invoke-virtual {v6, v7, v8}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "conflictResult":Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    .restart local v4    # "loadedResult":Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    :cond_1
    if-eqz v0, :cond_2

    .line 1004
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getServerData()[B

    move-result-object v1

    .line 1005
    .local v1, "data":[B
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v6, v6, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v6}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getStateKey()I

    move-result v7

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getResolvedVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v1}, Lcom/google/android/gms/appstate/AppStateManager;->resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0

    .line 1009
    .end local v1    # "data":[B
    :cond_2
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v7

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->appStateStatusCodeToString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/prime31/PlayGameServicesPlugin;->access$11(Lcom/prime31/PlayGameServicesPlugin;I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/prime31/PlayGameServicesPlugin$12;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v7, "updateCloudDataForKeyFailed"

    invoke-virtual {v6, v7, v3}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$12;->onResult(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V

    return-void
.end method
