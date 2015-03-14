.class Lcom/applovin/sdk/unity/AppLovinFacade$6;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->showInterstitial()V
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
    .line 491
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 493
    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/applovin/sdk/unity/AppLovinFacade;->getAppropriateSdkInstance(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$700(Landroid/app/Activity;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 495
    .local v0, "adDialog":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    new-instance v1, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V

    .line 497
    .local v1, "listenerWrapper":Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 498
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 499
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 500
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 502
    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$800(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$6;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v2}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$800(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V

    goto :goto_0
.end method
