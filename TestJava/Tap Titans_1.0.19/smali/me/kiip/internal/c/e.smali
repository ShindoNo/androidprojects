.class public final Lme/kiip/internal/c/e;
.super Ljava/net/ResponseCache;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/c/e$3;,
        Lme/kiip/internal/c/e$d;,
        Lme/kiip/internal/c/e$c;,
        Lme/kiip/internal/c/e$b;,
        Lme/kiip/internal/c/e$a;
    }
.end annotation


# static fields
.field private static final b:[C


# instance fields
.field final a:Lme/kiip/internal/c/h;

.field private final c:Lme/kiip/internal/d/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lme/kiip/internal/c/e;->b:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 146
    new-instance v0, Lme/kiip/internal/c/e$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/c/e$1;-><init>(Lme/kiip/internal/c/e;)V

    iput-object v0, p0, Lme/kiip/internal/c/e;->a:Lme/kiip/internal/c/h;

    .line 175
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lme/kiip/internal/d/c;->a(Ljava/io/File;IIJ)Lme/kiip/internal/d/c;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e;->c:Lme/kiip/internal/d/c;

    .line 176
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lme/kiip/internal/c/e;->b(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URI;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 182
    invoke-static {v0}, Lme/kiip/internal/c/e;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 191
    sget-object v2, Lme/kiip/internal/c/e;->b:[C

    .line 192
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    .line 194
    array-length v4, p0

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    .line 195
    add-int/lit8 v6, v1, 0x1

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v2, v7

    aput-char v7, v3, v1

    .line 196
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v2, v5

    aput-char v5, v3, v6

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private a(Ljava/net/URLConnection;)Lme/kiip/internal/e/e;
    .locals 1

    .prologue
    .line 323
    instance-of v0, p1, Lme/kiip/internal/e/g;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Lme/kiip/internal/e/g;

    invoke-virtual {p1}, Lme/kiip/internal/e/g;->b()Lme/kiip/internal/e/e;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 325
    :cond_0
    instance-of v0, p1, Lme/kiip/internal/e/i;

    if-eqz v0, :cond_1

    .line 326
    check-cast p1, Lme/kiip/internal/e/i;

    invoke-virtual {p1}, Lme/kiip/internal/e/i;->a()Lme/kiip/internal/e/e;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lme/kiip/internal/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/kiip/internal/c/e;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0, p2}, Lme/kiip/internal/c/e;->a(Ljava/net/URLConnection;)Lme/kiip/internal/e/e;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lme/kiip/internal/e/e;->a()Ljava/net/URI;

    move-result-object v1

    .line 293
    invoke-virtual {v0}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v2

    .line 294
    invoke-virtual {v0}, Lme/kiip/internal/e/e;->h()Lme/kiip/internal/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v0

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->g()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/kiip/internal/e/l;->a(Ljava/util/Set;)Lme/kiip/internal/e/l;

    move-result-object v0

    .line 296
    new-instance v2, Lme/kiip/internal/c/e$b;

    invoke-direct {v2, v1, v0, p2}, Lme/kiip/internal/c/e$b;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;Ljava/net/HttpURLConnection;)V

    .line 297
    instance-of v0, p1, Lme/kiip/internal/c/e$c;

    if-eqz v0, :cond_1

    check-cast p1, Lme/kiip/internal/c/e$c;

    invoke-static {p1}, Lme/kiip/internal/c/e$c;->a(Lme/kiip/internal/c/e$c;)Lme/kiip/internal/d/c$c;

    move-result-object v0

    .line 300
    :goto_0
    const/4 v1, 0x0

    .line 302
    :try_start_0
    invoke-virtual {v0}, Lme/kiip/internal/d/c$c;->a()Lme/kiip/internal/d/c$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    :try_start_1
    invoke-virtual {v2, v0}, Lme/kiip/internal/c/e$b;->a(Lme/kiip/internal/d/c$a;)V

    .line 305
    invoke-virtual {v0}, Lme/kiip/internal/d/c$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 297
    :cond_1
    check-cast p1, Lme/kiip/internal/c/e$d;

    invoke-static {p1}, Lme/kiip/internal/c/e$d;->a(Lme/kiip/internal/c/e$d;)Lme/kiip/internal/d/c$c;

    move-result-object v0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 308
    :goto_2
    invoke-direct {p0, v0}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/d/c$a;)V

    goto :goto_1

    .line 307
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lme/kiip/internal/c/e;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lme/kiip/internal/c/e;->a()V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/e;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/c/e;->a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/e;Lme/kiip/internal/c/i;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/c/i;)V

    return-void
.end method

