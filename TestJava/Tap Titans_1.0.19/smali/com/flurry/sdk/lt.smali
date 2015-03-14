.class public Lcom/flurry/sdk/lt;
.super Lcom/flurry/sdk/ll;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jp;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ll",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/flurry/sdk/jp;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/se;

.field protected final b:Lcom/flurry/sdk/ji;

.field protected final c:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/flurry/sdk/jv;

.field protected final e:Lcom/flurry/sdk/ku;

.field protected final f:Z

.field protected g:Lcom/flurry/sdk/la;

.field protected h:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ku;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ku;",
            "Lcom/flurry/sdk/ji;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ll;-><init>(Ljava/lang/Class;)V

    .line 124
    iput-object p1, p0, Lcom/flurry/sdk/lt;->a:Lcom/flurry/sdk/se;

    .line 125
    iput-object p3, p0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ji;

    .line 126
    iput-object p4, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/jd;

    .line 127
    iput-object p5, p0, Lcom/flurry/sdk/lt;->d:Lcom/flurry/sdk/jv;

    .line 128
    iput-object p2, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    .line 129
    invoke-virtual {p2}, Lcom/flurry/sdk/ku;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/flurry/sdk/la;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/ku;)V

    iput-object v0, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    .line 134
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/ku;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/lt;->f:Z

    .line 135
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    goto :goto_0
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
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jv;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/flurry/sdk/lt;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 263
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)V

    .line 264
    return-object p3
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {v0}, Lcom/flurry/sdk/ku;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {v0}, Lcom/flurry/sdk/ku;->l()Lcom/flurry/sdk/se;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid delegate-creator definition for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/lt;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": value instantiator ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {v1}, Lcom/flurry/sdk/ku;->o()Lcom/flurry/sdk/mr;

    move-result-object v1

    .line 190
    new-instance v2, Lcom/flurry/sdk/ip$a;

    invoke-direct {v2, v3, v0, v3, v1}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    .line 192
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lt;->h:Lcom/flurry/sdk/jd;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    invoke-virtual {v0}, Lcom/flurry/sdk/la;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kq;

    .line 196
    invoke-virtual {v0}, Lcom/flurry/sdk/kq;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    invoke-virtual {v0}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/se;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    goto :goto_0

    .line 201
    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 403
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 406
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/flurry/sdk/je;

    if-nez v1, :cond_2

    .line 407
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 409
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/flurry/sdk/je;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/lt;->i:Ljava/util/HashSet;

    .line 162
    return-void

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lt;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Map;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/lt;->h:Lcom/flurry/sdk/jd;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    iget-object v1, p0, Lcom/flurry/sdk/lt;->h:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/lt;->f:Z

    if-nez v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/flurry/sdk/lt;->e()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "No default constructor found"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/flurry/sdk/hj;->c:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_4

    .line 243
    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/lt;->e()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/lt;->e:Lcom/flurry/sdk/ku;

    invoke-virtual {v0}, Lcom/flurry/sdk/ku;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected final b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ji;

    .line 302
    iget-object v2, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/jd;

    .line 303
    iget-object v3, p0, Lcom/flurry/sdk/lt;->d:Lcom/flurry/sdk/jv;

    .line 304
    :goto_0
    sget-object v4, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v4, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->g()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v1, v0, p2}, Lcom/flurry/sdk/ji;->a(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v4

    .line 309
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v5

    .line 310
    iget-object v6, p0, Lcom/flurry/sdk/lt;->i:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/flurry/sdk/lt;->i:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->d()Lcom/flurry/sdk/hg;

    .line 304
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v5, v0, :cond_2

    .line 317
    const/4 v0, 0x0

    .line 327
    :goto_2
    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_2
    if-nez v3, :cond_3

    .line 319
    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {v2, p1, p2, v3}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 329
    :cond_4
    return-void
.end method

.method public c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v2, p0, Lcom/flurry/sdk/lt;->g:Lcom/flurry/sdk/la;

    .line 336
    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/lc;

    move-result-object v3

    .line 338
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 339
    sget-object v4, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-ne v0, v4, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 342
    :cond_0
    iget-object v4, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/jd;

    .line 343
    iget-object v5, p0, Lcom/flurry/sdk/lt;->d:Lcom/flurry/sdk/jv;

    .line 344
    :goto_0
    sget-object v6, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v6, :cond_6

    .line 345
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->g()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v6

    .line 347
    iget-object v7, p0, Lcom/flurry/sdk/lt;->i:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/flurry/sdk/lt;->i:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->d()Lcom/flurry/sdk/hg;

    .line 344
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/la;->a(Ljava/lang/String;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v6

    .line 356
    invoke-virtual {v0}, Lcom/flurry/sdk/kq;->j()I

    move-result v0

    invoke-virtual {v3, v0, v6}, Lcom/flurry/sdk/lc;->a(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    .line 360
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/lc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Map;)V

    .line 389
    :goto_2
    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    iget-object v2, p0, Lcom/flurry/sdk/lt;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/flurry/sdk/lt;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    move-object v0, v1

    .line 363
    goto :goto_2

    .line 371
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->g()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v7, p0, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ji;

    invoke-virtual {v7, v0, p2}, Lcom/flurry/sdk/ji;->a(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v7

    .line 374
    sget-object v0, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v6, v0, :cond_4

    move-object v0, v1

    .line 381
    :goto_3
    invoke-virtual {v3, v7, v0}, Lcom/flurry/sdk/lc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :cond_4
    if-nez v5, :cond_5

    .line 377
    invoke-virtual {v4, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 379
    :cond_5
    invoke-virtual {v4, p1, p2, v5}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 386
    :cond_6
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/lc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 387
    :catch_1
    move-exception v0

    .line 388
    iget-object v2, p0, Lcom/flurry/sdk/lt;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/flurry/sdk/lt;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    move-object v0, v1

    .line 389
    goto :goto_2
.end method

.method public d()Lcom/flurry/sdk/jd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/sdk/lt;->c:Lcom/flurry/sdk/jd;

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/lt;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
