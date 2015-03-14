.class final Lme/kiip/internal/f/h$b;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/DataOutputStream;

.field private final b:Ljava/io/ByteArrayOutputStream;

.field private final c:Ljava/io/DataOutputStream;

.field private final d:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 5

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    .line 367
    iput-boolean p2, p0, Lme/kiip/internal/f/h$b;->d:Z

    .line 369
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 370
    sget-object v1, Lme/kiip/internal/f/h;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 371
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lme/kiip/internal/f/h$b;->b:Ljava/io/ByteArrayOutputStream;

    .line 372
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/f/h$b;->b:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lme/kiip/internal/d/f;->a(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    .line 374
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 457
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 459
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    iget-object v2, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 462
    iget-object v2, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 465
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    .prologue
    .line 378
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfff7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 525
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 526
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 527
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 528
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILme/kiip/internal/f/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget v0, p2, Lme/kiip/internal/f/a;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 436
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfffd

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 439
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    iget v1, p2, Lme/kiip/internal/f/a;->p:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 495
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lme/kiip/internal/f/h$b;->d:Z

    rem-int/lit8 v2, p2, 0x2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    .line 496
    :goto_1
    if-eq p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 500
    :cond_2
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfffa

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 501
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 503
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZI[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 451
    :goto_0
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 452
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p5

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 453
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3, p4, p5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ZZIIIILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
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
    const v4, 0x7fffffff

    const/4 v0, 0x0

    .line 387
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p7}, Lme/kiip/internal/f/h$b;->a(Ljava/util/List;)V

    .line 388
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0xa

    .line 390
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 393
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v3, -0x7ffcffff

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 394
    iget-object v1, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    and-int v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 396
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    and-int v1, p4, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 397
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    and-int/lit8 v1, p5, 0x7

    shl-int/lit8 v1, v1, 0xd

    or-int/lit8 v1, v1, 0x0

    and-int/lit16 v2, p6, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 398
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 399
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 390
    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(ILme/kiip/internal/f/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget v0, p2, Lme/kiip/internal/f/a;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const v1, -0x7ffcfff9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 513
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 514
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 515
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    iget v1, p2, Lme/kiip/internal/f/a;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 516
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lme/kiip/internal/f/h$b;->a:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lme/kiip/internal/f/h$b;->c:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 533
    return-void
.end method
