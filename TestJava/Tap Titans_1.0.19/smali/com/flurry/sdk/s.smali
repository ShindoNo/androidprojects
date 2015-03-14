.class public Lcom/flurry/sdk/s;
.super Lcom/flurry/sdk/de;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/sdk/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/s;-><init>(Lcom/flurry/sdk/de$a;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/de$a;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "Ads"

    const-class v1, Lcom/flurry/sdk/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/de;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/flurry/sdk/w;

    invoke-direct {v0}, Lcom/flurry/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/s;->a:Lcom/flurry/sdk/w;

    .line 34
    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/flurry/sdk/s;->g:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/de$a;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/s;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/flurry/sdk/s;->d()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/s;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a([B)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 78
    .line 80
    new-array v2, v6, [B

    .line 81
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    new-array v3, v0, [B

    move v0, v1

    .line 82
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 83
    if-ge v0, v6, :cond_0

    .line 84
    aget-byte v4, p1, v0

    aput-byte v4, v2, v0

    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    add-int/lit8 v4, v0, -0x4

    aget-byte v5, p1, v0

    aput-byte v5, v3, v4

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 94
    new-array v2, v0, [B

    .line 95
    array-length v4, v3

    sub-int/2addr v4, v0

    new-array v4, v4, [B

    .line 96
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 97
    if-ge v1, v0, :cond_2

    .line 98
    aget-byte v5, v3, v1

    aput-byte v5, v2, v1

    .line 96
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_2
    sub-int v5, v1, v0

    aget-byte v6, v3, v1

    aput-byte v6, v4, v5

    goto :goto_3

    .line 106
    :cond_3
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;

    invoke-static {p1, v0}, Lcom/flurry/sdk/v;->a(Lcom/flurry/sdk/gt;Ljava/lang/Class;)[B

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/s;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0, p3, p4}, Lcom/flurry/sdk/s;->b([BLjava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;-><init>()V

    .line 48
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;->a(Ljava/lang/CharSequence;)V

    .line 49
    return-object v0
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/s;->a([B)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 121
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    .line 123
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/s;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlurryAdLogsManager: start upload data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/s;->a:Lcom/flurry/sdk/w;

    const-class v4, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;

    new-instance v5, Lcom/flurry/sdk/s$1;

    invoke-direct {v5, p0, p2, p3}, Lcom/flurry/sdk/s$1;-><init>(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/w;->a(Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/Class;Lcom/flurry/sdk/w$a;)V

    .line 155
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/s;->d:Ljava/lang/String;

    const-string v2, "Internal ERROR! Report is corrupt!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 55
    array-length v0, v1

    .line 56
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 58
    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    array-length v3, p1

    add-int/2addr v0, v3

    new-array v3, v0, [B

    .line 60
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 63
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 64
    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 67
    add-int/lit8 v4, v0, -0x4

    aget-byte v4, v1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v4, v0, -0x4

    array-length v5, v1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    goto :goto_1

    .line 74
    :cond_2
    return-object v3
.end method
