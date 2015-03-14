.class final Lcom/tapjoy/TapjoyConnectUnity$1;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:Ljava/util/Hashtable;

.field final synthetic val$secretKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$appID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$secretKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$flags:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    const-string v0, "unity"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setPlugin(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$appID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$secretKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectUnity$1;->val$flags:Ljava/util/Hashtable;

    new-instance v4, Lcom/tapjoy/TapjoyConnectUnity$1$1;

    invoke-direct {v4, p0}, Lcom/tapjoy/TapjoyConnectUnity$1$1;-><init>(Lcom/tapjoy/TapjoyConnectUnity$1;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    .line 141
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$1$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectUnity$1$2;-><init>(Lcom/tapjoy/TapjoyConnectUnity$1;)V

    # setter for: Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectUnity;->access$202(Landroid/os/Handler;)Landroid/os/Handler;

    .line 169
    return-void
.end method
