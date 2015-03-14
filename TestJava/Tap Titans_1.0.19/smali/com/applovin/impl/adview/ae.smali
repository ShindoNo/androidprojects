.class Lcom/applovin/impl/adview/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ad;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/ad;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ad;->a(Lcom/applovin/impl/adview/ad;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/ad;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/ad;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ad;->a(Lcom/applovin/impl/adview/ad;I)V

    return-void
.end method
