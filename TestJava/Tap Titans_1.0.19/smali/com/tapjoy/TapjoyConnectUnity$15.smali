.class Lcom/tapjoy/TapjoyConnectUnity$15;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->getFullScreenAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$15;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 514
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$15;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 515
    return-void
.end method
