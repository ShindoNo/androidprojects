.class public final Lcom/flurry/sdk/mb;
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
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/flurry/sdk/jp;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/se;

.field protected final b:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Z

.field protected final d:Lcom/flurry/sdk/ku;

.field protected e:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/ku;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jd",
            "<*>;",
            "Lcom/flurry/sdk/ku;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ll;-><init>(Ljava/lang/Class;)V

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/mb;->a:Lcom/flurry/sdk/se;

    .line 67
    iput-object p2, p0, Lcom/flurry/sdk/mb;->b:Lcom/flurry/sdk/jd;

    .line 68
    iput-object p3, p0, Lcom/flurry/sdk/mb;->d:Lcom/flurry/sdk/ku;

    .line 69
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/mb;->a(Lcom/flurry/sdk/jd;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/mb;->c:Z

    .line 70
    return-void
.end method

.method private b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 175
    iget-object v1, p0, Lcom/flurry/sdk/mb;->b:Lcom/flurry/sdk/jd;

    .line 177
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    if-eq v0, v2, :cond_1

    .line 180
    sget-object v2, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v0, v2, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 185
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 187
    :cond_1
    return-object p3
.end method

.method private final c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 209
    sget-object v0, Lcom/flurry/sdk/iv$a;->o:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/mb;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mb;->b:Lcom/flurry/sdk/jd;

    .line 214
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    .line 218
    sget-object v2, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    return-object p3

    .line 221
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mb;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Collection;

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
    .line 196
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jv;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

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
    .line 18
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/mb;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 155
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/mb;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    .line 167
    :cond_0
    :goto_0
    return-object p3

    .line 159
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/mb;->c:Z

    if-nez v0, :cond_2

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/mb;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    goto :goto_0

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    .line 165
    sget-object v1, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
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

    .line 103
    iget-object v0, p0, Lcom/flurry/sdk/mb;->d:Lcom/flurry/sdk/ku;

    invoke-virtual {v0}, Lcom/flurry/sdk/ku;->o()Lcom/flurry/sdk/mr;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/flurry/sdk/mb;->d:Lcom/flurry/sdk/ku;

    invoke-virtual {v1}, Lcom/flurry/sdk/ku;->l()Lcom/flurry/sdk/se;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/flurry/sdk/ip$a;

    invoke-direct {v2, v3, v1, v3, v0}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    .line 109
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/flurry/sdk/mb;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/mb;->e:Lcom/flurry/sdk/jd;

    .line 111
    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/mb;->e:Lcom/flurry/sdk/jd;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/mb;->d:Lcom/flurry/sdk/ku;

    iget-object v1, p0, Lcom/flurry/sdk/mb;->e:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ku;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 146
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/mb;->d:Lcom/flurry/sdk/ku;

    invoke-virtual {v0}, Lcom/flurry/sdk/ku;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/mb;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/mb;->b:Lcom/flurry/sdk/jd;

    .line 128
    return-object v0
.end method
