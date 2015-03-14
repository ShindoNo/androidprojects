.class Lcom/applovin/sdk/unity/AppLovinFacade$2;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->showAd()V
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
    .line 450
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$2;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$2;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$000(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$2;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->mainLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$400(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 454
    return-void
.end method
