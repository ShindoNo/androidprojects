.class Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;
.super Ljava/lang/Object;
.source "AnimatorAnimationFactory.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/AnimationFactory;


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final INVISIBLE:F = 0.0f

.field private static final VISIBLE:F = 1.0f


# instance fields
.field private final interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 20
    return-void
.end method


# virtual methods
.method public animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
    .locals 8
    .param p1, "showcaseView"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    .local v0, "set":Landroid/animation/AnimatorSet;
    const-string v3, "showcaseX"

    new-array v4, v7, [I

    iget v5, p2, Landroid/graphics/Point;->x:I

    aput v5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 74
    .local v1, "xAnimator":Landroid/animation/ObjectAnimator;
    const-string v3, "showcaseY"

    new-array v4, v7, [I

    iget v5, p2, Landroid/graphics/Point;->y:I

    aput v5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 75
    .local v2, "yAnimator":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 76
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    return-void
.end method

.method public fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "duration"    # J
    .param p4, "listener"    # Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;

    .prologue
    .line 24
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 25
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;

    invoke-direct {v2, p0, p4}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$1;-><init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 44
    return-void

    .line 24
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "duration"    # J
    .param p4, "listener"    # Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    .prologue
    .line 48
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 49
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;

    invoke-direct {v2, p0, p4}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;-><init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 68
    return-void
.end method
