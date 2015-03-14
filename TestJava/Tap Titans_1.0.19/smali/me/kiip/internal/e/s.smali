.class final Lme/kiip/internal/e/s;
.super Lme/kiip/internal/e/a;
.source "KiipSDK"


# instance fields
.field private d:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p3, p2}, Lme/kiip/internal/e/a;-><init>(Ljava/io/InputStream;Lme/kiip/internal/e/e;Ljava/net/CacheRequest;)V

    .line 31
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lme/kiip/internal/e/s;->a()V

    .line 51
    iget-object v0, p0, Lme/kiip/internal/e/s;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/s;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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
    .line 55
    iget-boolean v0, p0, Lme/kiip/internal/e/s;->c:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/s;->c:Z

    .line 59
    iget-boolean v0, p0, Lme/kiip/internal/e/s;->d:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lme/kiip/internal/e/s;->c()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
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

    .line 34
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lme/kiip/internal/d/h;->a(III)V

    .line 35
    invoke-virtual {p0}, Lme/kiip/internal/e/s;->a()V

    .line 36
    iget-object v1, p0, Lme/kiip/internal/e/s;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lme/kiip/internal/e/s;->d:Z

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/e/s;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 40
    if-ne v1, v0, :cond_2

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/kiip/internal/e/s;->d:Z

    .line 42
    invoke-virtual {p0}, Lme/kiip/internal/e/s;->b()V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lme/kiip/internal/e/s;->a([BII)V

    move v0, v1

    .line 46
    goto :goto_0
.end method
