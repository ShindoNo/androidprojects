.class public Lme/kiip/internal/e/g;
.super Ljava/net/HttpURLConnection;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/e/g$a;
    }
.end annotation


# instance fields
.field final a:Lme/kiip/internal/c/g;

.field protected b:Ljava/io/IOException;

.field protected c:Lme/kiip/internal/e/e;

.field private final d:Lme/kiip/internal/e/l;

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/net/URL;Lme/kiip/internal/c/g;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 72
    new-instance v0, Lme/kiip/internal/e/l;

    invoke-direct {v0}, Lme/kiip/internal/e/l;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lme/kiip/internal/e/g;->e:J

    .line 81
    iput-object p2, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)Lme/kiip/internal/e/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lme/kiip/internal/e/e;

    iget-object v1, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lme/kiip/internal/e/e;-><init>(Lme/kiip/internal/c/g;Lme/kiip/internal/e/k;Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)V

    .line 276
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Lme/kiip/internal/e/h;

    iget-object v1, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lme/kiip/internal/e/h;-><init>(Lme/kiip/internal/c/g;Lme/kiip/internal/e/k;Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)V

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    if-eqz p2, :cond_0

    .line 547
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    :cond_0
    const-string v0, ","

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 550
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/g;->a(Ljava/util/List;)Lme/kiip/internal/c/g;

    .line 553
    return-void
.end method

.method private a(Ljava/io/IOException;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v4, v0, Lme/kiip/internal/e/e;->e:Lme/kiip/internal/e/p;

    .line 365
    if-eqz v4, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v4, v0, p1}, Lme/kiip/internal/e/p;->a(Lme/kiip/internal/c/b;Ljava/io/IOException;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->f()Ljava/io/OutputStream;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_1

    instance-of v3, v0, Lme/kiip/internal/e/o;

    if-eqz v3, :cond_5

    :cond_1
    move v3, v2

    .line 372
    :goto_0
    if-nez v4, :cond_2

    iget-object v5, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v5, v5, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v5, :cond_4

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lme/kiip/internal/e/p;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lme/kiip/internal/e/g;->b(Ljava/io/IOException;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_6

    .line 376
    :cond_4
    iput-object p1, p0, Lme/kiip/internal/e/g;->b:Ljava/io/IOException;

    move v0, v1

    .line 384
    :goto_1
    return v0

    :cond_5
    move v3, v1

    .line 370
    goto :goto_0

    .line 380
    :cond_6
    iget-object v1, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v1, v2}, Lme/kiip/internal/e/e;->a(Z)V

    .line 381
    check-cast v0, Lme/kiip/internal/e/o;

    .line 382
    iget-object v1, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    iget-object v3, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v5, v0}, Lme/kiip/internal/e/g;->a(Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)Lme/kiip/internal/e/e;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    .line 383
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iput-object v4, v0, Lme/kiip/internal/e/e;->e:Lme/kiip/internal/e/p;

    move v0, v2

    .line 384
    goto :goto_1
.end method

.method private a(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->b()V

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->s()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-direct {p0, v0}, Lme/kiip/internal/e/g;->a(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_1
    throw v0
.end method

.method private b(Ljava/io/IOException;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_0

    move v0, v1

    .line 392
    :goto_0
    instance-of v3, p1, Ljava/net/ProtocolException;

    .line 393
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 390
    goto :goto_0

    :cond_1
    move v1, v2

    .line 393
    goto :goto_1
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lme/kiip/internal/e/g;->b:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lme/kiip/internal/e/g;->b:Ljava/io/IOException;

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    if-eqz v0, :cond_1

    .line 265
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/g;->connected:Z

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lme/kiip/internal/e/g;->doOutput:Z

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "POST"

    iput-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    .line 260
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    iget-object v1, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lme/kiip/internal/e/g;->a(Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)Lme/kiip/internal/e/e;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    iput-object v0, p0, Lme/kiip/internal/e/g;->b:Ljava/io/IOException;

    .line 263
    throw v0

    .line 255
    :cond_3
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private f()Lme/kiip/internal/e/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Lme/kiip/internal/e/g;->e()V

    .line 290
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    .line 302
    :goto_0
    return-object v0

    .line 295
    :cond_0
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lme/kiip/internal/e/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lme/kiip/internal/e/g;->g()Lme/kiip/internal/e/g$a;

    move-result-object v2

    .line 300
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    if-ne v2, v0, :cond_1

    .line 301
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->n()V

    .line 302
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    goto :goto_0

    .line 306
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->f()Ljava/io/OutputStream;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getResponseCode()I

    move-result v3

    .line 313
    const/16 v4, 0x12c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_3

    .line 317
    :cond_2
    const-string v1, "GET"

    .line 318
    const/4 v0, 0x0

    .line 321
    :cond_3
    if-eqz v0, :cond_4

    instance-of v3, v0, Lme/kiip/internal/e/o;

    if-nez v3, :cond_4

    .line 322
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget-object v2, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v2}, Lme/kiip/internal/e/e;->j()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 326
    :cond_4
    sget-object v3, Lme/kiip/internal/e/g$a;->c:Lme/kiip/internal/e/g$a;

    if-ne v2, v3, :cond_5

    .line 327
    iget-object v2, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v2}, Lme/kiip/internal/e/e;->n()V

    .line 330
    :cond_5
    iget-object v2, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lme/kiip/internal/e/e;->a(Z)V

    .line 332
    iget-object v2, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    iget-object v3, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v3}, Lme/kiip/internal/e/e;->m()Lme/kiip/internal/c/b;

    move-result-object v3

    check-cast v0, Lme/kiip/internal/e/o;

    invoke-direct {p0, v1, v2, v3, v0}, Lme/kiip/internal/e/g;->a(Ljava/lang/String;Lme/kiip/internal/e/l;Lme/kiip/internal/c/b;Lme/kiip/internal/e/o;)Lme/kiip/internal/e/e;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    goto :goto_1
