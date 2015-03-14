.class Lcom/tapjoy/TapjoyConnectUnity$7;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->enablePaidAppWithActionID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$paidAppPayPerActionID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$7;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$7;->val$paidAppPayPerActionID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$7;->val$paidAppPayPerActionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 334
    return-void
.end method
