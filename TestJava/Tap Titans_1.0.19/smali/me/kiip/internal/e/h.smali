.class public final Lme/kiip/internal/e/h;
.super Lme/kiip/internal/e/e;
.source "KiipSDK"


# instance fields
.field private j:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/g;Lme/kiip/internal/e/k;Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lme/kiip/internal/e/e;-><init>(Lme/kiip/internal/c/g;Lme/kiip/internal/e/k;Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)V

    .line 41
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lme/kiip/internal/c/b;->c()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    :goto_0
    iput-object v0, p0, Lme/kiip/internal/e/h;->j:Ljavax/net/ssl/SSLSocket;

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lme/kiip/internal/c/b;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->c()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lme/kiip/internal/e/h;->j:Ljavax/net/ssl/SSLSocket;

    .line 46
    return-void
.end method

.method protected a(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 49
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected t()Lme/kiip/internal/c/l;
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lme/kiip/internal/e/h;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->k()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lme/kiip/internal/e/h;->r()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/e/h;->a:Lme/kiip/internal/e/k;

    invoke-interface {v1}, Lme/kiip/internal/e/k;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 68
    new-instance v2, Lme/kiip/internal/c/l;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lme/kiip/internal/d/h;->a(Ljava/net/URL;)I

    move-result v1

    iget-object v4, p0, Lme/kiip/internal/e/h;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v4}, Lme/kiip/internal/e/m;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lme/kiip/internal/c/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public u()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lme/kiip/internal/e/h;->j:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
