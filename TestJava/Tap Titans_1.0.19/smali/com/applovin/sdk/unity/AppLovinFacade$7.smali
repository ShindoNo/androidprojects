.class Lcom/applovin/sdk/unity/AppLovinFacade$7;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->showIncentInterstitial()V
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
    .line 516
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 518
    new-instance v2, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V

    .line 520
    .local v2, "listenerWrapper":Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$900(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    invoke-static {v0}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$900(Lcom/applovin/sdk/unity/AppLovinFacade;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # getter for: Lcom/applovin/sdk/unity/AppLovinFacade;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$200(Lcom/applovin/sdk/unity/AppLovinFacade;)Landroid/app/Activity;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$7;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "LOADFAILED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    goto :goto_0
.end method
