.class Lme/kiip/internal/e/f$a;
.super Lme/kiip/internal/e/a;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final d:Lme/kiip/internal/e/f;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {p3}, Lme/kiip/internal/e/f;->a(Lme/kiip/internal/e/f;)Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lme/kiip/internal/e/a;-><init>(Ljava/io/InputStream;Lme/kiip/internal/e/e;Ljava/net/CacheRequest;)V

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lme/kiip/internal/e/f$a;->e:I

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/f$a;->f:Z

    .line 429
    iput-object p3, p0, Lme/kiip/internal/e/f$a;->d:Lme/kiip/internal/e/f;

    .line 430
    return-void
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 457
    iget v0, p0, Lme/kiip/internal/e/f$a;->e:I

    if-eq v0, v2, :cond_0

    .line 458
    iget-object v0, p0, Lme/kiip/internal/e/f$a;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->c(Ljava/io/InputStream;)Ljava/lang/String;

    .line 460
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/f$a;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 462
    if-eq v1, v2, :cond_1

    .line 463
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/kiip/internal/e/f$a;->e:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    iget v0, p0, Lme/kiip/internal/e/f$a;->e:I

    if-nez v0, :cond_2

    .line 471
    iput-boolean v3, p0, Lme/kiip/internal/e/f$a;->f:Z

    .line 472
    iget-object v0, p0, Lme/kiip/internal/e/f$a;->b:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lme/kiip/internal/e/f$a;->d:Lme/kiip/internal/e/f;

    invoke-static {v1}, Lme/kiip/internal/e/f;->b(Lme/kiip/internal/e/f;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lme/kiip/internal/e/l;->a(Ljava/io/InputStream;Lme/kiip/internal/e/l;)V

    .line 474
    iget-object v1, p0, Lme/kiip/internal/e/f$a;->b:Lme/kiip/internal/e/e;

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/l;)V

    .line 475
    invoke-virtual {p0}, Lme/kiip/internal/e/f$a;->b()V

    .line 477
    :cond_2
    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 468
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a hex chunk size but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Lme/kiip/internal/e/f$a;->a()V

    .line 481
    iget-boolean v0, p0, Lme/kiip/internal/e/f$a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/kiip/internal/e/f$a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/f$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lme/kiip/internal/e/f$a;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-boolean v0, p0, Lme/kiip/internal/e/f$a;->c:Z

    if-eqz v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-boolean v0, p0, Lme/kiip/internal/e/f$a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/e/f$a;->b:Lme/kiip/internal/e/e;

    invoke-static {v0, p0}, Lme/kiip/internal/e/f;->a(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lme/kiip/internal/e/f$a;->c()V

    .line 494
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/f$a;->c:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 433
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lme/kiip/internal/d/h;->a(III)V

    .line 434
    invoke-virtual {p0}, Lme/kiip/internal/e/f$a;->a()V

    .line 436
    iget-boolean v1, p0, Lme/kiip/internal/e/f$a;->f:Z

    if-nez v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    iget v1, p0, Lme/kiip/internal/e/f$a;->e:I

    if-eqz v1, :cond_2

    iget v1, p0, Lme/kiip/internal/e/f$a;->e:I

    if-ne v1, v0, :cond_3

    .line 440
    :cond_2
    invoke-direct {p0}, Lme/kiip/internal/e/f$a;->d()V

    .line 441
    iget-boolean v1, p0, Lme/kiip/internal/e/f$a;->f:Z

    if-eqz v1, :cond_0

    .line 445
    :cond_3
    iget-object v1, p0, Lme/kiip/internal/e/f$a;->a:Ljava/io/InputStream;

    iget v2, p0, Lme/kiip/internal/e/f$a;->e:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 446
    if-ne v1, v0, :cond_4

    .line 447
    invoke-virtual {p0}, Lme/kiip/internal/e/f$a;->c()V

    .line 448
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_4
    iget v0, p0, Lme/kiip/internal/e/f$a;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lme/kiip/internal/e/f$a;->e:I

    .line 451
    invoke-virtual {p0, p1, p2, v1}, Lme/kiip/internal/e/f$a;->a([BII)V

    move v0, v1

    .line 452
    goto :goto_0
.end method
