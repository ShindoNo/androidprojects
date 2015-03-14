.class Lme/kiip/internal/e/f$c;
.super Lme/kiip/internal/e/a;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p1, p3, p2}, Lme/kiip/internal/e/a;-><init>(Ljava/io/InputStream;Lme/kiip/internal/e/e;Ljava/net/CacheRequest;)V

    .line 378
    iput p4, p0, Lme/kiip/internal/e/f$c;->d:I

    .line 379
    iget v0, p0, Lme/kiip/internal/e/f$c;->d:I

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->b()V

    .line 382
    :cond_0
    return-void
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
    .line 404
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->a()V

    .line 405
    iget v0, p0, Lme/kiip/internal/e/f$c;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/f$c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lme/kiip/internal/e/f$c;->d:I

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
    .line 409
    iget-boolean v0, p0, Lme/kiip/internal/e/f$c;->c:Z

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v0, p0, Lme/kiip/internal/e/f$c;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/e/f$c;->b:Lme/kiip/internal/e/e;

    invoke-static {v0, p0}, Lme/kiip/internal/e/f;->a(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->c()V

    .line 415
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/f$c;->c:Z

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

    .line 385
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lme/kiip/internal/d/h;->a(III)V

    .line 386
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->a()V

    .line 387
    iget v1, p0, Lme/kiip/internal/e/f$c;->d:I

    if-nez v1, :cond_0

    .line 400
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/e/f$c;->a:Ljava/io/InputStream;

    iget v2, p0, Lme/kiip/internal/e/f$c;->d:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 391
    if-ne v1, v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->c()V

    .line 393
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    iget v0, p0, Lme/kiip/internal/e/f$c;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lme/kiip/internal/e/f$c;->d:I

    .line 396
    invoke-virtual {p0, p1, p2, v1}, Lme/kiip/internal/e/f$c;->a([BII)V

    .line 397
    iget v0, p0, Lme/kiip/internal/e/f$c;->d:I

    if-nez v0, :cond_2

    .line 398
    invoke-virtual {p0}, Lme/kiip/internal/e/f$c;->b()V

    :cond_2
    move v0, v1

    .line 400
    goto :goto_0
.end method
