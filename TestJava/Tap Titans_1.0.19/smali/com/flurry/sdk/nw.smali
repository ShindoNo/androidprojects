.class public Lcom/flurry/sdk/nw;
.super Lcom/flurry/sdk/im;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/flurry/sdk/nw;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/flurry/sdk/qg;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 73
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/flurry/sdk/se;->f(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method
