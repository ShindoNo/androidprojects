.class public abstract Lcom/flurry/sdk/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/as$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/as$a;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:Lcom/flurry/sdk/aw;

.field private g:J

.field private h:Z

.field private i:I

.field private j:J

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/sdk/as;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/flurry/sdk/as;->d:J

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/as;->e:I

    .line 56
    const-wide/32 v0, 0x19000

    iput-wide v0, p0, Lcom/flurry/sdk/as;->j:J

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/as;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/flurry/sdk/as;->i:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/as;J)J
    .locals 0

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/flurry/sdk/as;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/as;Lcom/flurry/sdk/ek;)J
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/ek;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/flurry/sdk/ek;)J
    .locals 6

    .prologue
    .line 471
    const-wide/16 v1, -0x1

    .line 474
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ek;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 483
    :goto_0
    return-wide v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const/4 v0, 0x3

    sget-object v3, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloader: could not determine content length for url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v0, v1

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 463
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s__%03d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/as;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/as;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/flurry/sdk/as;->l:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 9

    .prologue
    .line 467
    const-string v0, "%s=%d-%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bytes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    int-to-long v3, p1

    iget-wide v5, p0, Lcom/flurry/sdk/as;->j:J

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/flurry/sdk/as;->g:J

    add-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/flurry/sdk/as;->j:J

    mul-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->k()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/as;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/flurry/sdk/as;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->j()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/as;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/flurry/sdk/as;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/flurry/sdk/as;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/flurry/sdk/as;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/flurry/sdk/as;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/as;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/flurry/sdk/as;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->o()V

    return-void
.end method

.method static synthetic i(Lcom/flurry/sdk/as;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/flurry/sdk/as;->j:J

    return-wide v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: Requesting file from url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/flurry/sdk/ek;

    invoke-direct {v0}, Lcom/flurry/sdk/ek;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek$a;)V

    .line 122
    iget v1, p0, Lcom/flurry/sdk/as;->e:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek;->a(I)V

    .line 123
    new-instance v1, Lcom/flurry/sdk/as$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$2;-><init>(Lcom/flurry/sdk/as;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek$c;)V

    .line 175
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->l()V

    return-void
.end method

.method static synthetic k(Lcom/flurry/sdk/as;)Lcom/flurry/sdk/aw;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ei;

    invoke-direct {v0}, Lcom/flurry/sdk/ei;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$a;)V

    .line 188
    new-instance v1, Lcom/flurry/sdk/as$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$3;-><init>(Lcom/flurry/sdk/as;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 243
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: requesting HTTP HEAD for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/flurry/sdk/as;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/flurry/sdk/as;->k:I

    return v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/as;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/flurry/sdk/as;->i:I

    if-ge v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/as;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aw;->d(Ljava/lang/String;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/as;->m()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/as;->j()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/flurry/sdk/as;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/flurry/sdk/as;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/as;->k:I

    return v0
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 269
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/as;->k:I

    iget v1, p0, Lcom/flurry/sdk/as;->i:I

    if-ge v0, v1, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :goto_1
    return-void

    .line 275
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/as;->k:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/as;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget v1, p0, Lcom/flurry/sdk/as;->k:I

    invoke-direct {p0, v1}, Lcom/flurry/sdk/as;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/aw;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    sget-object v0, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: Skipping chunk with range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/sdk/as;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/flurry/sdk/as;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/as;->k:I

    goto :goto_0

    .line 287
    :cond_1
    sget-object v2, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: Requesting chunk with range:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/as;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Lcom/flurry/sdk/ek;

    invoke-direct {v2}, Lcom/flurry/sdk/ek;-><init>()V

    .line 290
    iget-object v3, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Ljava/lang/String;)V

    .line 291
    sget-object v3, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek$a;)V

    .line 292
    iget v3, p0, Lcom/flurry/sdk/as;->e:I

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(I)V

    .line 293
    const-string v3, "Range"

    invoke-virtual {v2, v3, v1}, Lcom/flurry/sdk/ek;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v3, Lcom/flurry/sdk/as$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/sdk/as$4;-><init>(Lcom/flurry/sdk/as;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek$c;)V

    .line 367
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    goto/16 :goto_1

    .line 374
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/as;->n()V

    goto/16 :goto_1
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    .line 379
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 383
    :cond_0
    sget-object v1, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: assembling output file for url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->f()Ljava/io/OutputStream;

    move-result-object v4

    move v1, v0

    .line 390
    :goto_1
    iget v2, p0, Lcom/flurry/sdk/as;->i:I

    if-ge v1, v2, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Download cancelled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    :catch_0
    move-exception v1

    .line 416
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->g()V

    move-object v3, v1

    .line 420
    :goto_2
    if-nez v3, :cond_4

    .line 421
    sget-object v0, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader: assemble succeeded for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/as;->l:Z

    .line 436
    :goto_3
    invoke-direct {p0}, Lcom/flurry/sdk/as;->o()V

    goto :goto_0

    .line 396
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/flurry/sdk/as;->a(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 400
    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aw;->a(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 401
    if-nez v2, :cond_2

    .line 402
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create reader for chunk key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/flurry/sdk/as;->g()V

    throw v0

    .line 405
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lcom/flurry/sdk/aw$b;->a()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/flurry/sdk/fb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 407
    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 411
    iget-object v2, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/aw;->c(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->g()V

    goto :goto_2

    .line 424
    :cond_4
    sget-object v1, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: assemble failed for url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_5
    iget v1, p0, Lcom/flurry/sdk/as;->i:I

    if-ge v0, v1, :cond_5

    .line 428
    iget-object v1, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/as;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/aw;->c(Ljava/lang/String;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->h()V

    goto :goto_3

    .line 407
    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method static synthetic n(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/flurry/sdk/as;->m()V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/as;->b:Lcom/flurry/sdk/as$a;

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/as;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: finished -- success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/as;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/flurry/sdk/as;->b:Lcom/flurry/sdk/as$a;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/as$a;->a(Lcom/flurry/sdk/as;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/as;->h:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/flurry/sdk/as;->i:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/as$a;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/as;->b:Lcom/flurry/sdk/as$a;

    .line 61
    return-void
.end method

.method public a(Lcom/flurry/sdk/aw;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/as;->f:Lcom/flurry/sdk/aw;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/as;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/as;->l:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/flurry/sdk/as;->m:Z

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/flurry/sdk/as;->g:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/as$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$1;-><init>(Lcom/flurry/sdk/as;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/as;->m:Z

    .line 107
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected abstract f()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method
