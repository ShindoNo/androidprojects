.class Lcom/tapjoy/TapjoyConnectUnity$30;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->sendEventWithGuid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$guid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$30;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$30;->val$guid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectUnity$30;->val$guid:Ljava/lang/String;

    # invokes: Lcom/tapjoy/TapjoyConnectUnity;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectUnity;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    if-eqz v0, :cond_0

    .line 1464
    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->send()V

    .line 1467
    :cond_0
    return-void
.end method
