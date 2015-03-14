.class Lcom/applovin/impl/adview/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/v;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/v;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/v;

    iput-object p2, p0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/v;

    invoke-static {v0}, Lcom/applovin/impl/adview/v;->f(Lcom/applovin/impl/adview/v;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/z;->b:Lcom/applovin/impl/adview/v;

    iget-object v0, p0, Lcom/applovin/impl/adview/z;->a:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/applovin/impl/adview/t;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/adview/v;->a(Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/t;)V

    return-void
.end method
