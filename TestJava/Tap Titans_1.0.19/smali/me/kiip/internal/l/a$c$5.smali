.class Lme/kiip/internal/l/a$c$5;
.super Landroid/widget/VideoView;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lme/kiip/internal/l/a$c$5;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "mv"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lme/kiip/internal/l/a$c$5;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lme/kiip/internal/l/a$c$5;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->b(Lme/kiip/internal/l/a$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 341
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 342
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 343
    new-instance v1, Lme/kiip/internal/l/a$c$5$1;

    invoke-direct {v1, p0}, Lme/kiip/internal/l/a$c$5$1;-><init>(Lme/kiip/internal/l/a$c$5;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 359
    iget-object v1, p0, Lme/kiip/internal/l/a$c$5;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->b(Lme/kiip/internal/l/a$c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c$5;->pause()V

    .line 367
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c$5;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lme/kiip/internal/l/a$c$5;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->b(Lme/kiip/internal/l/a$c;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c$5;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$c$5;->seekTo(I)V

    .line 365
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c$5;->start()V

    goto :goto_0
.end method
