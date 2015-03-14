.class abstract Lcom/flurry/sdk/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/j$1;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/flurry/sdk/j$c;-><init>()V

    return-void
.end method

.method private static h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 201
    invoke-static {p1}, Lcom/flurry/sdk/j$c;->h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$c;->d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$c;->f(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 205
    invoke-static {p1}, Lcom/flurry/sdk/j$c;->i(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$c;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/j$c;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    return v0
.end method

.method public e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    return v0
.end method

.method public f(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 221
    const/4 v0, -0x2

    return v0
.end method
