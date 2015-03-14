.class final Lme/kiip/internal/f/j$a;
.super Ljava/io/InputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lme/kiip/internal/f/j;

.field private final c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    const-class v0, Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/kiip/internal/f/j$a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lme/kiip/internal/f/j;)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 352
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lme/kiip/internal/f/j$a;->c:[B

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lme/kiip/internal/f/j$a;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/f/j;Lme/kiip/internal/f/j$1;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lme/kiip/internal/f/j$a;-><init>(Lme/kiip/internal/f/j;)V

    return-void
.end method

.method private a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x0

    .line 446
    .line 448
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/j;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 449
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long v4, v0, v4

    .line 450
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/j;)J

    move-result-wide v0

    .line 453
    :goto_0
    :try_start_0
    iget v6, p0, Lme/kiip/internal/f/j$a;->d:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lme/kiip/internal/f/j$a;->g:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lme/kiip/internal/f/j$a;->f:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v6}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v6

    if-nez v6, :cond_2

    .line 454
    iget-object v6, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v6}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/j;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 455
    iget-object v6, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 456
    :cond_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 457
    :try_start_1
    iget-object v6, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 458
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->c(Lme/kiip/internal/f/j;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    goto :goto_0

    .line 460
    :cond_1
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :cond_2
    return-void

    :cond_3
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method

.method static synthetic a(Lme/kiip/internal/f/j$a;)Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lme/kiip/internal/f/j$a;->g:Z

    return v0
.end method

.method static synthetic a(Lme/kiip/internal/f/j$a;Z)Z
    .locals 0

    .prologue
    .line 339
    iput-boolean p1, p0, Lme/kiip/internal/f/j$a;->g:Z

    return p1
.end method

.method private b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    iget-boolean v0, p0, Lme/kiip/internal/f/j$a;->f:Z

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 541
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v2}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    return-void
.end method

.method static synthetic b(Lme/kiip/internal/f/j$a;)Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lme/kiip/internal/f/j$a;->f:Z

    return v0
.end method


