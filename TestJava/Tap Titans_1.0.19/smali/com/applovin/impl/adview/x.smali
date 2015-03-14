.class Lcom/applovin/impl/adview/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ad;

.field final synthetic b:Lcom/applovin/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/impl/adview/v;

    iput-object p2, p0, Lcom/applovin/impl/adview/x;->a:Lcom/applovin/impl/adview/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->a:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdClickListener;->adClicked(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
