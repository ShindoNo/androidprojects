.class Lcom/flurry/sdk/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 336
    iput-object p1, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;I)I

    .line 339
    iget-object v0, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;I)I

    .line 340
    iget-object v0, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;)I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/f$1;->a:Lcom/flurry/sdk/f;

    invoke-static {v2}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 343
    :cond_0
    return-void
.end method
