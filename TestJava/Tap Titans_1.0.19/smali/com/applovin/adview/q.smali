.class Lcom/applovin/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/s;

.field final synthetic b:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/adview/s;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/q;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iput-object p2, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/impl/adview/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/impl/adview/s;

    iget-object v1, p0, Lcom/applovin/adview/q;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->f(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/q;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/q;->a:Lcom/applovin/impl/adview/s;

    iget-object v1, p0, Lcom/applovin/adview/q;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/q;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    goto :goto_0
.end method
