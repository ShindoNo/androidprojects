.class public Lcom/flurry/sdk/km;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/mt;

.field protected final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/kq;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/kq;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/flurry/sdk/ku;

.field protected g:Lcom/flurry/sdk/kp;

.field protected h:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/mt;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/flurry/sdk/km;->a:Lcom/flurry/sdk/mt;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v4, Lcom/flurry/sdk/kw;

    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/flurry/sdk/kw;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-virtual {v4}, Lcom/flurry/sdk/kw;->a()V

    .line 273
    new-instance v0, Lcom/flurry/sdk/kl;

    iget-object v1, p0, Lcom/flurry/sdk/km;->a:Lcom/flurry/sdk/mt;

    iget-object v3, p0, Lcom/flurry/sdk/km;->f:Lcom/flurry/sdk/ku;

    iget-object v5, p0, Lcom/flurry/sdk/km;->d:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/flurry/sdk/km;->e:Ljava/util/HashSet;

    iget-boolean v7, p0, Lcom/flurry/sdk/km;->h:Z

    iget-object v8, p0, Lcom/flurry/sdk/km;->g:Lcom/flurry/sdk/kp;

    iget-object v9, p0, Lcom/flurry/sdk/km;->c:Ljava/util/List;

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/flurry/sdk/kl;-><init>(Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ku;Lcom/flurry/sdk/kw;Ljava/util/Map;Ljava/util/HashSet;ZLcom/flurry/sdk/kp;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iq;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public a(Lcom/flurry/sdk/kp;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/km;->g:Lcom/flurry/sdk/kp;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/km;->g:Lcom/flurry/sdk/kp;

    .line 214
    return-void
.end method

.method public a(Lcom/flurry/sdk/kq;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/sdk/kq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kq;

    .line 143
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/kq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/km;->a:Lcom/flurry/sdk/mt;

    invoke-virtual {v2}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/kq;Z)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/flurry/sdk/kq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public a(Lcom/flurry/sdk/ku;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/flurry/sdk/km;->f:Lcom/flurry/sdk/ku;

    .line 225
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/km;->e:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/km;->e:Ljava/util/HashSet;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/km;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/kq;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/km;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/km;->d:Ljava/util/HashMap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/km;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/flurry/sdk/kq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/km;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/km;->c:Ljava/util/List;

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/flurry/sdk/km;->c:Ljava/util/List;

    new-instance v0, Lcom/flurry/sdk/le;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/le;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/flurry/sdk/km;->h:Z

    .line 218
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/km;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method