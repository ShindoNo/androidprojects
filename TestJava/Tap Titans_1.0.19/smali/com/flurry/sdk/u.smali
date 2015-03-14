.class public Lcom/flurry/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/u$a;,
        Lcom/flurry/sdk/u$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private c:Lcom/flurry/sdk/an;

.field private final d:Lcom/flurry/sdk/m;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/u$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/flurry/sdk/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 1

    .prologue
    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    iput-object p1, p0, Lcom/flurry/sdk/u;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 1186
    new-instance v0, Lcom/flurry/sdk/m;

    invoke-direct {v0}, Lcom/flurry/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    .line 1187
    new-instance v0, Lcom/flurry/sdk/an;

    invoke-direct {v0}, Lcom/flurry/sdk/an;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/u;->e:Ljava/util/Map;

    .line 1189
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/u;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1336
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/an;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/u;)Lcom/flurry/sdk/an;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/u;)Lcom/flurry/sdk/m;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/u$a;

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/flurry/sdk/u$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/u$a;-><init>(Lcom/flurry/sdk/u;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/flurry/sdk/u;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/sdk/l;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/m;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1404
    :goto_0
    return-object v0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1402
    iget-object v1, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1320
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/u$a;

    .line 1321
    invoke-virtual {v0}, Lcom/flurry/sdk/u$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/flurry/sdk/du$a;)V
    .locals 2

    .prologue
    .line 1297
    sget-object v0, Lcom/flurry/sdk/du$a;->c:Lcom/flurry/sdk/du$a;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/du$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/m;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/l;

    .line 1300
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->c()V

    goto :goto_0

    .line 1302
    :cond_0
    sget-object v0, Lcom/flurry/sdk/du$a;->d:Lcom/flurry/sdk/du$a;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/du$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/m;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/l;

    .line 1305
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->b()V

    goto :goto_1

    .line 1307
    :cond_1
    sget-object v0, Lcom/flurry/sdk/du$a;->b:Lcom/flurry/sdk/du$a;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/du$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/flurry/sdk/u;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v1, Lcom/flurry/sdk/u$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/u$1;-><init>(Lcom/flurry/sdk/u;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/fc;)V

    .line 1316
    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1258
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAd: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, p2}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Lcom/flurry/sdk/u$a;->c()V

    .line 1262
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V
    .locals 4

    .prologue
    .line 1236
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchAd: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viewGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", autoDisplay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-direct {p0, p2}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1239
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/flurry/sdk/u$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V

    .line 1240
    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 1

    .prologue
    .line 1381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1192
    if-nez p2, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    sget-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v1, "Handling ad response"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    invoke-direct {p0, p2}, Lcom/flurry/sdk/u;->a(Ljava/util/List;)V

    .line 1204
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/u;->f(Ljava/lang/String;)V

    .line 1205
    sget-object v0, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v1, "handleAdResponse: setting cache request limit count"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1209
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/u$a;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1211
    invoke-direct {p0, p2}, Lcom/flurry/sdk/u;->a(Ljava/util/List;)V

    .line 1215
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/u;->f(Ljava/lang/String;)V

    .line 1216
    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v2, "handleAdResponse: setting cache request limit count"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0}, Lcom/flurry/sdk/u$a;->f()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1283
    .line 1285
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/m;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/l;

    .line 1287
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->getAdSpace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1291
    :cond_0
    const/4 v0, 0x3

    sget-object v3, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllAds: removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " banners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1293
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 4

    .prologue
    .line 1251
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayAd: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viewGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, p2}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1254
    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/u$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)Z
    .locals 6

    .prologue
    .line 1224
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAd: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", viewGroup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    .line 1231
    :goto_0
    return v0

    .line 1230
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V

    .line 1231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)Z
    .locals 4

    .prologue
    .line 1272
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdAvailable: adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1265
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdReady: adSpaceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0, p1}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Lcom/flurry/sdk/u$a;->d()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    invoke-direct {p0, p1}, Lcom/flurry/sdk/u;->g(Ljava/lang/String;)Lcom/flurry/sdk/u$a;

    move-result-object v0

    .line 1279
    invoke-virtual {v0}, Lcom/flurry/sdk/u$a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0}, Lcom/flurry/sdk/an;->a()V

    .line 1345
    return-void
.end method

.method public c()Lcom/flurry/sdk/an;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/flurry/sdk/l;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/flurry/sdk/u;->d:Lcom/flurry/sdk/m;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/m;->a(Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/an;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/u;->c:Lcom/flurry/sdk/an;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/an;->b(Ljava/lang/String;)V

    .line 1419
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/u;->a:Ljava/lang/String;

    const-string v2, "fetchAdTaskExecute: setting cache request limit count"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
