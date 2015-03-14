.class Lcom/applovin/sdk/unity/AppLovinFacade$9;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;->preloadInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

.field final synthetic val$listenerWrapper:Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/applovin/sdk/unity/AppLovinFacade;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$9;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    iput-object p2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$9;->val$listenerWrapper:Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$9;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v0, p1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$802(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 585
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$9;->val$listenerWrapper:Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    .line 586
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$9;->val$listenerWrapper:Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->failedToReceiveAd(I)V

    .line 591
    return-void
.end method
