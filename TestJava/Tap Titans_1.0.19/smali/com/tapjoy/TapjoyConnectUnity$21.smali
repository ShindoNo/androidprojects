.class Lcom/tapjoy/TapjoyConnectUnity$21;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->getDisplayAdWithCurrencyID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$currencyID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$21;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$21;->val$currencyID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 644
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$500()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$21;->val$currencyID:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectUnity$21;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyConnect;->getDisplayAdWithCurrencyID(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 645
    return-void
.end method
