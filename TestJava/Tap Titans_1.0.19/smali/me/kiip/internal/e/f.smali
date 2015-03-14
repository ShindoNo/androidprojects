.class public final Lme/kiip/internal/e/f;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/e/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/e/f$1;,
        Lme/kiip/internal/e/f$a;,
        Lme/kiip/internal/e/f$c;,
        Lme/kiip/internal/e/f$b;,
        Lme/kiip/internal/e/f$d;
    }
.end annotation


# instance fields
.field private final a:Lme/kiip/internal/e/e;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/io/OutputStream;

.field private d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lme/kiip/internal/e/e;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    .line 56
    iput-object p2, p0, Lme/kiip/internal/e/f;->c:Ljava/io/OutputStream;

    .line 57
    iput-object p2, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    .line 58
    iput-object p3, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    .line 59
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/e/f;)Lme/kiip/internal/e/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    return-object v0
.end method

.method static synthetic a(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1}, Lme/kiip/internal/e/f;->b(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lme/kiip/internal/e/f;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method private static b(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    .line 187
    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-virtual {v1}, Lme/kiip/internal/c/b;->c()Ljava/net/Socket;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 192
    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    invoke-static {p1}, Lme/kiip/internal/d/h;->b(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    const/4 v1, 0x1

    .line 197
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lme/kiip/internal/e/f$c;

    iget-object v1, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lme/kiip/internal/e/f$c;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;I)V

    .line 221
    :goto_0
    return-object v0

    .line 209
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lme/kiip/internal/e/f$a;

    iget-object v1, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1, p0}, Lme/kiip/internal/e/f$a;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/f;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 214
    new-instance v0, Lme/kiip/internal/e/f$c;

    iget-object v1, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v3, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v3, v3, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v3}, Lme/kiip/internal/e/n;->h()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lme/kiip/internal/e/f$c;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;I)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Lme/kiip/internal/e/s;

    iget-object v1, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    invoke-direct {v0, v1, p1, v2}, Lme/kiip/internal/e/s;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lme/kiip/internal/e/e;)V

    goto :goto_0
.end method

.method public a()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->a()Z

    move-result v0

    .line 63
    if-nez v0, :cond_0

    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v1}, Lme/kiip/internal/e/k;->d()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v1}, Lme/kiip/internal/c/b;->j()I

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->q()V

    .line 67
    const/4 v0, 0x1

    .line 71
    :cond_0
    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->d()I

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 74
    const/16 v0, 0x400

    .line 76
    :cond_1
    invoke-virtual {p0}, Lme/kiip/internal/e/f;->c()V

    .line 77
    new-instance v1, Lme/kiip/internal/e/f$b;

    iget-object v2, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0, v4}, Lme/kiip/internal/e/f$b;-><init>(Ljava/io/OutputStream;ILme/kiip/internal/e/f$1;)V

    move-object v0, v1

    .line 103
    :goto_0
    return-object v0

    .line 81
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->c()J

    move-result-wide v1

    .line 82
    cmp-long v0, v1, v5

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/m;->a(J)V

    .line 84
    invoke-virtual {p0}, Lme/kiip/internal/e/f;->c()V

    .line 85
    new-instance v0, Lme/kiip/internal/e/f$d;

    iget-object v3, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    invoke-direct {v0, v3, v1, v2, v4}, Lme/kiip/internal/e/f$d;-><init>(Ljava/io/OutputStream;JLme/kiip/internal/e/f$1;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->j()J

    move-result-wide v1

    .line 89
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    cmp-long v0, v1, v5

    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lme/kiip/internal/e/f;->c()V

    .line 97
    new-instance v0, Lme/kiip/internal/e/o;

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lme/kiip/internal/e/o;-><init>(I)V

    goto :goto_0

    .line 103
    :cond_5
    new-instance v0, Lme/kiip/internal/e/o;

    invoke-direct {v0}, Lme/kiip/internal/e/o;-><init>()V

    goto :goto_0
.end method

.method public a(Lme/kiip/internal/e/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lme/kiip/internal/e/o;->a(Ljava/io/OutputStream;)V

    .line 113
    return-void
.end method

.method public a(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    if-eqz p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Lme/kiip/internal/d/a;

    invoke-virtual {p2}, Lme/kiip/internal/d/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :cond_2
    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v1}, Lme/kiip/internal/e/m;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v1}, Lme/kiip/internal/e/n;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :cond_3
    instance-of v1, p3, Lme/kiip/internal/e/s;

    if-nez v1, :cond_0

    .line 169
    if-eqz p3, :cond_4

    .line 170
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    invoke-static {v0, p3}, Lme/kiip/internal/e/f;->b(Lme/kiip/internal/e/e;Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_0

    .line 173
    :cond_4
    const/4 v0, 0x1

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
    .line 107
    iget-object v0, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 108
    iget-object v0, p0, Lme/kiip/internal/e/f;->c:Ljava/io/OutputStream;

    iput-object v0, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    .line 109
    return-void
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->d()V

    .line 129
    iget-object v0, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lme/kiip/internal/e/l;->f()[B

    move-result-object v0

    .line 131
    iget-object v1, p0, Lme/kiip/internal/e/f;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 132
    return-void
.end method

.method public d()Lme/kiip/internal/e/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lme/kiip/internal/e/f;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/e/l;->a(Ljava/io/InputStream;)Lme/kiip/internal/e/l;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v1, v1, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lme/kiip/internal/c/b;->a(I)V

    .line 137
    iget-object v1, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/l;)V

    .line 139
    new-instance v1, Lme/kiip/internal/e/n;

    iget-object v2, p0, Lme/kiip/internal/e/f;->a:Lme/kiip/internal/e/e;

    iget-object v2, v2, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    .line 140
    const-string v0, "http/1.1"

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/n;->a(Ljava/lang/String;)V

    .line 141
    return-object v1
.end method
