.class public Lcom/flurry/sdk/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ao$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ap$a;,
        Lcom/flurry/sdk/ap$c;,
        Lcom/flurry/sdk/ap$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/flurry/sdk/ap;


# instance fields
.field a:Lcom/flurry/sdk/ao;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Z

.field private final i:Lcom/flurry/sdk/dt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dt",
            "<",
            "Lcom/flurry/sdk/ap$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/flurry/sdk/dt;

    invoke-direct {v0}, Lcom/flurry/sdk/dt;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    .line 133
    return-void
.end method

.method private a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;
    .locals 1

    .prologue
    .line 429
    if-nez p1, :cond_1

    .line 430
    sget-object p1, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    .line 462
    :cond_0
    :goto_0
    return-object p1

    .line 433
    :cond_1
    if-eqz p2, :cond_0

    .line 437
    sget-object v0, Lcom/flurry/sdk/ar;->g:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    sget-object p1, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 440
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ar;->f:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    sget-object v0, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    sget-object p1, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 445
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/ar;->e:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    :cond_4
    sget-object v0, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    sget-object p1, Lcom/flurry/sdk/ap$a;->c:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 450
    :cond_5
    sget-object v0, Lcom/flurry/sdk/ar;->b:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    :cond_6
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :cond_7
    sget-object p1, Lcom/flurry/sdk/ap$a;->b:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 455
    :cond_8
    sget-object v0, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object p1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ap;
    .locals 2

    .prologue
    .line 115
    const-class v1, Lcom/flurry/sdk/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/flurry/sdk/ap;

    invoke-direct {v0}, Lcom/flurry/sdk/ap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;

    .line 118
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 775
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-object v0

    .line 779
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 785
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v3

    .line 829
    :cond_1
    :goto_0
    return-object v0

    .line 814
    :cond_2
    const-string v0, ""

    .line 817
    :try_start_0
    const-string v1, "\\s*-\\s*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 819
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v2, v0

    move-object v0, v1

    .line 825
    goto :goto_1

    .line 828
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 829
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 372
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v2

    .line 377
    if-eqz v2, :cond_2

    move v0, v1

    .line 378
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 382
    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    .line 848
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    .line 851
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 852
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 855
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    sget-object v3, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precaching: assetLink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " urlPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mimeType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v3, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    const-string v1, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is a video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 860
    sget-object v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    .line 875
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;Lcom/flurry/sdk/ay;J)Z

    move-result v0

    goto :goto_0

    .line 861
    :cond_2
    const-string v1, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is an image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 863
    sget-object v0, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    goto :goto_1

    .line 864
    :cond_3
    const-string v1, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 865
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v0, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    goto :goto_1

    .line 868
    :cond_4
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precaching: could not identify media type for asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_5
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precaching: could not identify urlPath for asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 792
    if-nez p1, :cond_0

    move v0, v1

    .line 806
    :goto_0
    return v0

    .line 796
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 797
    goto :goto_0

    .line 800
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 801
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 806
    goto :goto_0
.end method

.method private b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->f()Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 759
    if-nez p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-object v0

    .line 763
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 768
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-boolean v1, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, "Precaching: Saving local asset for adUnit."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v1, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    iget-object v2, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 921
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v1, "fileStreamCacheDownloaderTmp"

    invoke-static {v1}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 890
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 912
    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 913
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 917
    :goto_2
    if-nez v0, :cond_0

    .line 918
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 893
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z

    move-result v1

    .line 894
    if-nez v1, :cond_3

    .line 895
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precaching: Error creating directory to save tmp file:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 909
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 910
    :goto_3
    const/4 v5, 0x6

    :try_start_2
    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Error saving temp file for url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 912
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 913
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 914
    goto :goto_2

    .line 898
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 899
    :try_start_4
    iget-object v5, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v5, p1}, Lcom/flurry/sdk/ao;->c(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 900
    if-eqz v0, :cond_4

    .line 901
    :try_start_5
    invoke-virtual {v0}, Lcom/flurry/sdk/aw$b;->a()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 902
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Temp asset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saved to :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 909
    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 904
    :cond_4
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Temp asset not saved.  Could not open cache reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 912
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    :goto_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 913
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    .line 912
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 909
    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 358
    if-nez p1, :cond_0

    move v0, v1

    .line 368
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 363
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 368
    goto :goto_0
.end method

.method private h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 609
    :cond_0
    return-void

    .line 567
    :cond_1
    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 572
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v1

    .line 573
    sget-object v3, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v1

    .line 582
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v3

    .line 584
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 586
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 593
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 596
    :cond_4
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 598
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 601
    :cond_5
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 602
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v3, v6}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 604
    invoke-direct {p0, v6}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 601
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ap$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 554
    :try_start_0
    const-string v0, "fileStreamCacheDownloaderTmp"

    invoke-static {v0}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 555
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Cleaning temp asset directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v0}, Lcom/flurry/sdk/fa;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Error cleaning temp asset directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 536
    iget-boolean v1, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-object v0

    .line 540
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/io/File;

    const-string v2, "fileStreamCacheDownloaderTmp"

    invoke-static {v2}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 546
    goto :goto_0
