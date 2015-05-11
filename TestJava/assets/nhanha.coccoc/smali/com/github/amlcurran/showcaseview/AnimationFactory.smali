.class interface abstract Lcom/github/amlcurran/showcaseview/AnimationFactory;
.super Ljava/lang/Object;
.source "AnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;,
        Lcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;
    }
.end annotation


# virtual methods
.method public abstract animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
.end method

.method public abstract fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V
.end method

.method public abstract fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V
.end method
