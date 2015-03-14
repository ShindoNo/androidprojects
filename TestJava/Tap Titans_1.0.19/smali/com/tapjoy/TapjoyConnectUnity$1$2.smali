.class Lcom/tapjoy/TapjoyConnectUnity$1$2;
.super Landroid/os/Handler;
.source "TapjoyConnectUnity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity$1;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$1$2;->this$0:Lcom/tapjoy/TapjoyConnectUnity$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    if-eqz p1, :cond_0

    .line 151
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 154
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity$1$2;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x38f

    if-ne v0, v1, :cond_2

    .line 159
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity$1$2;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 164
    :cond_2
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->removeDisplayAd:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity$1$2;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
