.class Lme/kiip/internal/f/i$b;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lme/kiip/internal/f/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/f/i;


# direct methods
.method private constructor <init>(Lme/kiip/internal/f/i;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/f/i;Lme/kiip/internal/f/i$1;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lme/kiip/internal/f/i$b;-><init>(Lme/kiip/internal/f/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .prologue
    .line 569
    if-nez p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0, p1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/j;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, p2}, Lme/kiip/internal/f/j;->a(I)V

    goto :goto_0
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0, p1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/j;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p2}, Lme/kiip/internal/f/j;->b(Ljava/util/List;)V

    .line 500
    :cond_0
    return-void
.end method

.method public a(ILme/kiip/internal/f/a;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-virtual {v0, p1}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p2}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/a;)V

    .line 507
    :cond_0
    return-void
.end method

.method public a(ZII)V
    .locals 3

    .prologue
    .line 540
    if-eqz p1, :cond_1

    .line 541
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0, p2}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/f;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lme/kiip/internal/f/f;->b()V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lme/kiip/internal/f/i;->b(Lme/kiip/internal/f/i;ZIILme/kiip/internal/f/f;)V

    goto :goto_0
.end method

.method public a(ZILjava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0, p2}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/j;

    move-result-object v0

    .line 440
    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    sget-object v1, Lme/kiip/internal/f/a;->c:Lme/kiip/internal/f/a;

    invoke-virtual {v0, p2, v1}, Lme/kiip/internal/f/i;->a(ILme/kiip/internal/f/a;)V

    .line 442
    int-to-long v0, p4

    invoke-static {p3, v0, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;J)J

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {v0, p3, p4}, Lme/kiip/internal/f/j;->a(Ljava/io/InputStream;I)V

    .line 446
    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {v0}, Lme/kiip/internal/f/j;->f()V

    goto :goto_0
.end method

.method public a(ZILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0, p2}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/j;

    move-result-object v0

    .line 484
    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    sget-object v1, Lme/kiip/internal/f/a;->c:Lme/kiip/internal/f/a;

    invoke-virtual {v0, p2, v1}, Lme/kiip/internal/f/i;->a(ILme/kiip/internal/f/a;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {v0, p3}, Lme/kiip/internal/f/j;->a(Ljava/util/List;)V

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {v0}, Lme/kiip/internal/f/j;->f()V

    goto :goto_0
.end method

.method public a(ZLme/kiip/internal/f/g;)V
    .locals 6

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    iget-object v2, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iget-object v1, v1, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 513
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iput-object p2, v1, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    .line 517
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 518
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lme/kiip/internal/f/j;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/f/j;

    move-object v1, v0

    .line 520
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    if-eqz v1, :cond_2

    .line 522
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 527
    monitor-enter v3

    .line 528
    :try_start_1
    iget-object v4, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 529
    :try_start_2
    iget-object v5, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iget-object v5, v5, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    invoke-virtual {v3, v5}, Lme/kiip/internal/f/j;->a(Lme/kiip/internal/f/g;)V

    .line 530
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 531
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 515
    :cond_1
    :try_start_4
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iget-object v1, v1, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    invoke-virtual {v1, p2}, Lme/kiip/internal/f/g;->a(Lme/kiip/internal/f/g;)V

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 530
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 531
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 534
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public a(ZZIIIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v9, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    monitor-enter v9

    .line 456
    :try_start_0
    new-instance v0, Lme/kiip/internal/f/j;

    iget-object v2, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    iget-object v8, v1, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    move v1, p3

    move v3, p1

    move v4, p2

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lme/kiip/internal/f/j;-><init>(ILme/kiip/internal/f/i;ZZIILjava/util/List;Lme/kiip/internal/f/g;)V

    .line 458
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1}, Lme/kiip/internal/f/i;->b(Lme/kiip/internal/f/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    monitor-exit v9

    .line 479
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1, p3}, Lme/kiip/internal/f/i;->b(Lme/kiip/internal/f/i;I)I

    .line 462
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kiip/internal/f/j;

    .line 463
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v1, :cond_1

    .line 465
    sget-object v0, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;

    invoke-virtual {v1, v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/a;)V

    .line 466
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-virtual {v0, p3}, Lme/kiip/internal/f/i;->a(I)Lme/kiip/internal/f/j;

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 470
    :cond_1
    invoke-static {}, Lme/kiip/internal/f/i;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lme/kiip/internal/f/i$b$1;

    const-string v3, "OkHttp SPDY Callback %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v6}, Lme/kiip/internal/f/i;->d(Lme/kiip/internal/f/i;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lme/kiip/internal/f/i$b$1;-><init>(Lme/kiip/internal/f/i$b;Ljava/lang/String;[Ljava/lang/Object;Lme/kiip/internal/f/j;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public b(ILme/kiip/internal/f/a;)V
    .locals 4

    .prologue
    .line 552
    iget-object v2, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    monitor-enter v2

    .line 553
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;Z)Z

    .line 556
    iget-object v0, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0}, Lme/kiip/internal/f/i;->c(Lme/kiip/internal/f/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 557
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 560
    if-le v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kiip/internal/f/j;

    invoke-virtual {v1}, Lme/kiip/internal/f/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/f/j;

    sget-object v1, Lme/kiip/internal/f/a;->k:Lme/kiip/internal/f/a;

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/a;)V

    .line 562
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 419
    sget-object v0, Lme/kiip/internal/f/a;->g:Lme/kiip/internal/f/a;

    .line 420
    sget-object v2, Lme/kiip/internal/f/a;->g:Lme/kiip/internal/f/a;

    .line 422
    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;)Lme/kiip/internal/f/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lme/kiip/internal/f/b;->a(Lme/kiip/internal/f/b$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    sget-object v0, Lme/kiip/internal/f/a;->a:Lme/kiip/internal/f/a;

    .line 425
    sget-object v1, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    iget-object v2, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v2, v0, v1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 435
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    .line 427
    :try_start_2
    sget-object v1, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    :try_start_3
    sget-object v0, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :try_start_4
    iget-object v2, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v2, v1, v0}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 431
    :goto_1
    :try_start_5
    iget-object v3, p0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v3, v1, v2}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 433
    :goto_2
    throw v0

    .line 432
    :catch_2
    move-exception v1

    goto :goto_2

    .line 430
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 432
    :catch_3
    move-exception v0

    goto :goto_0
.end method
