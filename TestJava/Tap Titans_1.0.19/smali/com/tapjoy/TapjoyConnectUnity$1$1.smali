.class Lcom/tapjoy/TapjoyConnectUnity$1$1;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Lcom/tapjoy/TapjoyConnectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity$1;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$1$1;->this$0:Lcom/tapjoy/TapjoyConnectUnity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 137
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnectSuccess"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .prologue
    .line 127
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->handlerClassName:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnectSuccess"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    # invokes: Lcom/tapjoy/TapjoyConnectUnity;->onSuccess()V
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$100()V

    .line 129
    return-void
.end method
