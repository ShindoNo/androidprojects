.class Lcom/prime31/RealtimeMultiplayer$2;
.super Ljava/lang/Object;
.source "RealtimeMultiplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/RealtimeMultiplayer;->createRoomProgrammatically(IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/RealtimeMultiplayer;

.field private final synthetic val$exclusiveBitmask:J

.field private final synthetic val$maxAutoMatchPlayers:I

.field private final synthetic val$minAutoMatchPlayers:I

.field private final synthetic val$variant:I


# direct methods
.method constructor <init>(Lcom/prime31/RealtimeMultiplayer;IIJI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/RealtimeMultiplayer$2;->this$0:Lcom/prime31/RealtimeMultiplayer;

    iput p2, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$minAutoMatchPlayers:I

    iput p3, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$maxAutoMatchPlayers:I

    iput-wide p4, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$exclusiveBitmask:J

    iput p6, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$variant:I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 266
    iget v3, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$minAutoMatchPlayers:I

    iget v4, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$maxAutoMatchPlayers:I

    iget-wide v5, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$exclusiveBitmask:J

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v0

    .line 269
    .local v0, "am":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/prime31/RealtimeMultiplayer$2;->this$0:Lcom/prime31/RealtimeMultiplayer;

    # invokes: Lcom/prime31/RealtimeMultiplayer;->makeBasicRoomConfigBuilder()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    invoke-static {v3}, Lcom/prime31/RealtimeMultiplayer;->access$1(Lcom/prime31/RealtimeMultiplayer;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v3

    .line 270
    iget v4, p0, Lcom/prime31/RealtimeMultiplayer$2;->val$variant:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    move-result-object v2

    .line 271
    .local v2, "roomConfigBuilder":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    .line 272
    invoke-virtual {v2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    move-result-object v1

    .line 275
    .local v1, "roomConfig":Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    sget-object v3, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    iget-object v4, p0, Lcom/prime31/RealtimeMultiplayer$2;->this$0:Lcom/prime31/RealtimeMultiplayer;

    # invokes: Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v4}, Lcom/prime31/RealtimeMultiplayer;->access$0(Lcom/prime31/RealtimeMultiplayer;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v4

    iget-object v4, v4, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v4}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;->create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    .line 276
    return-void
.end method
