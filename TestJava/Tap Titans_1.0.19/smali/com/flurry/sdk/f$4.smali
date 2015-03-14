.class Lcom/flurry/sdk/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/f;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/f;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 432
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/f;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Playback Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, v4}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;I)I

    .line 434
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, v4}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;I)I

    .line 437
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 439
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 441
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->d()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->j(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->j(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    :cond_1
    :goto_0
    return v7

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 460
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_5

    .line 461
    const-string v0, "Sorry, this video is not valid for streaming to this device."

    .line 466
    :goto_1
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 472
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 473
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 474
    const-string v0, "errorCode"

    sget-object v1, Lcom/flurry/sdk/b;->r:Lcom/flurry/sdk/b;

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "frameworkError"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v0, "implError"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    const-string v1, "renderFailed"

    iget-object v3, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v4}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v5}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->k(Lcom/flurry/sdk/f;)Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/flurry/sdk/f$4;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->k(Lcom/flurry/sdk/f;)Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->terminateVideoPlaybackDueToError()V

    goto/16 :goto_0

    .line 463
    :cond_5
    const-string v0, "Sorry, this video cannot be played."

    goto :goto_1
.end method
