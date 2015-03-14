.class public Lcom/flurry/sdk/nx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ja;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/jd",
            "<*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qf;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/qf;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qh;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qh;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/qh;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qi;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/qi;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qk;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/ji;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/qk;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ql;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/ji;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/ql;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/io;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/he;",
            ">;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nx;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method