.method private declared-synchronized a(Lme/kiip/internal/c/i;)V
    .locals 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lme/kiip/internal/c/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/kiip/internal/c/e;->h:I

    .line 376
    sget-object v0, Lme/kiip/internal/c/e$3;->a:[I

    invoke-virtual {p1}, Lme/kiip/internal/c/i;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    monitor-exit p0

    return-void

    .line 378
    :pswitch_0
    :try_start_1
    iget v0, p0, Lme/kiip/internal/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/kiip/internal/c/e;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 382
    :pswitch_1
    :try_start_2
    iget v0, p0, Lme/kiip/internal/c/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/kiip/internal/c/e;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lme/kiip/internal/d/c$a;)V
    .locals 1

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {p1}, Lme/kiip/internal/d/c$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/c/e;->c:Lme/kiip/internal/d/c;

    invoke-direct {p0, p2}, Lme/kiip/internal/c/e;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/c;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    const/4 v0, 0x1

    .line 286
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lme/kiip/internal/c/e;Ljava/lang/String;Ljava/net/URI;)Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/c/e;->a(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lme/kiip/internal/c/e;)I
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lme/kiip/internal/c/e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lme/kiip/internal/c/e;->d:I

    return v0
.end method

.method private static b(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 667
    new-instance v0, Lme/kiip/internal/c/e$2;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lme/kiip/internal/d/c$c;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/kiip/internal/c/e$2;-><init>(Ljava/io/InputStream;Lme/kiip/internal/d/c$c;)V

    return-object v0
.end method

.method static synthetic c(Lme/kiip/internal/c/e;)I
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lme/kiip/internal/c/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lme/kiip/internal/c/e;->e:I

    return v0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1}, Lme/kiip/internal/c/e;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 207
    :try_start_0
    iget-object v2, p0, Lme/kiip/internal/c/e;->c:Lme/kiip/internal/d/c;

    invoke-virtual {v2, v1}, Lme/kiip/internal/d/c;->a(Ljava/lang/String;)Lme/kiip/internal/d/c$c;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-object v0

    .line 211
    :cond_0
    new-instance v2, Lme/kiip/internal/c/e$b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lme/kiip/internal/d/c$c;->a(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lme/kiip/internal/c/e$b;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-virtual {v2, p1, p2, p3}, Lme/kiip/internal/c/e$b;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    invoke-virtual {v1}, Lme/kiip/internal/d/c$c;->close()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v2}, Lme/kiip/internal/c/e$b;->a(Lme/kiip/internal/c/e$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lme/kiip/internal/c/e$d;

    invoke-direct {v0, v2, v1}, Lme/kiip/internal/c/e$d;-><init>(Lme/kiip/internal/c/e$b;Lme/kiip/internal/d/c$c;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lme/kiip/internal/c/e$c;

    invoke-direct {v0, v2, v1}, Lme/kiip/internal/c/e$c;-><init>(Lme/kiip/internal/c/e$b;Lme/kiip/internal/d/c$c;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 227
    instance-of v1, p2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 268
    .end local p2    # "urlConnection":Ljava/net/URLConnection;
    :cond_0
    :goto_0
    return-object v0

    .line 231
    .restart local p2    # "urlConnection":Ljava/net/URLConnection;
    :cond_1
    check-cast p2, Ljava/net/HttpURLConnection;

    .line 232
    .end local p2    # "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-direct {p0, v1, p1}, Lme/kiip/internal/c/e;->a(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-direct {p0, p2}, Lme/kiip/internal/c/e;->a(Ljava/net/URLConnection;)Lme/kiip/internal/e/e;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Lme/kiip/internal/e/e;->i()Lme/kiip/internal/e/n;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lme/kiip/internal/e/n;->i()Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    invoke-virtual {v1}, Lme/kiip/internal/e/e;->h()Lme/kiip/internal/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/e/m;->c()Lme/kiip/internal/e/l;

    move-result-object v1

    invoke-virtual {v2}, Lme/kiip/internal/e/n;->g()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/util/Set;)Lme/kiip/internal/e/l;

    move-result-object v1

    .line 257
    new-instance v3, Lme/kiip/internal/c/e$b;

    invoke-direct {v3, p1, v1, p2}, Lme/kiip/internal/c/e$b;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;Ljava/net/HttpURLConnection;)V

    .line 260
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/c/e;->c:Lme/kiip/internal/d/c;

    invoke-direct {p0, p1}, Lme/kiip/internal/c/e;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/kiip/internal/d/c;->b(Ljava/lang/String;)Lme/kiip/internal/d/c$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 261
    if-eqz v2, :cond_0

    .line 264
    :try_start_1
    invoke-virtual {v3, v2}, Lme/kiip/internal/c/e$b;->a(Lme/kiip/internal/d/c$a;)V

    .line 265
    new-instance v1, Lme/kiip/internal/c/e$a;

    invoke-direct {v1, p0, v2}, Lme/kiip/internal/c/e$a;-><init>(Lme/kiip/internal/c/e;Lme/kiip/internal/d/c$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 267
    :goto_1
    invoke-direct {p0, v1}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/d/c$a;)V

    goto :goto_0

    .line 266
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
