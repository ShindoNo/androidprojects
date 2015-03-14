.class Lcom/applovin/sdk/unity/AppLovinFacade$8;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->updateAdPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/sdk/unity/AppLovinFacade;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 546
    const/16 v0, 0x11

    .line 547
    .local v0, "gravity":I
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1000(Lcom/applovin/sdk/unity/AppLovinFacade;)F

    move-result v1

    const v2, -0x3963c000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 548
    const/4 v0, 0x3

    .line 555
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1100(Lcom/applovin/sdk/unity/AppLovinFacade;)F

    move-result v1

    const v2, -0x38e3c000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 556
    or-int/lit8 v0, v0, 0x30

    .line 561
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # invokes: Lcom/applovin/sdk/unity/AppLovinFacade;->updatePadding()V
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$600(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    .line 563
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$400(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    return-void

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1000(Lcom/applovin/sdk/unity/AppLovinFacade;)F

    move-result v1

    const v2, -0x39e3c000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 550
    const/16 v0, 0x11

    goto :goto_0

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->horizontalPosition:F
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1000(Lcom/applovin/sdk/unity/AppLovinFacade;)F

    move-result v1

    const v2, -0x3915a000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 552
    const/4 v0, 0x5

    goto :goto_0

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$8;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->verticalPosition:F
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1100(Lcom/applovin/sdk/unity/AppLovinFacade;)F

    move-result v1

    const v2, -0x38bcb000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 558
    or-int/lit8 v0, v0, 0x50

    goto :goto_1
.end method
