.class public Lcom/flurry/android/FlurryAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static clearLocation()V
    .locals 2

    .prologue
    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 398
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dz;->e()V

    goto :goto_0
.end method

.method public static clearTargetingKeywords()V
    .locals 2

    .prologue
    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 500
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->A()V

    goto :goto_0
.end method

.method public static clearUserCookies()V
    .locals 2

    .prologue
    .line 453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 454
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->y()V

    goto :goto_0
.end method

.method public static displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 289
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 292
    :cond_0
    if-nez p0, :cond_1

    .line 293
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    if-nez p1, :cond_2

    .line 297
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 301
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_3
    if-nez p2, :cond_4

    .line 305
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while displaying Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static enableTestAds(Z)V
    .locals 2

    .prologue
    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 532
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Z)V

    goto :goto_0
.end method

.method public static fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 6

    .prologue
    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 239
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 242
    :cond_0
    if-nez p0, :cond_1

    .line 243
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    if-nez p1, :cond_2

    .line 247
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 251
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_3
    if-nez p2, :cond_4

    .line 255
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_4
    if-nez p3, :cond_5

    .line 259
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while fetching Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 73
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return v0

    .line 76
    :cond_0
    if-nez p0, :cond_1

    .line 77
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Context passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    if-nez p1, :cond_2

    .line 81
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 85
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    if-nez p2, :cond_4

    .line 89
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "ViewGroup passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    if-nez p3, :cond_5

    .line 93
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "FlurryAdSize passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 97
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "getAd must be called from UI thread."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    sget-object v2, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v3, "Exception while getting Ad : "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initializeAds(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public static isAdAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 156
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v0

    .line 159
    :cond_0
    if-nez p0, :cond_1

    .line 160
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Context passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    if-nez p1, :cond_2

    .line 164
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 168
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdAvailable was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    if-nez p2, :cond_4

    .line 172
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "FlurryAdSize passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    sget-object v2, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v3, "Exception while checking Ads if available: "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 195
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return v0

    .line 198
    :cond_0
    if-nez p0, :cond_1

    .line 199
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 203
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 335
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 338
    :cond_0
    if-nez p0, :cond_1

    .line 339
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    if-nez p1, :cond_2

    .line 343
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 347
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_3
    if-nez p2, :cond_4

    .line 351
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while removing Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAdListener(Lcom/flurry/android/FlurryAdListener;)V
    .locals 2

    .prologue
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 372
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/FlurryAdListener;)V

    goto :goto_0
.end method

.method public static setAdLogUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 518
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAdServerUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 510
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCustomAdNetworkHandler(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 2

    .prologue
    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 410
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    if-nez p0, :cond_1

    .line 414
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/ICustomAdNetworkHandler;)V

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 2

    .prologue
    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 387
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/dz;->a(FF)V

    goto :goto_0
.end method

.method public static setTargetingKeywords(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 480
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    if-nez p0, :cond_2

    .line 484
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "targetingKeywords Map passed to setTargetingKeywords was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_2
    if-eqz p0, :cond_0

    .line 488
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setUserCookies(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 436
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    if-nez p0, :cond_1

    .line 440
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "userCookies Map passed to setUserCookies was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
