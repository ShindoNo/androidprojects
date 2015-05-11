.class Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;
.super Ljava/lang/Object;
.source "AnimatorAnimationFactory.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;->fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

.field final synthetic val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->this$0:Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 61
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory$2;->val$listener:Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;

    invoke-interface {v0}, Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;->onAnimationEnd()V

    .line 57
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 52
    return-void
.end method
