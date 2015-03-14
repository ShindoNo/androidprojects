.class public Lcom/flurry/sdk/of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ip;


# instance fields
.field protected final a:Lcom/flurry/sdk/mn;

.field protected final b:Lcom/flurry/sdk/qs;

.field protected final c:Lcom/flurry/sdk/se;

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Field;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Lcom/flurry/sdk/ij;

.field protected final h:Lcom/flurry/sdk/se;

.field protected final i:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/flurry/sdk/os;

.field protected final k:Z

.field protected final l:Ljava/lang/Object;

.field protected m:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected n:Lcom/flurry/sdk/jw;

.field protected o:Lcom/flurry/sdk/se;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/se;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mn;",
            "Lcom/flurry/sdk/qs;",
            "Lcom/flurry/sdk/ij;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/se;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/flurry/sdk/of;->a:Lcom/flurry/sdk/mn;

    .line 178
    iput-object p2, p0, Lcom/flurry/sdk/of;->b:Lcom/flurry/sdk/qs;

    .line 179
    iput-object p3, p0, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    .line 180
    iput-object p4, p0, Lcom/flurry/sdk/of;->c:Lcom/flurry/sdk/se;

    .line 181
    iput-object p5, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    .line 182
    if-nez p5, :cond_0

    invoke-static {}, Lcom/flurry/sdk/os;->a()Lcom/flurry/sdk/os;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/of;->j:Lcom/flurry/sdk/os;

    .line 183
    iput-object p6, p0, Lcom/flurry/sdk/of;->n:Lcom/flurry/sdk/jw;

    .line 184
    iput-object p7, p0, Lcom/flurry/sdk/of;->h:Lcom/flurry/sdk/se;

    .line 185
    iput-object p8, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    .line 186
    iput-object p9, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    .line 187
    iput-boolean p10, p0, Lcom/flurry/sdk/of;->k:Z

    .line 188
    iput-object p11, p0, Lcom/flurry/sdk/of;->l:Ljava/lang/Object;

    .line 189
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/qs;Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/se;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mn;",
            "Lcom/flurry/sdk/qs;",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/se;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Lcom/flurry/sdk/ij;

    invoke-direct {v3, p3}, Lcom/flurry/sdk/ij;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/se;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 170
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/of;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p1, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V

    .line 197
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/of;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    .line 206
    iget-object v0, p1, Lcom/flurry/sdk/of;->a:Lcom/flurry/sdk/mn;

    iput-object v0, p0, Lcom/flurry/sdk/of;->a:Lcom/flurry/sdk/mn;

    .line 207
    iget-object v0, p1, Lcom/flurry/sdk/of;->b:Lcom/flurry/sdk/qs;

    iput-object v0, p0, Lcom/flurry/sdk/of;->b:Lcom/flurry/sdk/qs;

    .line 208
    iget-object v0, p1, Lcom/flurry/sdk/of;->c:Lcom/flurry/sdk/se;

    iput-object v0, p0, Lcom/flurry/sdk/of;->c:Lcom/flurry/sdk/se;

    .line 209
    iget-object v0, p1, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    .line 210
    iget-object v0, p1, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    .line 212
    iget-object v0, p1, Lcom/flurry/sdk/of;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flurry/sdk/of;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/sdk/of;->f:Ljava/util/HashMap;

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    iput-object v0, p0, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    .line 216
    iget-object v0, p1, Lcom/flurry/sdk/of;->h:Lcom/flurry/sdk/se;

    iput-object v0, p0, Lcom/flurry/sdk/of;->h:Lcom/flurry/sdk/se;

    .line 217
    iget-object v0, p1, Lcom/flurry/sdk/of;->j:Lcom/flurry/sdk/os;

    iput-object v0, p0, Lcom/flurry/sdk/of;->j:Lcom/flurry/sdk/os;

    .line 218
    iget-boolean v0, p1, Lcom/flurry/sdk/of;->k:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/of;->k:Z

    .line 219
    iget-object v0, p1, Lcom/flurry/sdk/of;->l:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/sdk/of;->l:Ljava/lang/Object;

    .line 220
    iget-object v0, p1, Lcom/flurry/sdk/of;->m:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/flurry/sdk/of;->m:[Ljava/lang/Class;

    .line 221
    iget-object v0, p1, Lcom/flurry/sdk/of;->n:Lcom/flurry/sdk/jw;

    iput-object v0, p0, Lcom/flurry/sdk/of;->n:Lcom/flurry/sdk/jw;

    .line 222
    iget-object v0, p1, Lcom/flurry/sdk/of;->o:Lcom/flurry/sdk/se;

    iput-object v0, p0, Lcom/flurry/sdk/of;->o:Lcom/flurry/sdk/se;

    .line 223
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/flurry/sdk/of;->o:Lcom/flurry/sdk/se;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/flurry/sdk/of;->o:Lcom/flurry/sdk/se;

    invoke-virtual {p3, v0, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0, p3, p0}, Lcom/flurry/sdk/os;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 466
    :goto_0
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 467
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/of;->j:Lcom/flurry/sdk/os;

    .line 469
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0

    .line 463
    :cond_1
    invoke-virtual {p1, p2, p3, p0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/of;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/of;

    if-eq v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/flurry/sdk/of;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/of;->c:Lcom/flurry/sdk/se;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/se;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/flurry/sdk/of;->o:Lcom/flurry/sdk/se;

    .line 268
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/of;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 420
    if-nez v1, :cond_1

    .line 421
    iget-boolean v0, p0, Lcom/flurry/sdk/of;->k:Z

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    .line 423
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    if-ne v1, p1, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/of;->b(Ljava/lang/Object;)V

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/of;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/of;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    .line 436
    if-nez v0, :cond_4

    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 438
    iget-object v3, p0, Lcom/flurry/sdk/of;->j:Lcom/flurry/sdk/os;

    .line 439
    invoke-virtual {v3, v2}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 440
    if-nez v0, :cond_4

    .line 441
    invoke-virtual {p0, v3, v2, p3}, Lcom/flurry/sdk/of;->a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    .line 445
    iget-object v2, p0, Lcom/flurry/sdk/of;->n:Lcom/flurry/sdk/jw;

    if-nez v2, :cond_5

    .line 446
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/flurry/sdk/of;->n:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    goto :goto_0
.end method

.method public a([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    iput-object p1, p0, Lcom/flurry/sdk/of;->m:[Ljava/lang/Class;

    return-void
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/of;->a:Lcom/flurry/sdk/mn;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lcom/flurry/sdk/je;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/flurry/sdk/of;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/flurry/sdk/ow;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ow;-><init>(Lcom/flurry/sdk/of;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flurry/sdk/of;->g:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/of;->h:Lcom/flurry/sdk/se;

    return-object v0
.end method

.method public g()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public h()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/of;->m:[Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 500
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/of;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    if-nez v1, :cond_1

    .line 505
    const-string v1, ", no static serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/of;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/of;->i:Lcom/flurry/sdk/jh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
