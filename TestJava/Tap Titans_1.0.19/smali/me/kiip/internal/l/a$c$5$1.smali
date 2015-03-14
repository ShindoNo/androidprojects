.class Lme/kiip/internal/l/a$c$5$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$c$5;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c$5;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c$5;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lme/kiip/internal/l/a$c$5$1;->a:Lme/kiip/internal/l/a$c$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 351
    iget-object v0, p0, Lme/kiip/internal/l/a$c$5$1;->a:Lme/kiip/internal/l/a$c$5;

    iget-object v0, v0, Lme/kiip/internal/l/a$c$5;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->b(Lme/kiip/internal/l/a$c;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 347
    return-void
.end method
