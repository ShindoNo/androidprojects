.class Lcom/applovin/impl/sdk/ax;
.super Lcom/applovin/impl/sdk/br;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/applovin/impl/sdk/n;

.field final synthetic d:Lcom/applovin/impl/sdk/aw;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aw;Ljava/lang/String;Lcom/applovin/impl/sdk/bb;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ax;->d:Lcom/applovin/impl/sdk/aw;

    iput-object p5, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/ax;->b:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/applovin/impl/sdk/ax;->c:Lcom/applovin/impl/sdk/n;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/br;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bb;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->c:Lcom/applovin/impl/sdk/n;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/n;->a(I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/n;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->c:Lcom/applovin/impl/sdk/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lorg/json/JSONObject;I)V

    return-void
.end method
