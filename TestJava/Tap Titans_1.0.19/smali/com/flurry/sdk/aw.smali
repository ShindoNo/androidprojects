.class public Lcom/flurry/sdk/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/aw$1;,
        Lcom/flurry/sdk/aw$a;,
        Lcom/flurry/sdk/aw$c;,
        Lcom/flurry/sdk/aw$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private e:Lcom/flurry/sdk/fe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The cache must have a name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    iput-object p1, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    .line 251
    iput-wide p2, p0, Lcom/flurry/sdk/aw;->c:J

    .line 252
    iput-boolean p4, p0, Lcom/flurry/sdk/aw;->d:Z

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-object v1

    .line 284
    :cond_1
    if-eqz p1, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fe;->a(Ljava/lang/String;)Lcom/flurry/sdk/fe$c;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_2

    .line 293
    new-instance v0, Lcom/flurry/sdk/aw$b;

    iget-boolean v3, p0, Lcom/flurry/sdk/aw;->d:Z

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/flurry/sdk/aw$b;-><init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$c;ZLcom/flurry/sdk/aw$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 303
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during get for cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 300
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 5

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/ce;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/flurry/sdk/aw;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/fe;->a(Ljava/io/File;IIJ)Lcom/flurry/sdk/fe;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/aw$c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v1

    .line 311
    :cond_1
    if-eqz p1, :cond_0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fe;->b(Ljava/lang/String;)Lcom/flurry/sdk/fe$a;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_2

    .line 320
    new-instance v0, Lcom/flurry/sdk/aw$c;

    iget-boolean v3, p0, Lcom/flurry/sdk/aw;->d:Z

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/flurry/sdk/aw$c;-><init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$a;ZLcom/flurry/sdk/aw$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 330
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during get for cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 327
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 277
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/flurry/sdk/aw;->d()V

    .line 380
    invoke-virtual {p0}, Lcom/flurry/sdk/aw;->a()V

    .line 381
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    if-eqz p1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fe;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during remove for cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-virtual {v0}, Lcom/flurry/sdk/fe;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during delete for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    if-eqz p1, :cond_0

    .line 364
    const/4 v2, 0x0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/aw;->e:Lcom/flurry/sdk/fe;

    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/fe;->a(Ljava/lang/String;)Lcom/flurry/sdk/fe$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 367
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 371
    :cond_2
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    const/4 v3, 0x3

    :try_start_1
    sget-object v4, Lcom/flurry/sdk/aw;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during exists for cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flurry/sdk/aw;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 259
    invoke-virtual {p0}, Lcom/flurry/sdk/aw;->b()V

    .line 260
    return-void
.end method
