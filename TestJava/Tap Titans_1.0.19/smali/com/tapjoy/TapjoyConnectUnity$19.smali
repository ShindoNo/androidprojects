.class Lcom/tapjoy/TapjoyConnectUnity$19;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->enableDisplayAdAutoRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$shouldAutoRefresh:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Z)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$19;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-boolean p2, p0, Lcom/tapjoy/TapjoyConnectUnity$19;->val$shouldAutoRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 603
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tapjoy/TapjoyConnectUnity$19;->val$shouldAutoRefresh:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->enableDisplayAdAutoRefresh(Z)V

    .line 604
    return-void
.end method
