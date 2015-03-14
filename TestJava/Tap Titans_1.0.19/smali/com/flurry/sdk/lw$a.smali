.class public Lcom/flurry/sdk/lw$a;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 995
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$a;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 1002
    sget-object v1, Lcom/flurry/sdk/hj;->i:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/hj;->j:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 1003
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->y()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1012
    :goto_0
    return-object v0

    .line 1006
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_3

    .line 1007
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1009
    const/4 v0, 0x0

    goto :goto_0

    .line 1012
    :cond_2
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    iget-object v0, p0, Lcom/flurry/sdk/lw$a;->q:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 1018
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/lw$a;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/sdk/iw;->a(Ljava/lang/Class;Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method
