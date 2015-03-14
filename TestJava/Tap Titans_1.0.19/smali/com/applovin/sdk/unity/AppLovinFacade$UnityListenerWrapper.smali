.class Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;
.super Ljava/lang/Object;
.source "AppLovinFacade.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/sdk/unity/AppLovinFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/sdk/unity/AppLovinFacade;


# direct methods
.method private constructor <init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/unity/AppLovinFacade$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/applovin/sdk/unity/AppLovinFacade;
    .param p2, "x1"    # Lcom/applovin/sdk/unity/AppLovinFacade$1;

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;-><init>(Lcom/applovin/sdk/unity/AppLovinFacade;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "CLICKED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISPLAYED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const/4 v1, 0x1

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->interCurrentlyShowing:Z
    invoke-static {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1202(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z

    .line 628
    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v3, 0x0

    .line 632
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->interCurrentlyShowing:Z
    invoke-static {v0, v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1202(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z

    .line 636
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const/4 v1, 0x0

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->lastAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$802(Lcom/applovin/sdk/unity/AppLovinFacade;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady:Z
    invoke-static {v0, v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1302(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z

    .line 642
    :cond_1
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 647
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "LOADEDREWARDED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const/4 v1, 0x1

    # setter for: Lcom/applovin/sdk/unity/AppLovinFacade;->isIncentReady:Z
    invoke-static {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->access$1302(Lcom/applovin/sdk/unity/AppLovinFacade;Z)Z

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "LOADFAILED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "USERDECLINED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "REWARDOVERQUOTA"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "REWARDREJECTED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 5
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v3, "REWARDAPPROVED"

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 666
    const-string v2, "amount"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    .local v0, "amountStr":Ljava/lang/String;
    const-string v2, "currency"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    .local v1, "currencyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 670
    iget-object v2, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REWARDAPPROVEDINFO|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "errorCode"    # I

    .prologue
    .line 686
    const/16 v0, -0x258

    if-ne p2, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "USERCLOSEDEARLY"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "REWARDTIMEOUT"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "VIDEOBEGAN"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 705
    iget-object v0, p0, Lcom/applovin/sdk/unity/AppLovinFacade$UnityListenerWrapper;->this$0:Lcom/applovin/sdk/unity/AppLovinFacade;

    const-string v1, "VIDEOSTOPPED"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/unity/AppLovinFacade;->sendToCSharp(Ljava/lang/String;)V

    .line 706
    return-void
.end method
