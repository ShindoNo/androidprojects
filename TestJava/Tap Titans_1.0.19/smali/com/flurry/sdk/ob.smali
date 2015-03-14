.class public Lcom/flurry/sdk/ob;
.super Lcom/flurry/sdk/kv$a;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/ku;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ku;)Lcom/flurry/sdk/ku;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p2}, Lcom/flurry/sdk/io;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ku;

    .line 43
    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method
