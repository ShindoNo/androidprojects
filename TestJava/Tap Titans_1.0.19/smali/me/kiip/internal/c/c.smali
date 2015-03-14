.class public Lme/kiip/internal/c/c;
.super Ljava/lang/Object;
.source "KiipSDK"


# static fields
.field private static final a:Lme/kiip/internal/c/c;


# instance fields
.field private final b:I

.field private final c:J

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lme/kiip/internal/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    new-instance v2, Lme/kiip/internal/c/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lme/kiip/internal/c/c;-><init>(IJ)V

    sput-object v2, Lme/kiip/internal/c/c;->a:Lme/kiip/internal/c/c;

    .line 74
    :goto_1
    return-void

    .line 65
    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 69
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    new-instance v2, Lme/kiip/internal/c/c;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lme/kiip/internal/c/c;-><init>(IJ)V

    sput-object v2, Lme/kiip/internal/c/c;->a:Lme/kiip/internal/c/c;

    goto :goto_1

    .line 72
    :cond_2
    new-instance v2, Lme/kiip/internal/c/c;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lme/kiip/internal/c/c;-><init>(IJ)V

    sput-object v2, Lme/kiip/internal/c/c;->a:Lme/kiip/internal/c/c;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v7, "OkHttp ConnectionPool"

    invoke-static {v7}, Lme/kiip/internal/d/h;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lme/kiip/internal/c/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 86
    new-instance v0, Lme/kiip/internal/c/c$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/c/c$1;-><init>(Lme/kiip/internal/c/c;)V

    iput-object v0, p0, Lme/kiip/internal/c/c;->f:Ljava/util/concurrent/Callable;

    .line 121
    iput p1, p0, Lme/kiip/internal/c/c;->b:I

    .line 122
    mul-long v0, p2, v8

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lme/kiip/internal/c/c;->c:J

    .line 123
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/c;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static a()Lme/kiip/internal/c/c;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lme/kiip/internal/c/c;->a:Lme/kiip/internal/c/c;

    return-object v0
.end method

.method static synthetic b(Lme/kiip/internal/c/c;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lme/kiip/internal/c/c;->c:J

    return-wide v0
.end method

.method static synthetic c(Lme/kiip/internal/c/c;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lme/kiip/internal/c/c;->b:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Lme/kiip/internal/c/a;)Lme/kiip/internal/c/b;
    .locals 8

    .prologue
    .line 180
    monitor-enter p0

    const/4 v2, 0x0

    .line 181
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    iget-object v1, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 182
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/b;

    .line 184
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/c/j;->a()Lme/kiip/internal/c/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/kiip/internal/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->h()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lme/kiip/internal/c/c;->c:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 189
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 190
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 192
    :try_start_1
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    invoke-virtual {v0}, Lme/kiip/internal/c/b;->c()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v1, v4}, Lme/kiip/internal/d/f;->a(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    :cond_2
    iget-object v1, p0, Lme/kiip/internal/c/c;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lme/kiip/internal/c/c;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    monitor-exit p0

    return-object v0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    :try_start_3
    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 196
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to tagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/f;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Lme/kiip/internal/c/b;)V
    .locals 4

    .prologue
    .line 219
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {p1}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 229
    :cond_1
    :try_start_0
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    invoke-virtual {p1}, Lme/kiip/internal/c/b;->c()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/d/f;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->f()V

    .line 240
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-object v0, p0, Lme/kiip/internal/c/c;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lme/kiip/internal/c/c;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to untagSocket(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/kiip/internal/d/f;->a(Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Lme/kiip/internal/c/b;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lme/kiip/internal/c/c;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lme/kiip/internal/c/c;->f:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 251
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/c/c;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 258
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
