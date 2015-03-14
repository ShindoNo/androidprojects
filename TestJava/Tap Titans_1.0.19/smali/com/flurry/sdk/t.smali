.class public Lcom/flurry/sdk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/t$a;,
        Lcom/flurry/sdk/t$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final c:Lcom/flurry/sdk/w;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 388
    new-instance v0, Lcom/flurry/sdk/w;

    invoke-direct {v0}, Lcom/flurry/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/t;->c:Lcom/flurry/sdk/w;

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/t;->d:Ljava/util/Map;

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/t;->e:Ljava/util/Map;

    .line 391
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/t;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/t;Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;)Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/t;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/flurry/sdk/t$a;
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/t$a;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/flurry/sdk/t$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/t$a;-><init>(Lcom/flurry/sdk/t;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/flurry/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/t;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/flurry/sdk/t;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/t;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/t;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flurry/sdk/t;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/t;)Lcom/flurry/sdk/w;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/t;->c:Lcom/flurry/sdk/w;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/t;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/flurry/sdk/t;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/t;->g:I

    return v0
.end method

.method private declared-synchronized e()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/t;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 502
    :goto_0
    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/t;->h:Z

    if-eqz v0, :cond_1

    .line 435
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    const-string v2, "Media player assets: download not necessary"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 441
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/flurry/sdk/t;->g:I

    if-ge v0, v1, :cond_2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/t;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 447
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".flurryads.mediaassets"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 450
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 451
    const-string v0, "flurry_last_media_asset_url"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    const-string v2, "Media player assets: unchanged, download not necessary"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/t;->h:Z

    goto :goto_0

    .line 444
    :cond_2
    const-string v5, "http://flurry.cachefly.net/vast/videocontrols/v1/android.zip"

    goto :goto_1

    .line 459
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".flurryads.mediaassets.tmp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 463
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media player assets: attempting download from url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v6, Lcom/flurry/sdk/at;

    invoke-direct {v6, v2}, Lcom/flurry/sdk/at;-><init>(Ljava/io/File;)V

    .line 466
    invoke-virtual {v6, v5}, Lcom/flurry/sdk/as;->a(Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/flurry/sdk/t$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/t$1;-><init>(Lcom/flurry/sdk/t;Ljava/io/File;Ljava/io/File;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as$a;)V

    .line 501
    invoke-virtual {v6}, Lcom/flurry/sdk/as;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/flurry/sdk/t;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    if-nez v0, :cond_0

    .line 395
    const-string v1, ""

    sget-object v3, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/t;->e()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 4

    .prologue
    .line 403
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAd: adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viewGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", refresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;)Lcom/flurry/sdk/t$a;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/flurry/sdk/t$a;->a(Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 407
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;)Lcom/flurry/sdk/t$a;

    move-result-object v0

    .line 92
    invoke-static {v0, p2, p3}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$a;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/flurry/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/t$a;

    .line 412
    invoke-virtual {v0}, Lcom/flurry/sdk/t$a;->a()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 415
    return-void
.end method

.method public c()Ljava/io/File;
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/flurry/sdk/t;->h:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".flurryads.mediaassets"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
