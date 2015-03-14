.class public abstract Lme/kiip/internal/a/l;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lme/kiip/internal/a/l",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private final b:Lme/kiip/internal/a/t$a;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Lme/kiip/internal/a/n$a;

.field private g:Ljava/lang/Integer;

.field private h:Lme/kiip/internal/a/m;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lme/kiip/internal/a/p;

.field private n:Lme/kiip/internal/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lme/kiip/internal/a/l;->a:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lme/kiip/internal/a/n$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-boolean v0, Lme/kiip/internal/a/t$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lme/kiip/internal/a/t$a;

    invoke-direct {v0}, Lme/kiip/internal/a/t$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lme/kiip/internal/a/l;->b:Lme/kiip/internal/a/t$a;

    .line 110
    sget-boolean v0, Lme/kiip/internal/a/l;->a:Z

    iput-boolean v0, p0, Lme/kiip/internal/a/l;->i:Z

    .line 113
    iput-boolean v2, p0, Lme/kiip/internal/a/l;->j:Z

    .line 116
    iput-boolean v2, p0, Lme/kiip/internal/a/l;->k:Z

    .line 119
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lme/kiip/internal/a/l;->l:J

    .line 132
    iput-object v1, p0, Lme/kiip/internal/a/l;->n:Lme/kiip/internal/a/b$a;

    .line 157
    iput p1, p0, Lme/kiip/internal/a/l;->c:I

    .line 158
    iput-object p2, p0, Lme/kiip/internal/a/l;->d:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lme/kiip/internal/a/l;->f:Lme/kiip/internal/a/n$a;

    .line 160
    new-instance v0, Lme/kiip/internal/a/d;

    invoke-direct {v0}, Lme/kiip/internal/a/d;-><init>()V

    invoke-virtual {p0, v0}, Lme/kiip/internal/a/l;->a(Lme/kiip/internal/a/p;)Lme/kiip/internal/a/l;

    .line 162
    invoke-static {p2}, Lme/kiip/internal/a/l;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lme/kiip/internal/a/l;->e:I

    .line 163
    return-void

    :cond_0
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 67
    sput-boolean p0, Lme/kiip/internal/a/l;->a:Z

    .line 68
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/t$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lme/kiip/internal/a/l;->b:Lme/kiip/internal/a/t$a;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lme/kiip/internal/a/l;->c:I

    return v0
.end method

.method public a(Lme/kiip/internal/a/l;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/l",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->q()Lme/kiip/internal/a/l$a;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lme/kiip/internal/a/l;->q()Lme/kiip/internal/a/l$a;

    move-result-object v1

    .line 603
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lme/kiip/internal/a/l;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lme/kiip/internal/a/l;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lme/kiip/internal/a/l$a;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lme/kiip/internal/a/l$a;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final a(I)Lme/kiip/internal/a/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lme/kiip/internal/a/l",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/a/l;->g:Ljava/lang/Integer;

    .line 288
    return-object p0
.end method

.method public a(Lme/kiip/internal/a/b$a;)Lme/kiip/internal/a/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/b$a;",
            ")",
            "Lme/kiip/internal/a/l",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 322
    iput-object p1, p0, Lme/kiip/internal/a/l;->n:Lme/kiip/internal/a/b$a;

    .line 323
    return-object p0
.end method

.method public a(Lme/kiip/internal/a/m;)Lme/kiip/internal/a/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/m;",
            ")",
            "Lme/kiip/internal/a/l",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lme/kiip/internal/a/l;->h:Lme/kiip/internal/a/m;

    .line 278
    return-object p0
.end method

.method public a(Lme/kiip/internal/a/p;)Lme/kiip/internal/a/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/p;",
            ")",
            "Lme/kiip/internal/a/l",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lme/kiip/internal/a/l;->m:Lme/kiip/internal/a/p;

    .line 221
    return-object p0
.end method

.method protected abstract a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/i;",
            ")",
            "Lme/kiip/internal/a/n",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/s;
    .locals 0

    .prologue
    .line 568
    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 228
    sget-boolean v0, Lme/kiip/internal/a/t$a;->a:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lme/kiip/internal/a/l;->b:Lme/kiip/internal/a/t$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lme/kiip/internal/a/t$a;->a(Ljava/lang/String;J)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-wide v0, p0, Lme/kiip/internal/a/l;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lme/kiip/internal/a/l;->l:J

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lme/kiip/internal/a/l;->e:I

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, Lme/kiip/internal/a/l;->h:Lme/kiip/internal/a/m;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lme/kiip/internal/a/l;->h:Lme/kiip/internal/a/m;

    invoke-virtual {v0, p0}, Lme/kiip/internal/a/m;->b(Lme/kiip/internal/a/l;)V

    .line 244
    :cond_0
    sget-boolean v0, Lme/kiip/internal/a/t$a;->a:Z

    if-eqz v0, :cond_3

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 246
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 249
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    new-instance v3, Lme/kiip/internal/a/l$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lme/kiip/internal/a/l$1;-><init>(Lme/kiip/internal/a/l;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    iget-object v2, p0, Lme/kiip/internal/a/l;->b:Lme/kiip/internal/a/t$a;

    invoke-virtual {v2, p1, v0, v1}, Lme/kiip/internal/a/t$a;->a(Ljava/lang/String;J)V

    .line 261
    iget-object v0, p0, Lme/kiip/internal/a/l;->b:Lme/kiip/internal/a/t$a;

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/a/t$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lme/kiip/internal/a/l;->l:J

    sub-long/2addr v0, v2

    .line 264
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 265
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lme/kiip/internal/a/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lme/kiip/internal/a/s;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lme/kiip/internal/a/l;->f:Lme/kiip/internal/a/n$a;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lme/kiip/internal/a/l;->f:Lme/kiip/internal/a/n$a;

    invoke-interface {v0, p1}, Lme/kiip/internal/a/n$a;->a(Lme/kiip/internal/a/s;)V

    .line 590
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lme/kiip/internal/a/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lme/kiip/internal/a/l;, "Lme/kiip/internal/a/l<TT;>;"
    check-cast p1, Lme/kiip/internal/a/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kiip/internal/a/l;->a(Lme/kiip/internal/a/l;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lme/kiip/internal/a/b$a;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lme/kiip/internal/a/l;->n:Lme/kiip/internal/a/b$a;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lme/kiip/internal/a/l;->j:Z

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->l()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->h()Ljava/util/Map;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme/kiip/internal/a/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->l()Ljava/util/Map;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lme/kiip/internal/a/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme/kiip/internal/a/l;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lme/kiip/internal/a/l;->i:Z

    return v0
.end method

.method public q()Lme/kiip/internal/a/l$a;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lme/kiip/internal/a/l$a;->b:Lme/kiip/internal/a/l$a;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lme/kiip/internal/a/l;->m:Lme/kiip/internal/a/p;

    invoke-interface {v0}, Lme/kiip/internal/a/p;->a()I

    move-result v0

    return v0
.end method

.method public s()Lme/kiip/internal/a/p;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lme/kiip/internal/a/l;->m:Lme/kiip/internal/a/p;

    return-object v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/a/l;->k:Z

    .line 540
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lme/kiip/internal/a/l;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lme/kiip/internal/a/l;->q()Lme/kiip/internal/a/l$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/a/l;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lme/kiip/internal/a/l;->k:Z

    return v0
.end method
