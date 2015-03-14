.class abstract Lcom/applovin/impl/sdk/br;
.super Lcom/applovin/impl/sdk/ay;

# interfaces
.implements Lcom/applovin/impl/sdk/n;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/impl/sdk/n;

.field private c:Lcom/applovin/impl/sdk/bb;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/ay;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bb;

    iput p2, p0, Lcom/applovin/impl/sdk/br;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/bs;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/bs;-><init>(Lcom/applovin/impl/sdk/br;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/br;->b:Lcom/applovin/impl/sdk/n;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bb;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/br;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/br;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/br;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/br;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/br;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/br;I)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/br;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/impl/sdk/br;->a:I

    return v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/br;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/br;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bb;

    iget-object v2, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bb;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bc;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/bb;

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/n;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/br;->a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method
