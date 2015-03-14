.class public Lme/kiip/internal/e/e;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field private static final j:Ljava/net/CacheResponse;


# instance fields
.field protected final a:Lme/kiip/internal/e/k;

.field protected final b:Lme/kiip/internal/c/g;

.field protected final c:Ljava/lang/String;

.field protected d:Lme/kiip/internal/c/b;

.field protected e:Lme/kiip/internal/e/p;

.field f:J

.field final g:Ljava/net/URI;

.field final h:Lme/kiip/internal/e/m;

.field i:Lme/kiip/internal/e/n;

.field private k:Lme/kiip/internal/c/i;

.field private l:Ljava/io/OutputStream;

.field private m:Lme/kiip/internal/e/r;

.field private n:Ljava/io/InputStream;

.field private o:Ljava/io/InputStream;

.field private p:Ljava/net/CacheResponse;

.field private q:Ljava/net/CacheRequest;

.field private r:Z

.field private s:Lme/kiip/internal/e/n;

.field private t:Ljava/io/InputStream;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lme/kiip/internal/e/e$1;

    invoke-direct {v0}, Lme/kiip/internal/e/e$1;-><init>()V

    sput-object v0, Lme/kiip/internal/e/e;->j:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lme/kiip/internal/c/g;Lme/kiip/internal/e/k;Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lme/kiip/internal/e/e;->f:J

    .line 152
    iput-object p1, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    .line 153
    iput-object p2, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    .line 154
    iput-object p3, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    .line 156
    iput-object p6, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    .line 159
    :try_start_0
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    invoke-interface {p2}, Lme/kiip/internal/e/k;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/f;->a(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    new-instance v0, Lme/kiip/internal/e/m;

    iget-object v1, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    new-instance v2, Lme/kiip/internal/e/l;

    invoke-direct {v2, p4}, Lme/kiip/internal/e/l;-><init>(Lme/kiip/internal/e/l;)V

    invoke-direct {v0, v1, v2}, Lme/kiip/internal/e/m;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    iput-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    .line 165
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 565
    if-nez v0, :cond_1

    .line 566
    const-string v0, "/"

    .line 570
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iput-object p1, p0, Lme/kiip/internal/e/e;->n:Ljava/io/InputStream;

    .line 451
    iget-boolean v0, p0, Lme/kiip/internal/e/e;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->b()V

    .line 460
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->c()V

    .line 461
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    iput-object p1, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private a(Lme/kiip/internal/e/n;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 328
    :cond_0
    iput-object p1, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    .line 329
    if-eqz p2, :cond_1

    .line 330
    invoke-direct {p0, p2}, Lme/kiip/internal/e/e;->a(Ljava/io/InputStream;)V

    .line 332
    :cond_1
    return-void
.end method

.method public static b(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 594
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 595
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 596
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/kiip/internal/d/h;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private u()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    iput-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    .line 216
    iget-object v0, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->f()Lme/kiip/internal/c/h;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    iget-object v2, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v3}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lme/kiip/internal/c/h;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    .line 227
    invoke-virtual {p0, v0}, Lme/kiip/internal/e/e;->a(Ljava/net/CacheResponse;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    if-nez v2, :cond_3

    .line 230
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 234
    :cond_3
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/util/Map;Z)Lme/kiip/internal/e/l;

    move-result-object v1

    .line 235
    new-instance v2, Lme/kiip/internal/e/n;

    iget-object v3, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-direct {v2, v3, v1}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    iput-object v2, p0, Lme/kiip/internal/e/e;->s:Lme/kiip/internal/e/n;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 237
    iget-object v3, p0, Lme/kiip/internal/e/e;->s:Lme/kiip/internal/e/n;

    iget-object v4, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v3, v1, v2, v4}, Lme/kiip/internal/e/n;->a(JLme/kiip/internal/e/m;)Lme/kiip/internal/c/i;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    .line 238
    iget-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    sget-object v2, Lme/kiip/internal/c/i;->a:Lme/kiip/internal/c/i;

    if-ne v1, v2, :cond_4

    .line 239
    iput-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    .line 240
    iget-object v0, p0, Lme/kiip/internal/e/e;->s:Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/n;Ljava/io/InputStream;)V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    sget-object v2, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    if-ne v1, v2, :cond_5

    .line 242
    iput-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    goto :goto_0

    .line 243
    :cond_5
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    sget-object v1, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    if-ne v0, v1, :cond_6

    .line 244
    iget-object v0, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 246
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private v()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->c()V

    .line 255
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0, p0}, Lme/kiip/internal/c/b;->a(Lme/kiip/internal/e/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/e/r;

    iput-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    .line 261
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    invoke-interface {v0}, Lme/kiip/internal/e/r;->a()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    .line 266
    :cond_2
    return-void
.end method

.method private w()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->f()Lme/kiip/internal/c/h;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v1}, Lme/kiip/internal/e/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    iget-object v3, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v2, v3}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/e/m;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-interface {v0, v1, v2}, Lme/kiip/internal/c/h;->a(Ljava/lang/String;Ljava/net/URI;)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v2, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-interface {v0, v2, v1}, Lme/kiip/internal/c/h;->a(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/e;->q:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private x()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/e/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-static {}, Lme/kiip/internal/e/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/m;->a(Ljava/lang/String;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    iget-object v1, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v1}, Lme/kiip/internal/e/k;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lme/kiip/internal/e/e;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/m;->b(Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->j()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 514
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/m;->c(Ljava/lang/String;)V

    .line 517
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/e;->r:Z

    .line 519
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/m;->d(Ljava/lang/String;)V

    .line 522
    :cond_4
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 523
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/m;->e(Ljava/lang/String;)V

    .line 526
    :cond_5
    iget-object v0, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->getIfModifiedSince()J

    move-result-wide v0

    .line 527
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 528
    iget-object v2, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lme/kiip/internal/e/m;->a(Ljava/util/Date;)V

    .line 531
    :cond_6
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->e()Ljava/net/CookieHandler;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_7

    .line 533
    iget-object v1, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    iget-object v2, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    iget-object v3, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v3}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/m;->a(Ljava/util/Map;)V

    .line 536
    :cond_7
    return-void
.end method

.method private y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 551
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lme/kiip/internal/e/e;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    return-object v0
.end method

.method protected a(Lme/kiip/internal/c/b;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public a(Lme/kiip/internal/e/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->e()Ljava/net/CookieHandler;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 671
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    iget-object v1, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 435
    :cond_0
    iget-boolean v0, p0, Lme/kiip/internal/e/e;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_2

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/e;->v:Z

    .line 438
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    iget-object v1, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    iget-object v2, p0, Lme/kiip/internal/e/e;->n:Ljava/io/InputStream;

    invoke-interface {v0, p1, v1, v2}, Lme/kiip/internal/e/r;->a(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 441
    iput-object v3, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    .line 447
    :cond_2
    :goto_0
    return-void

    .line 442
    :cond_3
    iget-boolean v0, p0, Lme/kiip/internal/e/e;->u:Z

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->j()Lme/kiip/internal/c/c;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/b;)V

    .line 444
    iput-object v3, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    goto :goto_0
.end method

.method protected a(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/e/e;->x()V

    .line 182
    invoke-direct {p0}, Lme/kiip/internal/e/e;->u()V

    .line 183
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->f()Lme/kiip/internal/c/h;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_2

    .line 185
    iget-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-interface {v0, v1}, Lme/kiip/internal/c/h;->a(Lme/kiip/internal/c/i;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-virtual {v0}, Lme/kiip/internal/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    sget-object v1, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    if-ne v0, v1, :cond_3

    .line 194
    iget-object v0, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 196
    :cond_3
    sget-object v0, Lme/kiip/internal/c/i;->a:Lme/kiip/internal/c/i;

    iput-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    .line 197
    sget-object v0, Lme/kiip/internal/e/e;->j:Ljava/net/CacheResponse;

    iput-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    .line 198
    iget-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/e/l;->a(Ljava/util/Map;Z)Lme/kiip/internal/e/l;

    move-result-object v0

    .line 199
    new-instance v1, Lme/kiip/internal/e/n;

    iget-object v2, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    iget-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/n;Ljava/io/InputStream;)V

    .line 202
    :cond_4
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-virtual {v0}, Lme/kiip/internal/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    invoke-direct {p0}, Lme/kiip/internal/e/e;->v()V

    goto :goto_0

    .line 204
    :cond_5
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->j()Lme/kiip/internal/c/c;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/b;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    goto :goto_0
.end method

.method protected final c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->e:Lme/kiip/internal/e/p;

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 275
    if-nez v1, :cond_2

    .line 276
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->g()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 282
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->h()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    .line 284
    :goto_1
    new-instance v0, Lme/kiip/internal/c/a;

    iget-object v2, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    invoke-static {v2}, Lme/kiip/internal/d/h;->a(Ljava/net/URI;)I

    move-result v2

    iget-object v5, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v5}, Lme/kiip/internal/c/g;->i()Lme/kiip/internal/c/f;

    move-result-object v5

    iget-object v6, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v6}, Lme/kiip/internal/c/g;->c()Ljava/net/Proxy;

    move-result-object v6

    iget-object v7, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v7}, Lme/kiip/internal/c/g;->m()Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lme/kiip/internal/c/a;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lme/kiip/internal/c/f;Ljava/net/Proxy;Ljava/util/List;)V

    .line 286
    new-instance v1, Lme/kiip/internal/e/p;

    iget-object v3, p0, Lme/kiip/internal/e/e;->g:Ljava/net/URI;

    iget-object v2, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v2}, Lme/kiip/internal/c/g;->d()Ljava/net/ProxySelector;

    move-result-object v4

    iget-object v2, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v2}, Lme/kiip/internal/c/g;->j()Lme/kiip/internal/c/c;

    move-result-object v5

    sget-object v6, Lme/kiip/internal/d/d;->a:Lme/kiip/internal/d/d;

    iget-object v2, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v2}, Lme/kiip/internal/c/g;->l()Lme/kiip/internal/c/k;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lme/kiip/internal/e/p;-><init>(Lme/kiip/internal/c/a;Ljava/net/URI;Ljava/net/ProxySelector;Lme/kiip/internal/c/c;Lme/kiip/internal/d/d;Lme/kiip/internal/c/k;)V

    iput-object v1, p0, Lme/kiip/internal/e/e;->e:Lme/kiip/internal/e/p;

    .line 289
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/e;->e:Lme/kiip/internal/e/p;

    iget-object v1, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/p;->a(Ljava/lang/String;)Lme/kiip/internal/c/b;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    .line 290
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    iget-object v1, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v1}, Lme/kiip/internal/c/g;->a()I

    move-result v1

    iget-object v2, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v2}, Lme/kiip/internal/c/g;->b()I

    move-result v2

    invoke-virtual {p0}, Lme/kiip/internal/e/e;->t()Lme/kiip/internal/c/l;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lme/kiip/internal/c/b;->a(IILme/kiip/internal/c/l;)V

    .line 292
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->j()Lme/kiip/internal/c/c;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/c;->b(Lme/kiip/internal/c/b;)V

    .line 293
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->l()Lme/kiip/internal/c/k;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v1}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/k;->a(Lme/kiip/internal/c/j;)V

    .line 295
    :cond_4
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {p0, v0}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/c/b;)V

    .line 296
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/c/j;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v1}, Lme/kiip/internal/c/g;->c()Ljava/net/Proxy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/e/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v3, v4

    goto/16 :goto_1
