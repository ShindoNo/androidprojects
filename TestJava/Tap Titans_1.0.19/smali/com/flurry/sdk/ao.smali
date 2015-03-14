.class public Lcom/flurry/sdk/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ao$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/as;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/av",
            "<[B>;"
        }
    .end annotation
.end field

.field private final f:J

.field private final g:I

.field private h:Z

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/ao$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->i:Ljava/lang/ref/WeakReference;

    .line 50
    new-instance v0, Lcom/flurry/sdk/av;

    new-instance v1, Lcom/flurry/sdk/et;

    invoke-direct {v1}, Lcom/flurry/sdk/et;-><init>()V

    move-object v2, p1

    move-wide v3, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/av;-><init>(Lcom/flurry/sdk/eu;Ljava/lang/String;JZ)V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    .line 51
    iput-wide p4, p0, Lcom/flurry/sdk/ao;->f:J

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-le v0, v6, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/ao;->g:I

    .line 53
    return-void

    :cond_0
    move v0, v6

    .line 52
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/ao;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/ao;->j()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ao;->e(Lcom/flurry/sdk/aq;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/aq;)V
    .locals 5

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precaching: adding cached asset info from persisted storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " asset exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->f()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V
    .locals 4

    .prologue
    .line 492
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->b()Lcom/flurry/sdk/ar;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset status changed for asset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->b()Lcom/flurry/sdk/ar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/ar;)V

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/ao;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ao$a;

    .line 505
    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ao$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/flurry/sdk/ao$5;-><init>(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/ao$a;Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/ao;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/flurry/sdk/aq;)V
    .locals 4

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v0

    .line 322
    sget-object v1, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    sget-object v1, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/ar;->b:Lcom/flurry/sdk/ar;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ao$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ao$3;-><init>(Lcom/flurry/sdk/ao;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 333
    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precaching: Queueing asset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v1, "precachingDownloadRequested"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 336
    sget-object v0, Lcom/flurry/sdk/ar;->b:Lcom/flurry/sdk/ar;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    .line 337
    iget-object v1, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    monitor-enter v1

    .line 338
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;
    .locals 2

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    sget-object v0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/ar;

    .line 367
    :goto_0
    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/ar;

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->b()Lcom/flurry/sdk/ar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/av;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    sget-object v0, Lcom/flurry/sdk/ar;->f:Lcom/flurry/sdk/ar;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    .line 367
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->b()Lcom/flurry/sdk/ar;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/flurry/sdk/aq;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 258
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precaching: expiring cached asset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asset exp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device epoch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    :goto_1
    move-object v1, v0

    .line 271
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 266
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    .line 267
    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->e()V

    goto :goto_1
.end method

.method private d(Lcom/flurry/sdk/aq;)V
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v1, "precachingDownloadStarted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 410
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precaching: Submitting for download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/flurry/sdk/ax;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ax;-><init>(Lcom/flurry/sdk/aw;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/as;->a(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/aw;)V

    .line 417
    new-instance v1, Lcom/flurry/sdk/ao$4;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ao$4;-><init>(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as$a;)V

    .line 448
    invoke-virtual {v0}, Lcom/flurry/sdk/as;->d()V

    .line 450
    iget-object v1, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    sget-object v0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    .line 456
    return-void

    .line 452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(Lcom/flurry/sdk/aq;)V
    .locals 3

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 371
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v1, "Precaching: Download files"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 379
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 382
    iget-object v3, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/av;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Precaching: Asset already cached.  Skipping download:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 387
    sget-object v3, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0, v3}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    goto :goto_1

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 391
    :cond_2
    :try_start_1
    sget-object v3, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/flurry/sdk/ej;->b(Ljava/lang/Object;)J

    move-result-wide v3

    iget v5, p0, Lcom/flurry/sdk/ao;->g:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 396
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v3, "Precaching: Download limit reached"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    monitor-exit v1

    goto :goto_0

    .line 400
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->d(Lcom/flurry/sdk/aq;)V

    goto :goto_1

    .line 402
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    sget-object v0, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v1, "Precaching: No more files to download"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v2, 0x3

    .line 470
    sget-object v0, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v1, "Precaching: Cancelling in-progress downloads"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/as;

    invoke-virtual {v0}, Lcom/flurry/sdk/as;->e()V

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 476
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ao;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 477
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    iget-object v1, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    monitor-enter v1

    .line 481
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 483
    sget-object v3, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Precaching: Download cancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v3, Lcom/flurry/sdk/ar;->e:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0, v3}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    goto :goto_1

    .line 488
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 520
    sget-object v2, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precaching: expiring cached asset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asset exp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device epoch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v2, "Precaching: Starting AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->a()V

    .line 117
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ao$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ao$1;-><init>(Lcom/flurry/sdk/ao;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ao$a;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/ao;->i:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method public declared-synchronized a(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    if-nez p1, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid input stream!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_0
    const/4 v2, 0x0

    .line 89
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 95
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 96
    new-instance v3, Lcom/flurry/sdk/aq;

    invoke-direct {v3, v1}, Lcom/flurry/sdk/aq;-><init>(Ljava/io/DataInput;)V

    invoke-direct {p0, v3}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/ao;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    :try_start_3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    if-nez p1, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid output stream!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 66
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    :try_start_2
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->g()Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 75
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->a(Ljava/io/DataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 78
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/ay;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-boolean v1, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 179
    sget-object v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/ay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ao;->d(Ljava/lang/String;)Lcom/flurry/sdk/aq;

    move-result-object v0

    .line 184
    if-nez v0, :cond_3

    .line 185
    new-instance v0, Lcom/flurry/sdk/aq;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/aq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/ay;J)V

    .line 186
    iget-object v1, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->b(Lcom/flurry/sdk/aq;)V

    .line 194
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 190
    :cond_3
    sget-object v1, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->b(Lcom/flurry/sdk/aq;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/ar;
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/ar;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ao;->d(Ljava/lang/String;)Lcom/flurry/sdk/aq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v2, "Precaching: Stopping AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/flurry/sdk/ao;->k()V

    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->b()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-boolean v1, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/av;->a(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v2, "Precaching: Pausing AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/flurry/sdk/ao;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ao;->b:Ljava/lang/String;

    const-string v2, "Precaching: Resuming AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ao$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ao$2;-><init>(Lcom/flurry/sdk/ao;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->g()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 219
    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ao;->e:Lcom/flurry/sdk/av;

    invoke-virtual {v0}, Lcom/flurry/sdk/av;->c()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/flurry/sdk/ao;->h:Z

    if-nez v0, :cond_1

    .line 284
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->g()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aq;

    .line 282
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ao;->c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ar;

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    monitor-enter v1

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->f()V

    .line 295
    invoke-virtual {p0}, Lcom/flurry/sdk/ao;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
