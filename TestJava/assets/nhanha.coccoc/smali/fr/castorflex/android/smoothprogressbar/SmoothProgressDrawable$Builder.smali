.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

.field private mColors:[I

.field private mGenerateBackgroundUsingColors:Z

.field private mGradients:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 630
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 655
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 656
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 657
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$integer;->spb_default_sections_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 658
    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lfr/castorflex/android/smoothprogressbar/R$color;->spb_default_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 659
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$string;->spb_default_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 660
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 661
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 662
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_reversed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 663
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 664
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 665
    sget v1, Lfr/castorflex/android/smoothprogressbar/R$bool;->spb_default_progressiveStart_activated:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 666
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 667
    return-void
.end method


# virtual methods
.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "backgroundDrawableWhenHidden"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 743
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 744
    return-object p0
.end method

.method public build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .locals 17

    .prologue
    .line 633
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    if-eqz v2, :cond_0

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    invoke-static {v2, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 636
    :cond_0
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v6, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;)V

    .line 651
    .local v1, "ret":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    return-object v1
.end method

.method public callbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "onProgressiveStopEndedListener"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 738
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 739
    return-object p0
.end method

.method public color(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 688
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 689
    return-object p0
.end method

.method public colors([I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 693
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkColors([I)V

    .line 694
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 695
    return-object p0
.end method

.method public generateBackgroundUsingColors()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    .line 749
    return-object p0
.end method

.method public gradients()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "useGradients"    # Z

    .prologue
    .line 757
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 758
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 670
    const-string v0, "Interpolator"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 672
    return-object p0
.end method

.method public mirrorMode(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 729
    return-object p0
.end method

.method public progressiveStart(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 734
    return-object p0
.end method

.method public progressiveStartSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartSpeed"    # F

    .prologue
    .line 711
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 712
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 713
    return-object p0
.end method

.method public progressiveStopSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStopSpeed"    # F

    .prologue
    .line 717
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 718
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 719
    return-object p0
.end method

.method public reversed(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 723
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 724
    return-object p0
.end method

.method public sectionsCount(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "sectionsCount"    # I

    .prologue
    .line 676
    const-string v0, "Sections count"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkPositive(ILjava/lang/String;)V

    .line 677
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 678
    return-object p0
.end method

.method public separatorLength(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 682
    int-to-float v0, p1

    const-string v1, "Separator length"

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 683
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 684
    return-object p0
.end method

.method public speed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 705
    invoke-static {p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkSpeed(F)V

    .line 706
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 707
    return-object p0
.end method

.method public strokeWidth(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 699
    const-string v0, "Width"

    invoke-static {p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 700
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 701
    return-object p0
.end method
