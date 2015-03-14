.class Lcom/tapjoy/TapjoyConnectUnity$11;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->showOffersWithCurrencyID(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$currencyID:Ljava/lang/String;

.field final synthetic val$enableCurrencySelector:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$11;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$11;->val$currencyID:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tapjoy/TapjoyConnectUnity$11;->val$enableCurrencySelector:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$11;->val$currencyID:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyConnectUnity$11;->val$enableCurrencySelector:Z

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->showOffersWithCurrencyID(Ljava/lang/String;Z)V

    .line 431
    return-void
.end method
