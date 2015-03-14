.class final Lme/kiip/internal/f/j$b;
.super Ljava/io/OutputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lme/kiip/internal/f/j;

.field private final c:[B

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 569
    const-class v0, Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/kiip/internal/f/j$b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lme/kiip/internal/f/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iput-object p1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 570
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lme/kiip/internal/f/j$b;->c:[B

    .line 571
    iput v1, p0, Lme/kiip/internal/f/j$b;->d:I

    .line 587
    iput v1, p0, Lme/kiip/internal/f/j$b;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/f/j;Lme/kiip/internal/f/j$1;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lme/kiip/internal/f/j$b;-><init>(Lme/kiip/internal/f/j;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/j$b;I)I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lme/kiip/internal/f/j$b;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lme/kiip/internal/f/j$b;->g:I

    return v0
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 673
    :try_start_0
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->e:Z

    if-eqz v0, :cond_0

    .line 674
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 675
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->f:Z

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream finished"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream was reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v3}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    :cond_0
    :try_start_0
    iget v0, p0, Lme/kiip/internal/f/j$b;->g:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v1}, Lme/kiip/internal/f/j;->g(Lme/kiip/internal/f/j;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 655
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 658
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->e:Z

    if-eqz v0, :cond_1

    .line 659
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 660
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->f:Z

    if-eqz v0, :cond_2

    .line 661
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v2}, Lme/kiip/internal/f/j;->d(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 635
    sget-boolean v0, Lme/kiip/internal/f/j$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 637
    :cond_0
    iget v0, p0, Lme/kiip/internal/f/j$b;->d:I

    .line 638
    iget-object v1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 639
    :try_start_0
    invoke-direct {p0, v0, p1}, Lme/kiip/internal/f/j$b;->a(IZ)V

    .line 640
    iget v2, p0, Lme/kiip/internal/f/j$b;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lme/kiip/internal/f/j$b;->g:I

    .line 641
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/i;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v1}, Lme/kiip/internal/f/j;->a(Lme/kiip/internal/f/j;)I

    move-result v1

    iget-object v3, p0, Lme/kiip/internal/f/j$b;->c:[B

    iget v5, p0, Lme/kiip/internal/f/j$b;->d:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lme/kiip/internal/f/i;->a(IZ[BII)V

    .line 643
    iput v4, p0, Lme/kiip/internal/f/j$b;->d:I

    .line 644
    return-void

    .line 641
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lme/kiip/internal/f/j$b;)Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->f:Z

    return v0
.end method

.method static synthetic a(Lme/kiip/internal/f/j$b;Z)Z
    .locals 0

    .prologue
    .line 569
    iput-boolean p1, p0, Lme/kiip/internal/f/j$b;->f:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/f/j$b;)Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->e:Z

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 620
    sget-boolean v0, Lme/kiip/internal/f/j$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 621
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-boolean v0, p0, Lme/kiip/internal/f/j$b;->e:Z

    if-eqz v0, :cond_1

    .line 623
    monitor-exit v1

    .line 632
    :goto_0
    return-void

    .line 625
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/f/j$b;->e:Z

    .line 626
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->f(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/j$b;

    move-result-object v0

    iget-boolean v0, v0, Lme/kiip/internal/f/j$b;->f:Z

    if-nez v0, :cond_2

    .line 628
    invoke-direct {p0, v2}, Lme/kiip/internal/f/j$b;->a(Z)V

    .line 630
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/f/i;->c()V

    .line 631
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->e(Lme/kiip/internal/f/j;)V

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    sget-boolean v0, Lme/kiip/internal/f/j$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 612
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/f/j$b;->a()V

    .line 613
    iget v0, p0, Lme/kiip/internal/f/j$b;->d:I

    if-lez v0, :cond_1

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/kiip/internal/f/j$b;->a(Z)V

    .line 615
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/j;)Lme/kiip/internal/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/f/i;->c()V

    .line 617
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {p0, p1}, Lme/kiip/internal/d/h;->a(Ljava/io/OutputStream;I)V

    .line 591
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    sget-boolean v0, Lme/kiip/internal/f/j$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/j$b;->b:Lme/kiip/internal/f/j;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 595
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lme/kiip/internal/d/h;->a(III)V

    .line 596
    invoke-direct {p0}, Lme/kiip/internal/f/j$b;->a()V

    .line 598
    :goto_0
    if-lez p3, :cond_2

    .line 599
    iget v0, p0, Lme/kiip/internal/f/j$b;->d:I

    iget-object v1, p0, Lme/kiip/internal/f/j$b;->c:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/kiip/internal/f/j$b;->a(Z)V

    .line 602
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/f/j$b;->c:[B

    array-length v0, v0

    iget v1, p0, Lme/kiip/internal/f/j$b;->d:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 603
    iget-object v1, p0, Lme/kiip/internal/f/j$b;->c:[B

    iget v2, p0, Lme/kiip/internal/f/j$b;->d:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 604
    iget v1, p0, Lme/kiip/internal/f/j$b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lme/kiip/internal/f/j$b;->d:I

    .line 605
    add-int/2addr p2, v0

    .line 606
    sub-int/2addr p3, v0

    .line 607
    goto :goto_0

    .line 608
    :cond_2
    return-void
.end method
