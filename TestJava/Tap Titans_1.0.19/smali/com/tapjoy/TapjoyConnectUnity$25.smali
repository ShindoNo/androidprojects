.class Lcom/tapjoy/TapjoyConnectUnity$25;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity;

.field final synthetic val$currencyCode:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$price:F

.field final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity;Ljava/lang/String;FILjava/lang/String;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$price:F

    iput p4, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$quantity:I

    iput-object p5, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$currencyCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 732
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$name:Ljava/lang/String;

    iget v2, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$price:F

    iget v3, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$quantity:I

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectUnity$25;->val$currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tapjoy/TapjoyConnect;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 733
    return-void
.end method
