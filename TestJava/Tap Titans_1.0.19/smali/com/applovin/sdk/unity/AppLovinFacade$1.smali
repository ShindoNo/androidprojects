.class Lcom/applovin/sdk/unity/AppLovinFacade$1;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;-><init>(Landroid/app/Activity;)V
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
    .line 141
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 143
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v2, Lcom/applovin/adview/AppLovinAdView;

    iget-object v3, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->sdk:Lcom/applovin/sdk/AppLovinSdk;
    invoke-static {v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$100(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v5, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;
    invoke-static {v1, v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$002(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/adview/AppLovinAdView;)Lcom/applovin/adview/AppLovinAdView;

    .line 144
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$000(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # invokes: Lcom/applovin/sdk/unity/AppLovinFacade;->setAdViewListeners()V
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$300(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    .line 148
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;
    invoke-static {v1, v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$402(Lcom/applovin/sdk/unity/AppLovinFacade;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 150
    const/16 v0, 0x33

    .line 151
    .local v0, "gravity":I
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$400(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$000(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$400(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$1;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-virtual {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->updateAdPosition()V

    .line 156
    return-void
.end method
