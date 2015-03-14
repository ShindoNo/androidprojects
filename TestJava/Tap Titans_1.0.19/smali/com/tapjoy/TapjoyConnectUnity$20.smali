.class Lcom/tapjoy/TapjoyConnectUnity$20;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->getDisplayAd()V
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
    .line 619
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$20;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 622
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->tapjoyConnect:Lcom/tapjoy/TapjoyConnect;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$400()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$500()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectUnity$20;->this$0:Lcom/tapjoy/TapjoyConnectUnity;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 623
    return-void
.end method
