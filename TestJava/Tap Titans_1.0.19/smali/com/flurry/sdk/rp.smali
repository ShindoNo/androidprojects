.class public Lcom/flurry/sdk/rp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/sdk/rp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/flurry/sdk/rp;

    invoke-direct {v0}, Lcom/flurry/sdk/rp;-><init>()V

    sput-object v0, Lcom/flurry/sdk/rp;->a:Lcom/flurry/sdk/rp;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/flurry/sdk/rj;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/flurry/sdk/rj;->a([B)Lcom/flurry/sdk/rj;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/flurry/sdk/rk;
    .locals 1

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/rk;->s()Lcom/flurry/sdk/rk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/rk;->t()Lcom/flurry/sdk/rk;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/flurry/sdk/rr;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/flurry/sdk/rr;->s()Lcom/flurry/sdk/rr;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/flurry/sdk/rn;->b(D)Lcom/flurry/sdk/rn;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Lcom/flurry/sdk/ro;->a(I)Lcom/flurry/sdk/ro;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/flurry/sdk/rq;->a(J)Lcom/flurry/sdk/rq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigDecimal;)Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lcom/flurry/sdk/rm;->a(Ljava/math/BigDecimal;)Lcom/flurry/sdk/rm;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 126
    invoke-static {p1}, Lcom/flurry/sdk/ri;->a(Ljava/math/BigInteger;)Lcom/flurry/sdk/ri;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/flurry/sdk/ru;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/flurry/sdk/ru;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ru;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Lcom/flurry/sdk/rv;->b(Ljava/lang/String;)Lcom/flurry/sdk/rv;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/rg;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/flurry/sdk/rg;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/rg;-><init>(Lcom/flurry/sdk/rp;)V

    return-object v0
.end method

.method public c()Lcom/flurry/sdk/rt;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/flurry/sdk/rt;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/rt;-><init>(Lcom/flurry/sdk/rp;)V

    return-object v0
.end method
