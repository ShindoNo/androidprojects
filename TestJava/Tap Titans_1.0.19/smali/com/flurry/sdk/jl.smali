.class public Lcom/flurry/sdk/jl;
.super Lcom/flurry/sdk/ha;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jl;-><init>(Lcom/flurry/sdk/jn;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/jn;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ha;-><init>(Lcom/flurry/sdk/hk;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Lcom/flurry/sdk/jn;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jn;-><init>(Lcom/flurry/sdk/ha;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jl;->a(Lcom/flurry/sdk/hk;)Lcom/flurry/sdk/ha;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/flurry/sdk/hk;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/flurry/sdk/jl;->c()Lcom/flurry/sdk/jn;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/flurry/sdk/jn;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/jl;->f:Lcom/flurry/sdk/hk;

    check-cast v0, Lcom/flurry/sdk/jn;

    return-object v0
.end method
