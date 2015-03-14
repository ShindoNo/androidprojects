.class Lcom/tapjoy/TapjoyConnectUnity$33;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->enableEventPreload(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$preload:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$33;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$33;->val$guid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tapjoy/TapjoyConnectUnity$33;->val$preload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectUnity$33;->val$guid:Ljava/lang/String;

    # invokes: Lcom/tapjoy/TapjoyConnectUnity;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectUnity;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    if-eqz v0, :cond_0

    .line 1517
    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v0

    .line 1518
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyConnectUnity$33;->val$preload:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJEvent;->enablePreload(Z)V

    .line 1520
    :cond_0
    return-void
.end method
