.class public Lcom/prime31/ChartboostPlugin;
.super Lcom/prime31/ChartboostPluginBase;
.source "ChartboostPlugin.java"


# instance fields
.field private _isChartboostInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/prime31/ChartboostPluginBase;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/prime31/ChartboostPlugin;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    return-void
.end method

.method public static onBackPressed()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$6;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$2;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$4;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$5;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStart()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$1;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prime31/ChartboostPlugin;->_isChartboostInitialized:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/prime31/ChartboostPlugin;->instance()Lcom/prime31/ChartboostPlugin;

    move-result-object v0

    new-instance v1, Lcom/prime31/ChartboostPlugin$3;

    invoke-direct {v1}, Lcom/prime31/ChartboostPlugin$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Lcom/prime31/ChartboostPlugin$9;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$9;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public cacheMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/prime31/ChartboostPlugin$11;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$11;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public cacheRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Lcom/prime31/ChartboostPlugin$13;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$13;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "didCacheInterstitial"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "didCacheMoreApps"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "didCacheRewardedVideo"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "didClickInterstitial"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "didClickMoreApps"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "didClickRewardedVideo"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "didCloseInterstitial"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "didCloseMoreApps"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v0, "didCloseRewardedVideo"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 295
    const-string v0, "didCompleteRewardedVideo"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "didFinishInterstitial"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v0, "didDismissMoreApps"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "didDismissRewardedVideo"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 323
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "didFailToLoadInterstitial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "didFailToLoadInterstitial"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 331
    const-string v0, "didFailToLoadMoreApps"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 346
    const-string v0, "Prime31"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "didFailToLoadRewardedVideo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "didFailToLoadRewardedVideo"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 375
    const-string v0, "didFailToLoadUrl"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/ChartboostPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCachedMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasMoreApps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;
    .param p3, "shouldRequestInterstitialsInFirstSession"    # Z

    .prologue
    .line 118
    new-instance v0, Lcom/prime31/ChartboostPlugin$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/prime31/ChartboostPlugin$7;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public setImpressionsUseActivities(Z)V
    .locals 1
    .param p1, "impressionsUseActivities"    # Z

    .prologue
    .line 135
    new-instance v0, Lcom/prime31/ChartboostPlugin$8;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$8;-><init>(Lcom/prime31/ChartboostPlugin;Z)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Lcom/prime31/ChartboostPlugin$10;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$10;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public showMoreApps(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Lcom/prime31/ChartboostPlugin$12;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$12;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Lcom/prime31/ChartboostPlugin$14;

    invoke-direct {v0, p0, p1}, Lcom/prime31/ChartboostPlugin$14;-><init>(Lcom/prime31/ChartboostPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/ChartboostPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method
