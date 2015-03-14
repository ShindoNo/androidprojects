.class public final Lme/kiip/internal/f/i;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/f/i$b;,
        Lme/kiip/internal/f/i$a;
    }
.end annotation


# static fields
.field static final synthetic d:Z

.field private static final e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lme/kiip/internal/f/k;

.field final b:Z

.field c:Lme/kiip/internal/f/g;

.field private final f:Lme/kiip/internal/f/e;

.field private final g:Lme/kiip/internal/f/b;

.field private final h:Lme/kiip/internal/f/c;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lme/kiip/internal/f/j;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Z

.field private n:J

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lme/kiip/internal/f/f;",
            ">;"
        }
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lme/kiip/internal/f/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lme/kiip/internal/f/i;->d:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "OkHttp SpdyConnection"

    invoke-static {v7}, Lme/kiip/internal/d/h;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lme/kiip/internal/f/i;->e:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method private constructor <init>(Lme/kiip/internal/f/i$a;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lme/kiip/internal/f/i;->n:J

    .line 91
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->a(Lme/kiip/internal/f/i$a;)Lme/kiip/internal/f/k;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/i;->a:Lme/kiip/internal/f/k;

    .line 92
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->b(Lme/kiip/internal/f/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lme/kiip/internal/f/i;->b:Z

    .line 93
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->c(Lme/kiip/internal/f/i$a;)Lme/kiip/internal/f/e;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/i;->f:Lme/kiip/internal/f/e;

    .line 94
    iget-object v0, p0, Lme/kiip/internal/f/i;->a:Lme/kiip/internal/f/k;

    invoke-static {p1}, Lme/kiip/internal/f/i$a;->d(Lme/kiip/internal/f/i$a;)Ljava/io/InputStream;

    move-result-object v3

    iget-boolean v4, p0, Lme/kiip/internal/f/i;->b:Z

    invoke-interface {v0, v3, v4}, Lme/kiip/internal/f/k;->a(Ljava/io/InputStream;Z)Lme/kiip/internal/f/b;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/i;->g:Lme/kiip/internal/f/b;

    .line 95
    iget-object v0, p0, Lme/kiip/internal/f/i;->a:Lme/kiip/internal/f/k;

    invoke-static {p1}, Lme/kiip/internal/f/i$a;->e(Lme/kiip/internal/f/i$a;)Ljava/io/OutputStream;

    move-result-object v3

    iget-boolean v4, p0, Lme/kiip/internal/f/i;->b:Z

    invoke-interface {v0, v3, v4}, Lme/kiip/internal/f/k;->a(Ljava/io/OutputStream;Z)Lme/kiip/internal/f/c;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    .line 96
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->b(Lme/kiip/internal/f/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lme/kiip/internal/f/i;->l:I

    .line 97
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->b(Lme/kiip/internal/f/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lme/kiip/internal/f/i;->p:I

    .line 99
    invoke-static {p1}, Lme/kiip/internal/f/i$a;->f(Lme/kiip/internal/f/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/kiip/internal/f/i$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/kiip/internal/f/i$b;-><init>(Lme/kiip/internal/f/i;Lme/kiip/internal/f/i$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spdy Reader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method synthetic constructor <init>(Lme/kiip/internal/f/i$a;Lme/kiip/internal/f/i$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lme/kiip/internal/f/i;-><init>(Lme/kiip/internal/f/i$a;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/i;)Lme/kiip/internal/f/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kiip/internal/f/i;->g:Lme/kiip/internal/f/b;

    return-object v0
.end method

.method static synthetic a(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/j;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lme/kiip/internal/f/i;->b(I)Lme/kiip/internal/f/j;

    move-result-object v0

    return-object v0
.end method

.method private a(Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 302
    sget-boolean v0, Lme/kiip/internal/f/i;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 312
    :goto_0
    monitor-enter p0

    .line 313
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 314
    iget-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lme/kiip/internal/f/j;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/f/j;

    .line 315
    iget-object v4, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 316
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lme/kiip/internal/f/i;->a(Z)V

    move-object v5, v0

    .line 318
    :goto_1
    iget-object v0, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 319
    iget-object v0, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lme/kiip/internal/f/f;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/f/f;

    .line 320
    const/4 v2, 0x0

    iput-object v2, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    move-object v4, v0

    .line 322
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    if-eqz v5, :cond_3

    .line 325
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 327
    :try_start_2
    invoke-virtual {v1, p2}, Lme/kiip/internal/f/j;->a(Lme/kiip/internal/f/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 306
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 307
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 328
    :catch_1
    move-exception v1

    .line 329
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    .line 334
    :cond_3
    if-eqz v4, :cond_4

    .line 335
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    .line 336
    invoke-virtual {v3}, Lme/kiip/internal/f/f;->c()V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 341
    :cond_4
    :try_start_4
    iget-object v0, p0, Lme/kiip/internal/f/i;->g:Lme/kiip/internal/f/b;

    invoke-interface {v0}, Lme/kiip/internal/f/b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 346
    :goto_6
    :try_start_5
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0}, Lme/kiip/internal/f/c;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    .line 351
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    throw v0

    .line 342
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 343
    goto :goto_6

    .line 347
    :catch_3
    move-exception v0

    .line 348
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_7

    .line 352
    :cond_6
    return-void

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method static synthetic a(Lme/kiip/internal/f/i;Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/i;ZIILme/kiip/internal/f/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lme/kiip/internal/f/i;->b(ZIILme/kiip/internal/f/f;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lme/kiip/internal/f/i;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZIILme/kiip/internal/f/f;)V
    .locals 9

    .prologue
    .line 240
    sget-object v8, Lme/kiip/internal/f/i;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lme/kiip/internal/f/i$3;

    const-string v2, "OkHttp SPDY Writer %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lme/kiip/internal/f/i$3;-><init>(Lme/kiip/internal/f/i;Ljava/lang/String;[Ljava/lang/Object;ZIILme/kiip/internal/f/f;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 249
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/i;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lme/kiip/internal/f/i;->m:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/f/i;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lme/kiip/internal/f/i;->k:I

    return p1
.end method

.method private declared-synchronized b(I)Lme/kiip/internal/f/j;
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/f/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lme/kiip/internal/f/i;ZIILme/kiip/internal/f/f;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lme/kiip/internal/f/i;->a(ZIILme/kiip/internal/f/f;)V

    return-void
.end method

.method private b(ZIILme/kiip/internal/f/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    monitor-enter v1

    .line 254
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lme/kiip/internal/f/f;->a()V

    .line 255
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0, p1, p2, p3}, Lme/kiip/internal/f/c;->a(ZII)V

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lme/kiip/internal/f/i;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lme/kiip/internal/f/i;->m:Z

    return v0
.end method

.method static synthetic c(Lme/kiip/internal/f/i;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    return-object v0
.end method

.method private declared-synchronized c(I)Lme/kiip/internal/f/f;
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/i;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/f/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lme/kiip/internal/f/i;I)Lme/kiip/internal/f/f;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lme/kiip/internal/f/i;->c(I)Lme/kiip/internal/f/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lme/kiip/internal/f/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lme/kiip/internal/f/i;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lme/kiip/internal/f/i;)Lme/kiip/internal/f/e;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kiip/internal/f/i;->f:Lme/kiip/internal/f/e;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(I)Lme/kiip/internal/f/j;
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/f/j;

    .line 118
    if-eqz v0, :cond_0

    iget-object v1, p0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lme/kiip/internal/f/i;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;ZZ)Lme/kiip/internal/f/j;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lme/kiip/internal/f/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p2, :cond_0

    const/4 v4, 0x1

    .line 149
    :goto_0
    if-nez p3, :cond_1

    const/4 v5, 0x1

    .line 150
    :goto_1
    const/4 v12, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 157
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lme/kiip/internal/f/i;->m:Z

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 173
    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 148
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 161
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lme/kiip/internal/f/i;->l:I

    .line 162
    move-object/from16 v0, p0

    iget v1, v0, Lme/kiip/internal/f/i;->l:I

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lme/kiip/internal/f/i;->l:I

    .line 163
    new-instance v1, Lme/kiip/internal/f/j;

    move-object/from16 v0, p0

    iget-object v9, v0, Lme/kiip/internal/f/i;->c:Lme/kiip/internal/f/g;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v9}, Lme/kiip/internal/f/j;-><init>(ILme/kiip/internal/f/i;ZZIILjava/util/List;Lme/kiip/internal/f/g;)V

    .line 165
    invoke-virtual {v1}, Lme/kiip/internal/f/j;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/f/i;->i:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lme/kiip/internal/f/i;->a(Z)V

    .line 169
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    move v9, v4

    move v10, v5

    move v11, v2

    move v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-interface/range {v8 .. v15}, Lme/kiip/internal/f/c;->a(ZZIIIILjava/util/List;)V

    .line 173
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    return-object v1
.end method

.method a(II)V
    .locals 7

    .prologue
    .line 204
    sget-object v6, Lme/kiip/internal/f/i;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lme/kiip/internal/f/i$2;

    const-string v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/f/i$2;-><init>(Lme/kiip/internal/f/i;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 212
    return-void
.end method

.method a(ILme/kiip/internal/f/a;)V
    .locals 7

    .prologue
    .line 189
    sget-object v6, Lme/kiip/internal/f/i;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lme/kiip/internal/f/i$1;

    const-string v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lme/kiip/internal/f/i;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/f/i$1;-><init>(Lme/kiip/internal/f/i;Ljava/lang/String;[Ljava/lang/Object;ILme/kiip/internal/f/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 197
    return-void
.end method

.method public a(IZ[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    move v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lme/kiip/internal/f/c;->a(ZI[BII)V

    .line 186
    return-void
.end method

.method public a(Lme/kiip/internal/f/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    monitor-enter v1

    .line 281
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :try_start_1
    iget-boolean v0, p0, Lme/kiip/internal/f/i;->m:Z

    if-eqz v0, :cond_0

    .line 283
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lme/kiip/internal/f/i;->m:Z

    .line 286
    iget v0, p0, Lme/kiip/internal/f/i;->k:I

    .line 287
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    :try_start_4
    iget-object v2, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v2, v0, p1}, Lme/kiip/internal/f/c;->b(ILme/kiip/internal/f/a;)V

    .line 289
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 287
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized a()Z
    .locals 4

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lme/kiip/internal/f/i;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lme/kiip/internal/f/i;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0, p1, p2}, Lme/kiip/internal/f/c;->a(II)V

    .line 216
    return-void
.end method

.method b(ILme/kiip/internal/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0, p1, p2}, Lme/kiip/internal/f/c;->a(ILme/kiip/internal/f/a;)V

    .line 201
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0}, Lme/kiip/internal/f/c;->b()V

    .line 270
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lme/kiip/internal/f/a;->a:Lme/kiip/internal/f/a;

    sget-object v1, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;

    invoke-direct {p0, v0, v1}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/a;Lme/kiip/internal/f/a;)V

    .line 299
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lme/kiip/internal/f/i;->h:Lme/kiip/internal/f/c;

    invoke-interface {v0}, Lme/kiip/internal/f/c;->a()V

    .line 360
    return-void
.end method
