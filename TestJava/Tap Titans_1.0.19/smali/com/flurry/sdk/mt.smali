.class public Lcom/flurry/sdk/mt;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/sdk/in;

.field protected final d:Lcom/flurry/sdk/mk;

.field protected e:Lcom/flurry/sdk/qo;

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/flurry/sdk/mo;

.field protected h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/mn;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/flurry/sdk/mo;

.field protected l:Lcom/flurry/sdk/mo;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mk;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jk",
            "<*>;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/mk;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p2}, Lcom/flurry/sdk/io;-><init>(Lcom/flurry/sdk/se;)V

    .line 98
    iput-object p1, p0, Lcom/flurry/sdk/mt;->b:Lcom/flurry/sdk/jk;

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/mt;->c:Lcom/flurry/sdk/in;

    .line 100
    iput-object p3, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    .line 101
    iput-object p4, p0, Lcom/flurry/sdk/mt;->f:Ljava/util/List;

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mk;)Lcom/flurry/sdk/mt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jk",
            "<*>;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/mk;",
            ")",
            "Lcom/flurry/sdk/mt;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/flurry/sdk/mt;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/flurry/sdk/mt;-><init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mk;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/sdk/mz;)Lcom/flurry/sdk/mt;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lcom/flurry/sdk/mt;

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->a()Lcom/flurry/sdk/jk;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->b()Lcom/flurry/sdk/se;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->c()Lcom/flurry/sdk/mk;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/mt;-><init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mk;Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->h()Lcom/flurry/sdk/mo;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->g:Lcom/flurry/sdk/mo;

    .line 115
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->i()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->i:Ljava/util/Set;

    .line 116
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->j()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->j:Ljava/util/Set;

    .line 117
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->e()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->h:Ljava/util/Map;

    .line 118
    return-object v0
.end method

.method public static b(Lcom/flurry/sdk/mz;)Lcom/flurry/sdk/mt;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcom/flurry/sdk/mt;

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->a()Lcom/flurry/sdk/jk;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->b()Lcom/flurry/sdk/se;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->c()Lcom/flurry/sdk/mk;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/mt;-><init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mk;Ljava/util/List;)V

    .line 131
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->f()Lcom/flurry/sdk/mo;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->k:Lcom/flurry/sdk/mo;

    .line 132
    invoke-virtual {p0}, Lcom/flurry/sdk/mz;->g()Lcom/flurry/sdk/mo;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/mt;->l:Lcom/flurry/sdk/mo;

    .line 133
    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/kd$a;)Lcom/flurry/sdk/kd$a;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/flurry/sdk/mt;->c:Lcom/flurry/sdk/in;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mt;->c:Lcom/flurry/sdk/in;

    iget-object v1, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mj;Lcom/flurry/sdk/kd$a;)Lcom/flurry/sdk/kd$a;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/sdk/mo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/mo;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/mk;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/sdk/mo;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/qo;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->h()Lcom/flurry/sdk/ml;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/flurry/sdk/ml;->k()V

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/sdk/ml;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 311
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 314
    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 315
    :cond_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 316
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate bean of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v3}, Lcom/flurry/sdk/mk;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 309
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public varargs a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ml;

    .line 355
    invoke-virtual {v0}, Lcom/flurry/sdk/ml;->f()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 356
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ml;->a(I)Ljava/lang/Class;

    move-result-object v4

    .line 357
    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, p1, v1

    .line 358
    if-ne v6, v4, :cond_1

    .line 359
    invoke-virtual {v0}, Lcom/flurry/sdk/ml;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 364
    :goto_1
    return-object v0

    .line 357
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/mo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1}, Lcom/flurry/sdk/mo;->d()Ljava/lang/Class;

    move-result-object v2

    .line 401
    invoke-virtual {p0}, Lcom/flurry/sdk/mt;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/mt;->c:Lcom/flurry/sdk/in;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    const-string v2, "valueOf"

    invoke-virtual {p1}, Lcom/flurry/sdk/mo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 413
    goto :goto_0
.end method

.method public varargs b([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mo;

    .line 380
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/mt;->a(Lcom/flurry/sdk/mo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/mo;->a(I)Ljava/lang/Class;

    move-result-object v4

    .line 383
    array-length v5, p1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, p1, v1

    .line 385
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 391
    :goto_1
    return-object v0

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Lcom/flurry/sdk/mk;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/mt;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/mo;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/mt;->k:Lcom/flurry/sdk/mo;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/mt;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mt;->i:Ljava/util/Set;

    goto :goto_0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/sdk/mt;->j:Ljava/util/Set;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->g()Z

    move-result v0

    return v0
.end method

.method public i()Lcom/flurry/sdk/qs;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->f()Lcom/flurry/sdk/qs;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/qo;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/mt;->e:Lcom/flurry/sdk/qo;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/flurry/sdk/qo;

    iget-object v1, p0, Lcom/flurry/sdk/mt;->b:Lcom/flurry/sdk/jk;

    invoke-virtual {v1}, Lcom/flurry/sdk/jk;->m()Lcom/flurry/sdk/qp;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/mt;->a:Lcom/flurry/sdk/se;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/qo;-><init>(Lcom/flurry/sdk/qp;Lcom/flurry/sdk/se;)V

    iput-object v0, p0, Lcom/flurry/sdk/mt;->e:Lcom/flurry/sdk/qo;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mt;->e:Lcom/flurry/sdk/qo;

    return-object v0
.end method

.method public k()Lcom/flurry/sdk/ml;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->h()Lcom/flurry/sdk/ml;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/flurry/sdk/mo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/mt;->g:Lcom/flurry/sdk/mo;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/flurry/sdk/mt;->g:Lcom/flurry/sdk/mo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/mo;->a(I)Ljava/lang/Class;

    move-result-object v0

    .line 257
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/mt;->g:Lcom/flurry/sdk/mo;

    invoke-virtual {v3}, Lcom/flurry/sdk/mo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mt;->g:Lcom/flurry/sdk/mo;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/mn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/mt;->h:Ljava/util/Map;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ml;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/mo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/mt;->d:Lcom/flurry/sdk/mk;

    invoke-virtual {v0}, Lcom/flurry/sdk/mk;->j()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :goto_0
    return-object v0

    .line 333
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mo;

    .line 335
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/mt;->a(Lcom/flurry/sdk/mo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 339
    goto :goto_0
.end method

.method public p()Lcom/flurry/sdk/mo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/flurry/sdk/mt;->l:Lcom/flurry/sdk/mo;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/flurry/sdk/mt;->l:Lcom/flurry/sdk/mo;

    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->d()Ljava/lang/Class;

    move-result-object v0

    .line 490
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/mt;->l:Lcom/flurry/sdk/mo;

    invoke-virtual {v2}, Lcom/flurry/sdk/mo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(): return type is not instance of java.util.Map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mt;->l:Lcom/flurry/sdk/mo;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/mn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/mt;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 506
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->k()Lcom/flurry/sdk/mn;

    move-result-object v3

    .line 507
    if-eqz v3, :cond_0

    .line 510
    iget-object v0, p0, Lcom/flurry/sdk/mt;->c:Lcom/flurry/sdk/in;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/in$a;

    move-result-object v4

    .line 511
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/flurry/sdk/in$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    if-nez v1, :cond_2

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 515
    :goto_1
    invoke-virtual {v4}, Lcom/flurry/sdk/in$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple back-reference properties with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