.end method

.method private g()Lme/kiip/internal/e/g$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    iget-object v0, v0, Lme/kiip/internal/e/e;->d:Lme/kiip/internal/c/b;

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/c/j;->b()Ljava/net/Proxy;

    move-result-object v4

    .line 415
    :goto_0
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getResponseCode()I

    move-result v0

    .line 416
    sparse-switch v0, :sswitch_data_0

    .line 466
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    :goto_1
    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->c()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_0

    .line 418
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    .line 419
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    :sswitch_1
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->i()Lme/kiip/internal/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getResponseCode()I

    move-result v1

    iget-object v2, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v2}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v2

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    iget-object v5, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-static/range {v0 .. v5}, Lme/kiip/internal/e/c;->a(Lme/kiip/internal/c/f;ILme/kiip/internal/e/l;Lme/kiip/internal/e/l;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 426
    if-eqz v0, :cond_2

    sget-object v0, Lme/kiip/internal/e/g$a;->b:Lme/kiip/internal/e/g$a;

    goto :goto_1

    :cond_2
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto :goto_1

    .line 433
    :sswitch_2
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getInstanceFollowRedirects()Z

    move-result v1

    if-nez v1, :cond_3

    .line 434
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto :goto_1

    .line 436
    :cond_3
    iget v1, p0, Lme/kiip/internal/e/g;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lme/kiip/internal/e/g;->f:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    .line 437
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lme/kiip/internal/e/g;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_4
    const/16 v1, 0x133

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 442
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 444
    :cond_5
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lme/kiip/internal/e/g;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    if-nez v0, :cond_6

    .line 446
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 448
    :cond_6
    iget-object v1, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    .line 449
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    .line 450
    iget-object v0, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 453
    :cond_7
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 454
    if-nez v2, :cond_8

    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->k()Z

    move-result v0

    if-nez v0, :cond_8

    .line 455
    sget-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 457
    :cond_8
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 458
    invoke-static {v1}, Lme/kiip/internal/d/h;->a(Ljava/net/URL;)I

    move-result v0

    iget-object v1, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-static {v1}, Lme/kiip/internal/d/h;->a(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    .line 459
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 460
    sget-object v0, Lme/kiip/internal/e/g$a;->b:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 458
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 462
    :cond_a
    sget-object v0, Lme/kiip/internal/e/g$a;->c:Lme/kiip/internal/e/g$a;

    goto/16 :goto_1

    .line 416
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 268
    return-object p0
.end method

.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-boolean v0, p0, Lme/kiip/internal/e/g;->connected:Z

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    if-nez p1, :cond_1

    .line 521
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    if-nez p2, :cond_2

    .line 529
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/f;->a(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-void

    .line 533
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lme/kiip/internal/e/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lme/kiip/internal/e/e;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 472
    iget-wide v0, p0, Lme/kiip/internal/e/g;->e:J

    return-wide v0
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lme/kiip/internal/e/g;->e()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/kiip/internal/e/g;->a(Z)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lme/kiip/internal/e/g;->chunkLength:I

    return v0
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->k()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/e;->a(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->a()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lme/kiip/internal/e/e;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lme/kiip/internal/e/e;->j()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 115
    invoke-virtual {v1}, Lme/kiip/internal/e/e;->k()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    .line 143
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Lme/kiip/internal/e/l;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-boolean v0, p0, Lme/kiip/internal/e/g;->doInput:Z

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 185
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lme/kiip/internal/e/g;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lme/kiip/internal/e/e;->k()Ljava/io/InputStream;

    move-result-object v0

    .line 189
    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response body exists; responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->connect()V

    .line 198
    iget-object v0, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->f()Ljava/io/OutputStream;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method does not support a request body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/e/g;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/e/g;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v1}, Lme/kiip/internal/e/e;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/net/URL;)I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lme/kiip/internal/e/g;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->c()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 213
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 216
    :cond_0
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->b()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lme/kiip/internal/e/g;->connected:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->j()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0}, Lme/kiip/internal/e/g;->f()Lme/kiip/internal/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/n;->f()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lme/kiip/internal/c/g;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 228
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 556
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lme/kiip/internal/e/g;->setFixedLengthStreamingMode(J)V

    .line 557
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 2
    .param p1, "contentLength"    # J

    .prologue
    .line 561
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget v0, p0, Lme/kiip/internal/e/g;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_2
    iput-wide p1, p0, Lme/kiip/internal/e/g;->e:J

    .line 565
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 566
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lme/kiip/internal/c/g;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 236
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-boolean v0, p0, Lme/kiip/internal/e/g;->connected:Z

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    if-nez p1, :cond_1

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1
    if-nez p2, :cond_2

    .line 505
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/f;->a(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 509
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lme/kiip/internal/e/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 512
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/e/g;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lme/kiip/internal/e/g;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->c()Ljava/net/Proxy;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
