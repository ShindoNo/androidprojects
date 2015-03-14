.class public Lcom/applovin/sdk/AppLovinAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdSize;

.field private final b:Lcom/applovin/sdk/AppLovinAdType;

.field private final c:J

.field protected final videoFilename:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No type specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/applovin/sdk/AppLovinAd;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p2, p0, Lcom/applovin/sdk/AppLovinAd;->b:Lcom/applovin/sdk/AppLovinAdType;

    iput-object p3, p0, Lcom/applovin/sdk/AppLovinAd;->videoFilename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/applovin/sdk/AppLovinAd;->c:J

    return-void
.end method


# virtual methods
.method public getAdIdNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/sdk/AppLovinAd;->c:J

    return-wide v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->a:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getType()Lcom/applovin/sdk/AppLovinAdType;
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->b:Lcom/applovin/sdk/AppLovinAdType;

    return-object v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinAd;->videoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cb;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