.end method

.method public d()V
    .locals 4

    .prologue
    .line 314
    iget-wide v0, p0, Lme/kiip/internal/e/e;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lme/kiip/internal/e/e;->f:J

    .line 318
    return-void
.end method

.method e()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lme/kiip/internal/e/m;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    return-object v0
.end method

.method public final i()Lme/kiip/internal/e/n;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 365
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->c()I

    move-result v0

    return v0
.end method

.method public final k()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->o:Ljava/io/InputStream;

    return-object v0
.end method

.method public final l()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final m()Lme/kiip/internal/c/b;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    return-object v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/e;->u:Z

    .line 418
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/kiip/internal/e/e;->v:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->j()Lme/kiip/internal/c/c;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/b;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    .line 422
    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 472
    iget-object v2, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v2

    invoke-virtual {v2}, Lme/kiip/internal/e/l;->c()I

    move-result v2

    .line 475
    iget-object v3, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 482
    goto :goto_0

    .line 488
    :cond_3
    iget-object v2, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->h()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 489
    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->j()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "HTTP/1.1"

    .line 546
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/kiip/internal/e/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lme/kiip/internal/e/e;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1
    const-string v0, "HTTP/1.0"

    goto :goto_0
.end method

.method protected q()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v0}, Lme/kiip/internal/e/k;->usingProxy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/c/j;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/c/i;)V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    if-nez v0, :cond_2

    .line 613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "readResponse() without sendRequest()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-virtual {v0}, Lme/kiip/internal/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-wide v0, p0, Lme/kiip/internal/e/e;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 621
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    instance-of v0, v0, Lme/kiip/internal/e/o;

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    check-cast v0, Lme/kiip/internal/e/o;

    invoke-virtual {v0}, Lme/kiip/internal/e/o;->c()I

    move-result v0

    .line 623
    iget-object v1, p0, Lme/kiip/internal/e/e;->h:Lme/kiip/internal/e/m;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lme/kiip/internal/e/m;->a(J)V

    .line 625
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    invoke-interface {v0}, Lme/kiip/internal/e/r;->c()V

    .line 628
    :cond_4
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 630
    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    instance-of v0, v0, Lme/kiip/internal/e/o;

    if-eqz v0, :cond_5

    .line 631
    iget-object v1, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    iget-object v0, p0, Lme/kiip/internal/e/e;->l:Ljava/io/OutputStream;

    check-cast v0, Lme/kiip/internal/e/o;

    invoke-interface {v1, v0}, Lme/kiip/internal/e/r;->a(Lme/kiip/internal/e/o;)V

    .line 635
    :cond_5
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    invoke-interface {v0}, Lme/kiip/internal/e/r;->b()V

    .line 637
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    invoke-interface {v0}, Lme/kiip/internal/e/r;->d()Lme/kiip/internal/e/n;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    .line 638
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    iget-wide v1, p0, Lme/kiip/internal/e/e;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/kiip/internal/e/n;->a(JJ)V

    .line 639
    iget-object v0, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/c/i;)V

    .line 641
    iget-object v0, p0, Lme/kiip/internal/e/e;->k:Lme/kiip/internal/c/i;

    sget-object v1, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    if-ne v0, v1, :cond_7

    .line 642
    iget-object v0, p0, Lme/kiip/internal/e/e;->s:Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/e/n;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/e/e;->a(Z)V

    .line 644
    iget-object v0, p0, Lme/kiip/internal/e/e;->s:Lme/kiip/internal/e/n;

    iget-object v1, p0, Lme/kiip/internal/e/e;->i:Lme/kiip/internal/e/n;

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/n;->b(Lme/kiip/internal/e/n;)Lme/kiip/internal/e/n;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lme/kiip/internal/e/e;->a(Lme/kiip/internal/e/n;Ljava/io/InputStream;)V

    .line 646
    iget-object v0, p0, Lme/kiip/internal/e/e;->b:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->f()Lme/kiip/internal/c/h;

    move-result-object v0

    .line 647
    invoke-interface {v0}, Lme/kiip/internal/c/h;->a()V

    .line 648
    iget-object v1, p0, Lme/kiip/internal/e/e;->p:Ljava/net/CacheResponse;

    iget-object v2, p0, Lme/kiip/internal/e/e;->a:Lme/kiip/internal/e/k;

    invoke-interface {v2}, Lme/kiip/internal/e/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lme/kiip/internal/c/h;->a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 651
    :cond_6
    iget-object v0, p0, Lme/kiip/internal/e/e;->t:Ljava/io/InputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 655
    :cond_7
    invoke-virtual {p0}, Lme/kiip/internal/e/e;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 656
    invoke-direct {p0}, Lme/kiip/internal/e/e;->w()V

    .line 659
    :cond_8
    iget-object v0, p0, Lme/kiip/internal/e/e;->m:Lme/kiip/internal/e/r;

    iget-object v1, p0, Lme/kiip/internal/e/e;->q:Ljava/net/CacheRequest;

    invoke-interface {v0, v1}, Lme/kiip/internal/e/r;->a(Ljava/net/CacheRequest;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kiip/internal/e/e;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method protected t()Lme/kiip/internal/c/l;
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method
