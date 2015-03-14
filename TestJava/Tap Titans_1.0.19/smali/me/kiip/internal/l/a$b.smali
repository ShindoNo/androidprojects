.class Lme/kiip/internal/l/a$b;
.super Landroid/widget/RelativeLayout;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/animation/RotateAnimation;

.field private b:Landroid/view/animation/AlphaAnimation;

.field private c:Landroid/view/animation/AlphaAnimation;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 686
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->a()V

    .line 687
    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x3f800000

    const/high16 v4, 0x3f000000

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 690
    invoke-virtual {p0}, Lme/kiip/internal/l/a$b;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 692
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    .line 693
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 694
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 695
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 696
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 698
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    .line 699
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 700
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 701
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    .line 702
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 703
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 705
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    .line 706
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    .line 707
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    .line 708
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    .line 710
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$b;->addView(Landroid/view/View;)V

    .line 711
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$b;->addView(Landroid/view/View;)V

    .line 712
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$b;->addView(Landroid/view/View;)V

    .line 713
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$b;->addView(Landroid/view/View;)V

    .line 715
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->b()V

    .line 716
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a$b;Z)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lme/kiip/internal/l/a$b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 786
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 787
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 793
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 790
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 791
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private b()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x41400000

    const/4 v9, -0x2

    const/high16 v8, 0x41880000

    const/4 v7, 0x1

    .line 719
    invoke-virtual {p0}, Lme/kiip/internal/l/a$b;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 720
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 723
    mul-float v3, v8, v2

    float-to-int v3, v3

    mul-float v4, v8, v2

    float-to-int v4, v4

    mul-float v5, v8, v2

    float-to-int v5, v5

    mul-float v6, v8, v2

    float-to-int v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lme/kiip/internal/l/a$b;->setPadding(IIII)V

    .line 724
    const-string v3, "#E6000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lme/kiip/internal/l/a$b;->setBackgroundColor(I)V

    .line 728
    const-string v3, "kp_activity_indicator"

    const-string v4, "drawable"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 729
    const/4 v0, 0x0

    .line 730
    if-lez v3, :cond_0

    .line 731
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 736
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 737
    iget-object v1, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 740
    mul-float v1, v8, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 741
    invoke-virtual {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 743
    iget-object v1, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 745
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 746
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 747
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 749
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 750
    mul-float v1, v8, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 751
    invoke-virtual {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 752
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 754
    iget-object v1, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 756
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 760
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 761
    mul-float v1, v8, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 762
    invoke-virtual {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 763
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 765
    iget-object v1, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 767
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 768
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    const-string v1, "Tap again to cancel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 770
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 771
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    return-void

    .line 733
    :cond_0
    const-string v1, "KiipSDK"

    const-string v3, "Unable to find kp_activity_indicator.png in drawable-*"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lme/kiip/internal/l/a$b;->a:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 835
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 839
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lme/kiip/internal/l/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 823
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 824
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->c()V

    .line 825
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->d()V

    .line 830
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 831
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 811
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 814
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 815
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->d()V

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->c()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 797
    invoke-virtual {p0}, Lme/kiip/internal/l/a$b;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 798
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 801
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 802
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->d()V

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    invoke-direct {p0}, Lme/kiip/internal/l/a$b;->c()V

    goto :goto_0
.end method
