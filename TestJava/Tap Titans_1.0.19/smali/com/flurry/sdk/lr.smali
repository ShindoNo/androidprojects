.class public Lcom/flurry/sdk/lr;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Lcom/flurry/sdk/se;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/se;

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
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lr;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/se;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/flurry/sdk/lr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/se;

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->f()Lcom/flurry/sdk/qp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/qp;->b(Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hj;->g:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/se;

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/lr;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method
