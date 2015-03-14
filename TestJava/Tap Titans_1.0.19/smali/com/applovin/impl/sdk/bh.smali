.class Lcom/applovin/impl/sdk/bh;
.super Lcom/applovin/impl/sdk/br;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/applovin/impl/sdk/bg;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bg;Ljava/lang/String;Lcom/applovin/impl/sdk/bb;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bh;->b:Lcom/applovin/impl/sdk/bg;

    iput-object p5, p0, Lcom/applovin/impl/sdk/bh;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/br;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bb;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/o;->a(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/n;)V
    .locals 2

    const-string v0, "device"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bh;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bh;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->b:Lcom/applovin/impl/sdk/bg;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/bg;->a(Lorg/json/JSONObject;)V

    return-void
.end method
