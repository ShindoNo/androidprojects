.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
.super Lcom/flurry/sdk/gu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gu",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->SCHEMA$:Lcom/flurry/sdk/fk;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gu;-><init>(Lcom/flurry/sdk/fk;)V

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 303
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 304
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->e:F

    .line 305
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 306
    return-object p0
.end method

.method public a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 208
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a:I

    .line 209
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 210
    return-object p0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 327
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 328
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 329
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 330
    return-object p0
.end method

.method public a()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;
    .locals 3

    .prologue
    .line 348
    :try_start_0
    new-instance v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    invoke-direct {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;-><init>()V

    .line 349
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a:I

    :goto_0
    iput v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->a:I

    .line 350
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b:I

    :goto_1
    iput v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->b:I

    .line 351
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c:I

    :goto_2
    iput v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->c:I

    .line 352
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->d:I

    :goto_3
    iput v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->d:I

    .line 353
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x4

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->e:F

    :goto_4
    iput v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->e:F

    .line 354
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    :goto_5
    iput-object v0, v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 355
    return-object v1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_4

    .line 354
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Lcom/flurry/sdk/fh;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 232
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b:I

    .line 233
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 234
    return-object p0
.end method

.method public c(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 255
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 256
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c:I

    .line 257
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 258
    return-object p0
.end method

.method public d(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 279
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b()[Lcom/flurry/sdk/fk$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/sdk/fk$f;Ljava/lang/Object;)V

    .line 280
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->d:I

    .line 281
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 282
    return-object p0
.end method
