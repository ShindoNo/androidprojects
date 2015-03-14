.class Lcom/tapjoy/TapjoyConnectUnity$35;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->eventRequestCancelled(Ljava/lang/String;)V
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
    .line 1549
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$35;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$35;->val$guid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1552
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->eventRequestMap:Ljava/util/Hashtable;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$1000()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$35;->val$guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEventRequest;

    .line 1553
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    if-eqz v1, :cond_0

    .line 1555
    const-string v1, "TapjoyUnity"

    const-string v2, "sending TJEventRequest cancelled"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, v0, Lcom/tapjoy/TJEventRequest;->callback:Lcom/tapjoy/TJEventRequestCallback;

    invoke-interface {v0}, Lcom/tapjoy/TJEventRequestCallback;->cancelled()V

    .line 1558
    :cond_0
    return-void
.end method