.end method

.method public declared-synchronized a(JJ)V
    .locals 3

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Initializing AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-wide p1, p0, Lcom/flurry/sdk/ap;->e:J

    .line 143
    iput-wide p3, p0, Lcom/flurry/sdk/ap;->f:J

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ap$b;)V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->a(Ljava/lang/Object;)V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V
    .locals 4

    .prologue
    .line 931
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ap;->i()Ljava/util/List;

    move-result-object v0

    .line 932
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap$b;

    .line 933
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/ap$b;->a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    :cond_0
    return-void
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
    .line 255
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    if-eqz p2, :cond_0

    .line 263
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Handling ad response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x5

    move v1, v0

    .line 271
    :goto_1
    const/4 v0, 0x0

    .line 272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 273
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I

    move-result v0

    add-int/2addr v0, v2

    .line 274
    if-ge v0, v1, :cond_0

    move v2, v0

    .line 275
    goto :goto_2

    .line 269
    :cond_2
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->e:J

    iget-wide v2, p0, Lcom/flurry/sdk/ap;->f:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 316
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 317
    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 321
    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 325
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v0

    .line 326
    sget-object v3, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/flurry/sdk/ap$c;->c:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 331
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
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
    const/4 v2, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 309
    :cond_0
    return-void

    .line 288
    :cond_1
    if-eqz p2, :cond_0

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 298
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 297
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 304
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v1

    .line 305
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v1, v0

    .line 306
    goto :goto_1

    :cond_3
    move v0, v2

    .line 304
    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    return v0
.end method

.method public b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 354
    :goto_0
    return v0

    .line 339
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 340
    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 344
    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 348
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v0

    .line 349
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/ap$b;)Z
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->b(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/sdk/ap$a;
    .locals 8

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 390
    sget-object v1, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 393
    :cond_1
    if-nez p1, :cond_2

    .line 394
    sget-object v1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    sget-object v1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 401
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    .line 403
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 404
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 410
    iget-object v4, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 413
    :cond_5
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 415
    iget-object v4, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 418
    :cond_6
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 419
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 421
    iget-object v7, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v7, v6}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 418
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 7

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Starting AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/flurry/sdk/ao;

    const-string v1, "fileStreamCacheDownloader"

    iget-wide v2, p0, Lcom/flurry/sdk/ap;->e:J

    iget-wide v4, p0, Lcom/flurry/sdk/ap;->f:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ao;-><init>(Ljava/lang/String;JJZ)V

    iput-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao$a;)V

    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->a()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Stopping AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->b()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 515
    :goto_0
    return v0

    .line 478
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 479
    goto :goto_0

    .line 482
    :cond_1
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, "Precaching: Saving local assets for adUnit."

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/flurry/sdk/ap;->j()V

    .line 486
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 487
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 493
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 494
    goto :goto_0

    .line 498
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 500
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 501
    goto :goto_0

    .line 505
    :cond_4
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 506
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 507
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 508
    invoke-direct {p0, v6}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    .line 509
    goto :goto_0

    .line 505
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v2

    .line 616
    :cond_1
    if-eqz p1, :cond_0

    .line 622
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 623
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v3

    .line 624
    sget-object v5, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v5, v3}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 628
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v3

    .line 633
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v5

    .line 634
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 636
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 638
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 639
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    move v1, v0

    .line 669
    goto :goto_1

    .line 646
    :cond_5
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0, v5, v3}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 648
    invoke-direct {p0, v3, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 653
    :cond_6
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v3

    .line 654
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, v5, v3}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 655
    invoke-direct {p0, v3, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 656
    add-int/lit8 v1, v1, 0x1

    .line 660
    :cond_7
    sget-object v8, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v9, v8

    move v3, v2

    :goto_4
    if-ge v3, v9, :cond_a

    aget-object v10, v8, v3

    .line 661
    invoke-direct {p0, v0, v10}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 662
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-direct {p0, v5, v10}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 663
    invoke-direct {p0, v10, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 664
    add-int/lit8 v1, v1, 0x1

    .line 660
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 671
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method public declared-synchronized e()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Pausing AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Resuming AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 722
    :cond_0
    return-void

    .line 679
    :cond_1
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 684
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v1

    .line 685
    sget-object v3, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v1

    .line 694
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v3

    .line 695
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 697
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 699
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 700
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 706
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 709
    :cond_4
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 711
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 714
    :cond_5
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 715
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v3, v6}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 717
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 714
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public g()V
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->e()V

    goto :goto_0
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
    .line 742
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 746
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
