.class public Lcom/flurry/sdk/oi;
.super Lcom/flurry/sdk/od;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/oi$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/flurry/sdk/oi;


# instance fields
.field protected final f:Lcom/flurry/sdk/js$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/sdk/oi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/oi;-><init>(Lcom/flurry/sdk/js$a;)V

    sput-object v0, Lcom/flurry/sdk/oi;->e:Lcom/flurry/sdk/oi;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/js$a;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/flurry/sdk/od;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lcom/flurry/sdk/oi$a;

    invoke-direct {p1}, Lcom/flurry/sdk/oi$a;-><init>()V

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    .line 191
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
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
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->b()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not create bean serializer for Object.class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/oh;

    move-result-object v7

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oi;->c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Ljava/util/List;

    move-result-object v1

    .line 432
    if-nez v1, :cond_1

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/js$a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/js$a;->e()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/oj;

    .line 438
    invoke-virtual {v1, p1, p2, v2}, Lcom/flurry/sdk/oj;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 443
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 445
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/js$a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 449
    iget-object v2, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/js$a;->e()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/oj;

    .line 450
    invoke-virtual {v1, p1, p2, v2}, Lcom/flurry/sdk/oj;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 454
    :cond_5
    invoke-virtual {v7, v2}, Lcom/flurry/sdk/oh;->a(Ljava/util/List;)V

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/flurry/sdk/oh;->a(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->p()Lcom/flurry/sdk/mo;

    move-result-object v8

    .line 458
    if-eqz v8, :cond_7

    .line 459
    sget-object v1, Lcom/flurry/sdk/jr$a;->e:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-virtual {v8}, Lcom/flurry/sdk/mo;->k()V

    .line 462
    :cond_6
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/flurry/sdk/mo;->a(Lcom/flurry/sdk/qo;)Lcom/flurry/sdk/se;

    move-result-object v1

    .line 464
    sget-object v2, Lcom/flurry/sdk/jr$a;->h:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v2

    .line 465
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v3

    .line 466
    invoke-virtual {p0, p1, v3, p3}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v3

    move-object v4, p3

    move-object v5, v0

    move-object v6, v0

    .line 468
    invoke-static/range {v0 .. v6}, Lcom/flurry/sdk/pl;->a([Ljava/lang/String;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/pl;

    move-result-object v0

    .line 470
    new-instance v1, Lcom/flurry/sdk/oc;

    invoke-direct {v1, v8, v0}, Lcom/flurry/sdk/oc;-><init>(Lcom/flurry/sdk/mo;Lcom/flurry/sdk/pl;)V

    invoke-virtual {v7, v1}, Lcom/flurry/sdk/oh;->a(Lcom/flurry/sdk/oc;)V

    .line 473
    :cond_7
    invoke-virtual {p0, p1, v7}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/oh;)V

    .line 475
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/js$a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/js$a;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v7

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/oj;

    .line 477
    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/oj;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/oh;)Lcom/flurry/sdk/oh;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_8
    move-object v1, v7

    .line 480
    :cond_9
    invoke-virtual {v1}, Lcom/flurry/sdk/oh;->b()Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 485
    if-nez v0, :cond_a

    .line 490
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 491
    invoke-virtual {v1}, Lcom/flurry/sdk/oh;->c()Lcom/flurry/sdk/og;

    move-result-object v0

    .line 494
    :cond_a
    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
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
    .line 251
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/jr;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/mt;

    .line 252
    invoke-virtual {v3}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {v3}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 260
    if-eq v2, p2, :cond_2

    const/4 v5, 0x1

    .line 263
    :goto_1
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Z)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/js$a;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ju;

    .line 269
    invoke-interface {v0, p1, v2, v3, p3}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_5
    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 279
    invoke-virtual/range {v6 .. v11}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Z)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 281
    invoke-virtual/range {v6 .. v11}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Z)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 291
    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Z)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
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
    .line 340
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oi;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const/4 v1, 0x0

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/js$a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/js$a;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/oj;

    .line 347
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/sdk/oj;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/jh;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a()Lcom/flurry/sdk/js$a;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/js$a;)Lcom/flurry/sdk/js;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    if-ne v0, p1, :cond_0

    .line 220
    :goto_0
    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/oi;

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance p0, Lcom/flurry/sdk/oi;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/oi;-><init>(Lcom/flurry/sdk/js$a;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p2}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p2, p3, p1}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v1

    .line 372
    if-nez v1, :cond_0

    .line 373
    invoke-virtual {p0, p2, p1, p4}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/jr;->l()Lcom/flurry/sdk/nd;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v0}, Lcom/flurry/sdk/nd;->a(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/jk;Lcom/flurry/sdk/in;)Ljava/util/Collection;

    move-result-object v0

    .line 376
    invoke-interface {v1, p2, p1, v0, p4}, Lcom/flurry/sdk/nf;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Ljava/util/Collection;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qo;Lcom/flurry/sdk/om;ZLjava/lang/String;Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/of;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 757
    sget-object v0, Lcom/flurry/sdk/jr$a;->e:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p6}, Lcom/flurry/sdk/mn;->k()V

    .line 760
    :cond_0
    invoke-virtual {p6, p2}, Lcom/flurry/sdk/mn;->a(Lcom/flurry/sdk/qo;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 761
    new-instance v0, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p3}, Lcom/flurry/sdk/om;->a()Lcom/flurry/sdk/qs;

    move-result-object v1

    invoke-direct {v0, p5, v2, v1, p6}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    .line 764
    invoke-virtual {p0, p1, p6, v0}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v3

    .line 766
    const/4 v5, 0x0

    .line 767
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/qv;->e(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p0, v2, p1, p6, v0}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v5

    .line 772
    :cond_1
    invoke-virtual {p0, v2, p1, p6, v0}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v4

    move-object v0, p3

    move-object v1, p5

    move-object v6, p6

    move v7, p4

    .line 773
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/sdk/om;->a(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/mn;Z)Lcom/flurry/sdk/of;

    move-result-object v0

    .line 776
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    .line 777
    invoke-virtual {v1, p6}, Lcom/flurry/sdk/in;->g(Lcom/flurry/sdk/mj;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/of;->a([Ljava/lang/Class;)V

    .line 778
    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/of;[Ljava/lang/Class;)Lcom/flurry/sdk/of;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/of;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/of;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {p1, p2}, Lcom/flurry/sdk/ol;->a(Lcom/flurry/sdk/of;[Ljava/lang/Class;)Lcom/flurry/sdk/of;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/oh;
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/flurry/sdk/oh;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/oh;-><init>(Lcom/flurry/sdk/mt;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/om;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/flurry/sdk/om;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/om;-><init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 608
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/in;->c(Lcom/flurry/sdk/mk;)[Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 611
    invoke-static {v0}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 612
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 613
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/of;

    invoke-virtual {v0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 619
    :cond_1
    return-object p3
.end method

.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/oh;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p2}, Lcom/flurry/sdk/oh;->a()Ljava/util/List;

    move-result-object v3

    .line 664
    sget-object v1, Lcom/flurry/sdk/jr$a;->i:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v4

    .line 665
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 667
    new-array v6, v5, [Lcom/flurry/sdk/of;

    move v2, v0

    move v1, v0

    .line 669
    :goto_0
    if-ge v2, v5, :cond_2

    .line 670
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/of;

    .line 671
    invoke-virtual {v0}, Lcom/flurry/sdk/of;->h()[Ljava/lang/Class;

    move-result-object v7

    .line 672
    if-nez v7, :cond_0

    .line 673
    if-eqz v4, :cond_1

    .line 674
    aput-object v0, v6, v2

    move v0, v1

    .line 669
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 678
    invoke-virtual {p0, v0, v7}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/of;[Ljava/lang/Class;)Lcom/flurry/sdk/of;

    move-result-object v0

    aput-object v0, v6, v2

    :cond_1
    move v0, v1

    goto :goto_1

    .line 682
    :cond_2
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 686
    :goto_2
    return-void

    .line 685
    :cond_3
    invoke-virtual {p2, v6}, Lcom/flurry/sdk/oh;->a([Lcom/flurry/sdk/of;)V

    goto :goto_2
.end method

.method public b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v0

    .line 396
    invoke-virtual {p2}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    .line 397
    invoke-virtual {v1, p2, p3, p1}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v2

    .line 399
    if-nez v2, :cond_0

    .line 400
    invoke-virtual {p0, p2, v0, p4}, Lcom/flurry/sdk/oi;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/jr;->l()Lcom/flurry/sdk/nd;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v1}, Lcom/flurry/sdk/nd;->a(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/jk;Lcom/flurry/sdk/in;)Ljava/util/Collection;

    move-result-object v1

    .line 403
    invoke-interface {v2, p2, v0, v1, p4}, Lcom/flurry/sdk/nf;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Ljava/util/Collection;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/js$a;->c()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/in;->f(Lcom/flurry/sdk/mk;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 645
    return-object p3
.end method

.method protected b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 544
    invoke-static {p1}, Lcom/flurry/sdk/qv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/flurry/sdk/qv;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/js$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v1

    .line 310
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 314
    iget-object v2, p0, Lcom/flurry/sdk/oi;->f:Lcom/flurry/sdk/js$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/js$a;->d()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ju;

    .line 315
    invoke-interface {v1, p1, p2, v0, p3}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method protected c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->d()Ljava/util/List;

    move-result-object v1

    .line 555
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v8

    .line 558
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/oi;->c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)V

    .line 561
    sget-object v2, Lcom/flurry/sdk/jr$a;->f:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/oi;->d(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)V

    .line 566
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    :goto_0
    return-object v0

    .line 571
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)Z

    move-result v4

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/om;

    move-result-object v3

    .line 574
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v2

    .line 577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 578
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->j()Lcom/flurry/sdk/mn;

    move-result-object v6

    .line 580
    invoke-virtual {v8, v6}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/in$a;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/flurry/sdk/in$a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->a()Ljava/lang/String;

    move-result-object v5

    .line 585
    instance-of v0, v6, Lcom/flurry/sdk/mo;

    if-eqz v0, :cond_4

    .line 586
    check-cast v6, Lcom/flurry/sdk/mo;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qo;Lcom/flurry/sdk/om;ZLjava/lang/String;Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/of;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :cond_4
    check-cast v6, Lcom/flurry/sdk/mm;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qo;Lcom/flurry/sdk/om;ZLjava/lang/String;Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/of;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 591
    goto :goto_0
.end method

.method protected c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    .line 697
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 698
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 699
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 701
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->j()Lcom/flurry/sdk/mn;

    move-result-object v0

    .line 702
    if-nez v0, :cond_1

    .line 703
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/sdk/mn;->d()Ljava/lang/Class;

    move-result-object v4

    .line 707
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 708
    if-nez v0, :cond_3

    .line 709
    invoke-virtual {p1, v4}, Lcom/flurry/sdk/jr;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 710
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    .line 711
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/in;->e(Lcom/flurry/sdk/mk;)Ljava/lang/Boolean;

    move-result-object v0

    .line 713
    if-nez v0, :cond_2

    .line 714
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 716
    :cond_2
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 723
    :cond_4
    return-void
.end method

.method protected d(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mt;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/mt;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 735
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 737
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 741
    :cond_1
    return-void
.end method
