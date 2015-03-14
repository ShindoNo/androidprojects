.class Lcom/flurry/sdk/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 409
    iput-object p1, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->d()V

    .line 414
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;I)I

    .line 415
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;I)I

    .line 416
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->i(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->i(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    const-string v1, "videoCompleted"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v4}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/f$3;->a:Lcom/flurry/sdk/f;

    invoke-static {v5}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 427
    :cond_2
    return-void
.end method
