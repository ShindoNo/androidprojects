.class Lcom/prime31/RealtimeMultiplayer$1;
.super Ljava/lang/Object;
.source "RealtimeMultiplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/RealtimeMultiplayer;->showInvitationInbox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/RealtimeMultiplayer;


# direct methods
.method constructor <init>(Lcom/prime31/RealtimeMultiplayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/RealtimeMultiplayer$1;->this$0:Lcom/prime31/RealtimeMultiplayer;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    sget-object v1, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    iget-object v2, p0, Lcom/prime31/RealtimeMultiplayer$1;->this$0:Lcom/prime31/RealtimeMultiplayer;

    # invokes: Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v2}, Lcom/prime31/RealtimeMultiplayer;->access$0(Lcom/prime31/RealtimeMultiplayer;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v2

    iget-object v2, v2, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v2}, Lcom/prime31/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/multiplayer/Invitations;->getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prime31/RealtimeMultiplayer$1;->this$0:Lcom/prime31/RealtimeMultiplayer;

    # invokes: Lcom/prime31/RealtimeMultiplayer;->instance()Lcom/prime31/PlayGameServicesPlugin;
    invoke-static {v1}, Lcom/prime31/RealtimeMultiplayer;->access$0(Lcom/prime31/RealtimeMultiplayer;)Lcom/prime31/PlayGameServicesPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x13427

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 252
    return-void
.end method
