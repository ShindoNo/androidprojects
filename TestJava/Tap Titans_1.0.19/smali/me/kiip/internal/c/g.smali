.class public final Lme/kiip/internal/c/g;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lme/kiip/internal/c/k;

.field private final c:Lme/kiip/internal/c/d;

.field private d:Ljava/net/Proxy;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/net/ProxySelector;

.field private g:Ljava/net/CookieHandler;

.field private h:Ljava/net/ResponseCache;

.field private i:Ljavax/net/ssl/SSLSocketFactory;

.field private j:Ljavax/net/ssl/HostnameVerifier;

.field private k:Lme/kiip/internal/c/f;

.field private l:Lme/kiip/internal/c/c;

.field private m:Z

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "spdy/3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http/1.1"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/c/g;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/c/g;->m:Z

    .line 61
    new-instance v0, Lme/kiip/internal/c/k;

    invoke-direct {v0}, Lme/kiip/internal/c/k;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/c/g;->b:Lme/kiip/internal/c/k;

    .line 62
    new-instance v0, Lme/kiip/internal/c/d;

    invoke-direct {v0}, Lme/kiip/internal/c/d;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/c/g;->c:Lme/kiip/internal/c/d;

    .line 63
    return-void
.end method

.method private constructor <init>(Lme/kiip/internal/c/g;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/c/g;->m:Z

    .line 66
    iget-object v0, p1, Lme/kiip/internal/c/g;->b:Lme/kiip/internal/c/k;

    iput-object v0, p0, Lme/kiip/internal/c/g;->b:Lme/kiip/internal/c/k;

    .line 67
    iget-object v0, p1, Lme/kiip/internal/c/g;->c:Lme/kiip/internal/c/d;

    iput-object v0, p0, Lme/kiip/internal/c/g;->c:Lme/kiip/internal/c/d;

    .line 68
    return-void
.end method

.method private n()Lme/kiip/internal/c/g;
    .locals 2

    .prologue
    .line 357
    new-instance v1, Lme/kiip/internal/c/g;

    invoke-direct {v1, p0}, Lme/kiip/internal/c/g;-><init>(Lme/kiip/internal/c/g;)V

    .line 358
    iget-object v0, p0, Lme/kiip/internal/c/g;->d:Ljava/net/Proxy;

    iput-object v0, v1, Lme/kiip/internal/c/g;->d:Ljava/net/Proxy;

    .line 359
    iget-object v0, p0, Lme/kiip/internal/c/g;->f:Ljava/net/ProxySelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/g;->f:Ljava/net/ProxySelector;

    :goto_0
    iput-object v0, v1, Lme/kiip/internal/c/g;->f:Ljava/net/ProxySelector;

    .line 360
    iget-object v0, p0, Lme/kiip/internal/c/g;->g:Ljava/net/CookieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/c/g;->g:Ljava/net/CookieHandler;

    :goto_1
    iput-object v0, v1, Lme/kiip/internal/c/g;->g:Ljava/net/CookieHandler;

    .line 361
    iget-object v0, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    :goto_2
    iput-object v0, v1, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    .line 362
    iget-object v0, p0, Lme/kiip/internal/c/g;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/kiip/internal/c/g;->i:Ljavax/net/ssl/SSLSocketFactory;

    :goto_3
    iput-object v0, v1, Lme/kiip/internal/c/g;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 365
    iget-object v0, p0, Lme/kiip/internal/c/g;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lme/kiip/internal/c/g;->j:Ljavax/net/ssl/HostnameVerifier;

    :goto_4
    iput-object v0, v1, Lme/kiip/internal/c/g;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 368
    iget-object v0, p0, Lme/kiip/internal/c/g;->k:Lme/kiip/internal/c/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lme/kiip/internal/c/g;->k:Lme/kiip/internal/c/f;

    :goto_5
    iput-object v0, v1, Lme/kiip/internal/c/g;->k:Lme/kiip/internal/c/f;

    .line 371
    iget-object v0, p0, Lme/kiip/internal/c/g;->l:Lme/kiip/internal/c/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lme/kiip/internal/c/g;->l:Lme/kiip/internal/c/c;

    :goto_6
    iput-object v0, v1, Lme/kiip/internal/c/g;->l:Lme/kiip/internal/c/c;

    .line 372
    iget-boolean v0, p0, Lme/kiip/internal/c/g;->m:Z

    iput-boolean v0, v1, Lme/kiip/internal/c/g;->m:Z

    .line 373
    iget-object v0, p0, Lme/kiip/internal/c/g;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lme/kiip/internal/c/g;->e:Ljava/util/List;

    :goto_7
    iput-object v0, v1, Lme/kiip/internal/c/g;->e:Ljava/util/List;

    .line 374
    iget v0, p0, Lme/kiip/internal/c/g;->n:I

    iput v0, v1, Lme/kiip/internal/c/g;->n:I

    .line 375
    iget v0, p0, Lme/kiip/internal/c/g;->o:I

    iput v0, v1, Lme/kiip/internal/c/g;->o:I

    .line 376
    return-object v1

    .line 359
    :cond_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_2
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    goto :goto_2

    .line 362
    :cond_3
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_3

    .line 365
    :cond_4
    sget-object v0, Lme/kiip/internal/g/b;->a:Lme/kiip/internal/g/b;

    goto :goto_4

    .line 368
    :cond_5
    sget-object v0, Lme/kiip/internal/e/c;->a:Lme/kiip/internal/c/f;

    goto :goto_5

    .line 371
    :cond_6
    invoke-static {}, Lme/kiip/internal/c/c;->a()Lme/kiip/internal/c/c;

    move-result-object v0

    goto :goto_6

    .line 373
    :cond_7
    sget-object v0, Lme/kiip/internal/c/g;->a:Ljava/util/List;

    goto :goto_7
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lme/kiip/internal/c/g;->n:I

    return v0
.end method

.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lme/kiip/internal/c/g;->d:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Lme/kiip/internal/c/g;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-direct {p0}, Lme/kiip/internal/c/g;->n()Lme/kiip/internal/c/g;

    move-result-object v1

    .line 345
    iput-object p2, v1, Lme/kiip/internal/c/g;->d:Ljava/net/Proxy;

    .line 347
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lme/kiip/internal/e/g;

    invoke-direct {v0, p1, v1}, Lme/kiip/internal/e/g;-><init>(Ljava/net/URL;Lme/kiip/internal/c/g;)V

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lme/kiip/internal/e/i;

    invoke-direct {v0, p1, v1}, Lme/kiip/internal/e/i;-><init>(Ljava/net/URL;Lme/kiip/internal/c/g;)V

    goto :goto_0

    .line 349
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/net/ResponseCache;)Lme/kiip/internal/c/g;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    .line 175
    return-object p0
