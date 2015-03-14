.class public Lme/kiip/internal/k/f;
.super Ljava/lang/Object;
.source "KiipSDK"


# direct methods
.method public static a(Landroid/location/LocationManager;F)Landroid/location/Location;
    .locals 11

    .prologue
    const v8, 0x7f7fffff

    .line 18
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 19
    const/4 v7, 0x0

    .line 21
    const-wide/16 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v8

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 26
    if-eqz v6, :cond_2

    .line 27
    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 28
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 30
    long-to-float v10, v0

    cmpl-float v10, v10, p1

    if-lez v10, :cond_0

    cmpg-float v10, v4, v5

    if-gez v10, :cond_0

    move v2, v4

    move-object v3, v6

    :goto_1
    move v5, v2

    move-object v7, v3

    move-wide v2, v0

    .line 40
    goto :goto_0

    .line 35
    :cond_0
    long-to-float v4, v0

    cmpg-float v4, v4, p1

    if-gez v4, :cond_2

    cmpl-float v4, v5, v8

    if-nez v4, :cond_2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move v2, v5

    move-object v3, v6

    .line 37
    goto :goto_1

    .line 43
    :cond_1
    return-object v7

    :cond_2
    move-wide v0, v2

    move v2, v5

    move-object v3, v7

    goto :goto_1
.end method
