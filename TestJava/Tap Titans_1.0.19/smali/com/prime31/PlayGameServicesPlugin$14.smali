.class Lcom/prime31/PlayGameServicesPlugin$14;
.super Ljava/lang/Object;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin;->deleteCloudDataForKey(IZ)V
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
        "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/PlayGameServicesPlugin;

.field private final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iput p2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->val$key:I

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;)V
    .locals 5
    .param p1, "res"    # Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    .prologue
    .line 1093
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    .line 1096
    .local v1, "statusCode":I
    if-eqz v1, :cond_1

    .line 1098
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->appStateStatusCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/prime31/PlayGameServicesPlugin;->access$11(Lcom/prime31/PlayGameServicesPlugin;I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v3, "deleteCloudDataForKeyFailed"

    invoke-virtual {v2, v3, v0}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v3, "deleteCloudDataForKeySucceeded"

    iget v4, p0, Lcom/prime31/PlayGameServicesPlugin$14;->val$key:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # getter for: Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/prime31/PlayGameServicesPlugin;->access$10(Lcom/prime31/PlayGameServicesPlugin;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/prime31/PlayGameServicesPlugin$14;->val$key:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1107
    const-string v2, "Prime31"

    const-string v3, "found cloud data in the local cache. Clearing it now."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$14;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # getter for: Lcom/prime31/PlayGameServicesPlugin;->_cloudDataMap:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/prime31/PlayGameServicesPlugin;->access$10(Lcom/prime31/PlayGameServicesPlugin;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/prime31/PlayGameServicesPlugin$14;->val$key:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$14;->onResult(Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;)V

    return-void
.end method
