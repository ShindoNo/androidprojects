.class public final Lme/kiip/internal/e/q;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/e/r;


# instance fields
.field private final a:Lme/kiip/internal/e/e;

.field private final b:Lme/kiip/internal/f/i;

.field private c:Lme/kiip/internal/f/j;


# direct methods
.method public constructor <init>(Lme/kiip/internal/e/e;Lme/kiip/internal/f/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    .line 36
    iput-object p2, p0, Lme/kiip/internal/e/q;->b:Lme/kiip/internal/f/i;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lme/kiip/internal/e/s;

    iget-object v1, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    invoke-virtual {v1}, Lme/kiip/internal/f/j;->d()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    invoke-direct {v0, v1, p1, v2}, Lme/kiip/internal/e/s;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;)V

    return-object v0
.end method

.method public a()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lme/kiip/internal/e/q;->c()V

    .line 42
    iget-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Lme/kiip/internal/f/j;->e()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Lme/kiip/internal/e/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v1, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    sget-object v2, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;

    invoke-virtual {v1, v2}, Lme/kiip/internal/f/j;->b(Lme/kiip/internal/f/a;)V

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Lme/kiip/internal/f/j;->e()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 68
    return-void
.end method

.method public c()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 46
    iget-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->d()V

    .line 50
    iget-object v0, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v1}, Lme/kiip/internal/c/b;->j()I

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v3, "HTTP/1.1"

    .line 52
    :goto_1
    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v1}, Lme/kiip/internal/e/k;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 53
    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    invoke-static {v4}, Lme/kiip/internal/e/e;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lme/kiip/internal/e/e;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v5, v5, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v1}, Lme/kiip/internal/e/e;->e()Z

    move-result v1

    .line 57
    iget-object v2, p0, Lme/kiip/internal/e/q;->b:Lme/kiip/internal/f/i;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v6}, Lme/kiip/internal/f/i;->a(Ljava/util/List;ZZ)Lme/kiip/internal/f/j;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    .line 59
    iget-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v1}, Lme/kiip/internal/c/g;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/f/j;->a(J)V

    goto :goto_0

    .line 51
    :cond_1
    const-string v3, "HTTP/1.0"

    goto :goto_1
.end method

.method public d()Lme/kiip/internal/e/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lme/kiip/internal/e/q;->c:Lme/kiip/internal/f/j;

    invoke-virtual {v0}, Lme/kiip/internal/f/j;->c()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lme/kiip/internal/e/l;->a(Ljava/util/List;)Lme/kiip/internal/e/l;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/l;)V

    .line 75
    new-instance v1, Lme/kiip/internal/e/n;

    iget-object v2, p0, Lme/kiip/internal/e/q;->a:Lme/kiip/internal/e/e;

    iget-object v2, v2, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    .line 76
    const-string v0, "spdy/3"

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/n;->a(Ljava/lang/String;)V

    .line 77
    return-object v1
.end method
