.class Lcom/tapjoy/TapjoyConnectUnity$18;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->setDisplayAdSize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$dimensions:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$18;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$18;->val$dimensions:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$18;->val$dimensions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setDisplayAdSize(Ljava/lang/String;)V

    .line 585
    return-void
.end method
