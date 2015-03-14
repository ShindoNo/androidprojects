.class public abstract Lcom/applovin/impl/adview/s;
.super Landroid/view/View;


# instance fields
.field protected a:Lcom/applovin/sdk/AppLovinSdk;

.field protected b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/adview/s;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/applovin/impl/adview/s;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public static a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/t;)Lcom/applovin/impl/adview/s;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/t;->b:Lcom/applovin/impl/adview/t;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/adview/aj;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/aj;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/ak;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/ak;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)V
.end method
