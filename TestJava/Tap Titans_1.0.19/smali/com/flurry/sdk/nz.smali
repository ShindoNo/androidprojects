.class public Lcom/flurry/sdk/nz;
.super Lcom/flurry/sdk/jm;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/flurry/sdk/hn;

.field protected c:Lcom/flurry/sdk/oa;

.field protected d:Lcom/flurry/sdk/nx;

.field protected e:Lcom/flurry/sdk/oa;

.field protected f:Lcom/flurry/sdk/ny;

.field protected g:Lcom/flurry/sdk/nw;

.field protected h:Lcom/flurry/sdk/ob;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/hn;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/flurry/sdk/jm;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/flurry/sdk/nz;->c:Lcom/flurry/sdk/oa;

    .line 23
    iput-object v0, p0, Lcom/flurry/sdk/nz;->d:Lcom/flurry/sdk/nx;

    .line 25
    iput-object v0, p0, Lcom/flurry/sdk/nz;->e:Lcom/flurry/sdk/oa;

    .line 26
    iput-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    .line 33
    iput-object v0, p0, Lcom/flurry/sdk/nz;->g:Lcom/flurry/sdk/nw;

    .line 40
    iput-object v0, p0, Lcom/flurry/sdk/nz;->h:Lcom/flurry/sdk/ob;

    .line 48
    iput-object v0, p0, Lcom/flurry/sdk/nz;->i:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/nz;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/flurry/sdk/nz;->b:Lcom/flurry/sdk/hn;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/flurry/sdk/ji;)Lcom/flurry/sdk/nz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ji;",
            ")",
            "Lcom/flurry/sdk/nz;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/flurry/sdk/ny;

    invoke-direct {v0}, Lcom/flurry/sdk/ny;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ny;->a(Ljava/lang/Class;Lcom/flurry/sdk/ji;)Lcom/flurry/sdk/ny;

    .line 170
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/nz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jm$a;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/nz;->c:Lcom/flurry/sdk/oa;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/flurry/sdk/nz;->c:Lcom/flurry/sdk/oa;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->a(Lcom/flurry/sdk/ju;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/nz;->d:Lcom/flurry/sdk/nx;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/flurry/sdk/nz;->d:Lcom/flurry/sdk/nx;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->a(Lcom/flurry/sdk/ja;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/nz;->e:Lcom/flurry/sdk/oa;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/nz;->e:Lcom/flurry/sdk/oa;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->b(Lcom/flurry/sdk/ju;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/flurry/sdk/nz;->f:Lcom/flurry/sdk/ny;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->a(Lcom/flurry/sdk/jj;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/nz;->g:Lcom/flurry/sdk/nw;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/nz;->g:Lcom/flurry/sdk/nw;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->a(Lcom/flurry/sdk/im;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/nz;->h:Lcom/flurry/sdk/ob;

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/flurry/sdk/nz;->h:Lcom/flurry/sdk/ob;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jm$a;->a(Lcom/flurry/sdk/kv;)V

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/nz;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/nz;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1, v1, v0}, Lcom/flurry/sdk/jm$a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 259
    :cond_6
    return-void
.end method

.method public b()Lcom/flurry/sdk/hn;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/flurry/sdk/nz;->b:Lcom/flurry/sdk/hn;

    return-object v0
.end method
