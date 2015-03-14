.class public final Lcom/flurry/sdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Lcom/flurry/android/AdCreative;
    .locals 6

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    new-instance v0, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/android/AdCreative;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p0, :cond_0

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 52
    if-nez v0, :cond_3

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    .line 57
    if-nez v0, :cond_4

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_4
    invoke-static {v0}, Lcom/flurry/sdk/cc;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/flurry/sdk/ez;->i()I

    move-result v0

    .line 84
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    goto :goto_0

    .line 89
    :cond_1
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    goto :goto_0
.end method