# virtual methods
.method a(Ljava/io/InputStream;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 469
    sget-boolean v1, Lme/kiip/internal/f/j$a;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 471
    :cond_0
    if-nez p2, :cond_1

    .line 526
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v3, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    monitor-enter v3

    .line 481
    :try_start_0
    iget-boolean v4, p0, Lme/kiip/internal/f/j$a;->g:Z

    .line 482
    iget v5, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 483
    iget v6, p0, Lme/kiip/internal/f/j$a;->e:I

    .line 484
    iget v1, p0, Lme/kiip/internal/f/j$a;->e:I

    .line 485
    iget-object v2, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v2, v2

    invoke-virtual {p0}, Lme/kiip/internal/f/j$a;->available()I

    move-result v7

    sub-int/2addr v2, v7

    if-le p2, v2, :cond_2

    const/4 v2, 0x1

    .line 486
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    if-eqz v2, :cond_3

    .line 490
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;J)J

    .line 491
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    sget-object v1, Lme/kiip/internal/f/a;->h:Lme/kiip/internal/f/a;

    invoke-virtual {v0, v1}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/a;)V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 485
    goto :goto_1

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 496
    :cond_3
    if-eqz v4, :cond_4

    .line 497
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;J)J

    goto :goto_0

    .line 504
    :cond_4
    if-ge v5, v1, :cond_7

    .line 505
    iget-object v2, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 506
    iget-object v3, p0, Lme/kiip/internal/f/j$a;->c:[B

    invoke-static {p1, v3, v1, v2}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;[BII)V

    .line 507
    add-int/2addr v1, v2

    .line 508
    sub-int/2addr p2, v2

    .line 509
    iget-object v2, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v2, v2

    if-ne v1, v2, :cond_7

    .line 513
    :goto_2
    if-lez p2, :cond_5

    .line 514
    iget-object v1, p0, Lme/kiip/internal/f/j$a;->c:[B

    invoke-static {p1, v1, v0, p2}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;[BII)V

    .line 515
    add-int/2addr v0, p2

    .line 518
    :cond_5
    iget-object v1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 520
    :try_start_2
    iput v0, p0, Lme/kiip/internal/f/j$a;->e:I

    .line 521
    iget v0, p0, Lme/kiip/internal/f/j$a;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 522
    iput v6, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 523
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 525
    :cond_6
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/f/j$a;->b()V

    .line 379
    iget v0, p0, Lme/kiip/internal/f/j$a;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 380
    const/4 v0, 0x0

    monitor-exit v1

    .line 384
    :goto_0
    return v0

    .line 381
    :cond_0
    iget v0, p0, Lme/kiip/internal/f/j$a;->e:I

    iget v2, p0, Lme/kiip/internal/f/j$a;->d:I

    if-le v0, v2, :cond_1

    .line 382
    iget v0, p0, Lme/kiip/internal/f/j$a;->e:I

    iget v2, p0, Lme/kiip/internal/f/j$a;->d:I

    sub-int/2addr v0, v2

    monitor-exit v1

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 384
    :cond_1
    :try_start_1
    iget v0, p0, Lme/kiip/internal/f/j$a;->e:I

    iget-object v2, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v2, v2

    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 530
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lme/kiip/internal/f/j$a;->f:Z

    .line 531
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->e(Lme/kiip/internal/f/j;)V

    .line 534
    return-void

    .line 532
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p0}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    monitor-enter v2

    .line 395
    :try_start_0
    array-length v3, p1

    invoke-static {v3, p2, p3}, Lme/kiip/internal/d/h;->a(III)V

    .line 396
    invoke-direct {p0}, Lme/kiip/internal/f/j$a;->a()V

    .line 397
    invoke-direct {p0}, Lme/kiip/internal/f/j$a;->b()V

    .line 399
    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    if-ne v3, v0, :cond_0

    .line 400
    monitor-exit v2

    .line 436
    :goto_0
    return v0

    .line 406
    :cond_0
    iget v0, p0, Lme/kiip/internal/f/j$a;->e:I

    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    if-gt v0, v3, :cond_5

    .line 407
    iget-object v0, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v0, v0

    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    sub-int/2addr v0, v3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 408
    iget-object v3, p0, Lme/kiip/internal/f/j$a;->c:[B

    iget v4, p0, Lme/kiip/internal/f/j$a;->d:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    add-int/2addr v3, v0

    iput v3, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 410
    add-int/2addr v0, v1

    .line 411
    iget v1, p0, Lme/kiip/internal/f/j$a;->d:I

    iget-object v3, p0, Lme/kiip/internal/f/j$a;->c:[B

    array-length v3, v3

    if-ne v1, v3, :cond_1

    .line 412
    const/4 v1, 0x0

    iput v1, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 417
    :cond_1
    :goto_1
    if-ge v0, p3, :cond_2

    .line 418
    iget v1, p0, Lme/kiip/internal/f/j$a;->e:I

    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    sub-int/2addr v1, v3

    sub-int v3, p3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 419
    iget-object v3, p0, Lme/kiip/internal/f/j$a;->c:[B

    iget v4, p0, Lme/kiip/internal/f/j$a;->d:I

    add-int v5, p2, v0

    invoke-static {v3, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget v3, p0, Lme/kiip/internal/f/j$a;->d:I

    add-int/2addr v3, v1

    iput v3, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 421
    add-int/2addr v0, v1

    .line 425
    :cond_2
    iget v1, p0, Lme/kiip/internal/f/j$a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lme/kiip/internal/f/j$a;->h:I

    .line 426
    iget v1, p0, Lme/kiip/internal/f/j$a;->h:I

    const v3, 0x8000

    if-lt v1, v3, :cond_3

    .line 427
    iget-object v1, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v1}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/i;

    move-result-object v1

    iget-object v3, p0, Lme/kiip/internal/f/j$a;->b:Lme/kiip/internal/f/j;

    invoke-static {v3}, Lme/kiip/internal/f/j;->a(Lme/kiip/internal/f/j;)I

    move-result v3

    iget v4, p0, Lme/kiip/internal/f/j$a;->h:I

    invoke-virtual {v1, v3, v4}, Lme/kiip/internal/f/i;->a(II)V

    .line 428
    const/4 v1, 0x0

    iput v1, p0, Lme/kiip/internal/f/j$a;->h:I

    .line 431
    :cond_3
    iget v1, p0, Lme/kiip/internal/f/j$a;->d:I

    iget v3, p0, Lme/kiip/internal/f/j$a;->e:I

    if-ne v1, v3, :cond_4

    .line 432
    const/4 v1, -0x1

    iput v1, p0, Lme/kiip/internal/f/j$a;->d:I

    .line 433
    const/4 v1, 0x0

    iput v1, p0, Lme/kiip/internal/f/j$a;->e:I

    .line 436
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
