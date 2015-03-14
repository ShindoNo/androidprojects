.class Lcom/applovin/sdk/unity/AppLovinFacade$4;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->loadNextAd()V
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
    .line 472
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$4;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$4;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # invokes: Lcom/applovin/sdk/unity/AppLovinFacade;->setAdViewListeners()V
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$300(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    .line 475
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$4;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->adView:Lcom/applovin/adview/AppLovinAdView;
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$000(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 476
    return-void
.end method
