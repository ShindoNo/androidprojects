.class Lcom/tapjoy/TapjoyConnectUnity$13;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->spendTapPoints(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$amount:I


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;I)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$13;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput p2, p0, Lcom/tapjoy/TapjoyConnectUnity$13;->val$amount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 468
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/TapjoyConnectUnity$13;->val$amount:I

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$13;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 469
    return-void
.end method
