.class Lcom/prime31/PlayGameServicesPlugin$24;
.super Ljava/lang/Object;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin;->loadAllEvents()V
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
        "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
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
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$24;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/games/event/Events$LoadEventsResult;

    invoke-virtual {p0, p1}, Lcom/prime31/PlayGameServicesPlugin$24;->onResult(Lcom/google/android/gms/games/event/Events$LoadEventsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/event/Events$LoadEventsResult;)V
    .locals 4
    .param p1, "res"    # Lcom/google/android/gms/games/event/Events$LoadEventsResult;

    .prologue
    .line 1291
    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/prime31/PlayGameServicesPlugin$24;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    const-string v1, "allEventsLoaded"

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$24;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getEvents()Lcom/google/android/gms/games/event/EventBuffer;

    move-result-object v3

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->jsonFromEventBuffer(Lcom/google/android/gms/games/event/EventBuffer;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/prime31/PlayGameServicesPlugin;->access$13(Lcom/prime31/PlayGameServicesPlugin;Lcom/google/android/gms/games/event/EventBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prime31/PlayGameServicesPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Games.Events.load failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/games/event/Events$LoadEventsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/prime31/PlayGameServicesPlugin;->gamesStatusErrorCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
