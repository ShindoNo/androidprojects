.class final Lcom/tapjoy/TapjoyConnectUnity$27;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectUnity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1336
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$600()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1338
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$600()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1340
    :cond_0
    return-void
.end method
