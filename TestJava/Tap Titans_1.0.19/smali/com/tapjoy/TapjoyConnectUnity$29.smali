.class Lcom/tapjoy/TapjoyConnectUnity$29;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->createEventWithGuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$parameter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$parameter:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$guid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1441
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$800()Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    # setter for: Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectUnity;->access$802(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1444
    :cond_0
    new-instance v0, Lcom/tapjoy/TJEvent;

    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->ctx:Landroid/content/Context;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$700()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$parameter:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/TJEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V

    .line 1446
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->guidMap:Ljava/util/Hashtable;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$800()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$29;->val$guid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    return-void
.end method
