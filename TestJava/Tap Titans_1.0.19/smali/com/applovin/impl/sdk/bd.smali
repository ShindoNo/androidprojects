.class public Lcom/applovin/impl/sdk/bd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/bc;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->O:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->aw:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->ax:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->Q:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->R:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->T:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->S:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->V:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->U:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->W:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->ao:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->aq:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->ar:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->as:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->au:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->at:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->av:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->ay:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bd;->a:Lcom/applovin/impl/sdk/bc;

    sget-object v1, Lcom/applovin/impl/sdk/az;->az:Lcom/applovin/impl/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
