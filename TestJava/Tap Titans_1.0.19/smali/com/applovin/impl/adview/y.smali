.class Lcom/applovin/impl/adview/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ad;

.field final synthetic b:Lcom/applovin/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/y;->b:Lcom/applovin/impl/adview/v;

    iput-object p2, p0, Lcom/applovin/impl/adview/y;->a:Lcom/applovin/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/y;->a:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/y;->a:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    :cond_0
    return-void
.end method
