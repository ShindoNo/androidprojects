.class Lcom/tapjoy/TapjoyConnectUnity$22;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->setVideoCacheCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;I)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$22;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput p2, p0, Lcom/tapjoy/TapjoyConnectUnity$22;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 668
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/TapjoyConnectUnity$22;->val$count:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setVideoCacheCount(I)V

    .line 669
    return-void
.end method
