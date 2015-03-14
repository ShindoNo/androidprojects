.class Lcom/flurry/sdk/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 346
    iput-object p1, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v8, 0x1

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;I)I

    .line 350
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, v8}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;Z)Z

    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/flurry/sdk/z;->setEnabled(Z)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;I)I

    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;I)I

    .line 361
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->f(Lcom/flurry/sdk/f;)I

    move-result v0

    .line 364
    if-eqz v0, :cond_2

    .line 365
    iget-object v1, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/f;->seekTo(I)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->getAutoPlay()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/f;->seekTo(I)V

    .line 372
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/z;->setOffsetStartTime(I)V

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    .line 377
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v7

    .line 381
    invoke-virtual {v7}, Lcom/flurry/sdk/am;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v4}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v5}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 385
    invoke-virtual {v7, v8}, Lcom/flurry/sdk/am;->f(Z)V

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->a()V

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/f$2;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->h(Lcom/flurry/sdk/f;)V

    goto :goto_0
.end method