.end method

.method public a(Ljava/util/List;)Lme/kiip/internal/c/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lme/kiip/internal/c/g;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {p1}, Lme/kiip/internal/d/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 303
    const-string v1, "http/1.1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transports doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transports must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transports contains an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    iput-object v0, p0, Lme/kiip/internal/c/g;->e:Ljava/util/List;

    .line 313
    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lme/kiip/internal/c/g;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lme/kiip/internal/c/g;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 216
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lme/kiip/internal/c/g;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lme/kiip/internal/c/g;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 200
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p3, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 83
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lme/kiip/internal/c/g;->n:I

    .line 87
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lme/kiip/internal/c/g;->o:I

    return v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    if-nez p3, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 107
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lme/kiip/internal/c/g;->o:I

    .line 111
    return-void
.end method

.method public c()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lme/kiip/internal/c/g;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/kiip/internal/c/g$1;

    invoke-direct {v0, p0, p1}, Lme/kiip/internal/c/g$1;-><init>(Lme/kiip/internal/c/g;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lme/kiip/internal/c/g;->f:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public e()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lme/kiip/internal/c/g;->g:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public f()Lme/kiip/internal/c/h;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    instance-of v0, v0, Lme/kiip/internal/c/e;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    check-cast v0, Lme/kiip/internal/c/e;

    iget-object v0, v0, Lme/kiip/internal/c/e;->a:Lme/kiip/internal/c/h;

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Lme/kiip/internal/e/j;

    iget-object v1, p0, Lme/kiip/internal/c/g;->h:Ljava/net/ResponseCache;

    invoke-direct {v0, v1}, Lme/kiip/internal/e/j;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lme/kiip/internal/c/g;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public h()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lme/kiip/internal/c/g;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public i()Lme/kiip/internal/c/f;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lme/kiip/internal/c/g;->k:Lme/kiip/internal/c/f;

    return-object v0
.end method

.method public j()Lme/kiip/internal/c/c;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lme/kiip/internal/c/g;->l:Lme/kiip/internal/c/c;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lme/kiip/internal/c/g;->m:Z

    return v0
.end method

.method public l()Lme/kiip/internal/c/k;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lme/kiip/internal/c/g;->b:Lme/kiip/internal/c/k;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lme/kiip/internal/c/g;->e:Ljava/util/List;

    return-object v0
.end method
