.class public Lcom/github/amlcurran/showcaseview/ShowcaseView;
.super Landroid/widget/RelativeLayout;
.source "ShowcaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    }
.end annotation


# static fields
.field private static final HOLO_BLUE:I


# instance fields
.field private final animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

.field private bitmapBuffer:Landroid/graphics/Bitmap;

.field private blockTouches:Z

.field private fadeInMillis:J

.field private fadeOutMillis:J

.field private hasAlteredText:Z

.field private hasCustomClickListener:Z

.field private hasNoTarget:Z

.field private hideOnTouch:Z

.field private final mEndButton:Landroid/widget/Button;

.field private mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

.field private scaleMultiplier:F

.field private final shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

.field private shouldCentreText:Z

.field private final showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

.field private final showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

.field private showcaseX:I

.field private showcaseY:I

.field private final textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "#33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "newStyle"    # Z

    .prologue
    const v7, 0x10e0001

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    .line 43
    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    .line 44
    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    .line 47
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    .line 48
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    .line 49
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    .line 50
    sget-object v2, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .line 52
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 53
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    .line 68
    new-instance v0, Lcom/github/amlcurran/showcaseview/ApiUtils;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/ApiUtils;-><init>()V

    .line 69
    .local v0, "apiUtils":Lcom/github/amlcurran/showcaseview/ApiUtils;
    new-instance v2, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

    invoke-direct {v2}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;-><init>()V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    .line 70
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    invoke-direct {v2}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;-><init>()V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    .line 71
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-direct {v2, p1}, Lcom/github/amlcurran/showcaseview/ShotStateStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    .line 73
    invoke-virtual {v0, p0}, Lcom/github/amlcurran/showcaseview/ApiUtils;->setFitsSystemWindowsCompat(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    sget v4, Lcom/github/amlcurran/showcaseview/R$attr;->showcaseViewStyle:I

    sget v5, Lcom/github/amlcurran/showcaseview/R$style;->ShowcaseView:I

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    .local v1, "styled":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    .line 84
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/github/amlcurran/showcaseview/R$layout;->showcase_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    .line 87
    if-eqz p4, :cond_0

    .line 88
    new-instance v2, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .line 92
    :goto_0
    new-instance v2, Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/github/amlcurran/showcaseview/TextDrawer;-><init>(Landroid/content/res/Resources;Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    .line 94
    invoke-direct {p0, v1, v6}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateStyle(Landroid/content/res/TypedArray;Z)V

    .line 96
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->init()V

    .line 97
    return-void

    .line 90
    :cond_0
    new-instance v2, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newStyle"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/ShotStateStore;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateBitmap()V

    return-void
.end method

.method static synthetic access$202(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    return p1
.end method

.method static synthetic access$300(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/AnimationFactory;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->insertShowcaseView(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/amlcurran/showcaseview/ShowcaseView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setSingleShot(J)V

    return-void
.end method

.method private clearBitmap()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 279
    :cond_0
    return-void
.end method

.method private fadeInShowcase()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    iget-wide v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    new-instance v3, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;

    invoke-direct {v3, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/github/amlcurran/showcaseview/AnimationFactory;->fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V

    .line 305
    return-void
.end method

.method private fadeOutShowcase()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    iget-wide v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    new-instance v3, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;

    invoke-direct {v3, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/github/amlcurran/showcaseview/AnimationFactory;->fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V

    .line 289
    return-void
.end method

.method private hasShot()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    return v0
.end method

.method private haveBoundsChanged()Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideImmediate()V
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setVisibility(I)V

    .line 334
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/github/amlcurran/showcaseview/R$dimen;->button_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 105
    .local v1, "margin":I
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v0, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    sget v3, Lcom/github/amlcurran/showcaseview/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 111
    iget-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->addView(Landroid/view/View;)V

    .line 117
    .end local v0    # "lps":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "margin":I
    :cond_1
    return-void
.end method

.method private static insertShowcaseView(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V
    .locals 1
    .param p0, "showcaseView"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->show()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideImmediate()V

    goto :goto_0
.end method

.method private setFadeDurations(JJ)V
    .locals 0
    .param p1, "fadeInMillis"    # J
    .param p3, "fadeOutMillis"    # J

    .prologue
    .line 521
    iput-wide p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    .line 522
    iput-wide p3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    .line 523
    return-void
.end method

.method private setScaleMultiplier(F)V
    .locals 0
    .param p1, "scaleMultiplier"    # F

    .prologue
    .line 345
    iput p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    .line 346
    return-void
.end method

.method private setSingleShot(J)V
    .locals 1
    .param p1, "shotId"    # J

    .prologue
    .line 504
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->setSingleShot(J)V

    .line 505
    return-void
.end method

.method private tintButton(IZ)V
    .locals 3
    .param p1, "showcaseColor"    # I
    .param p2, "tintButton"    # Z

    .prologue
    .line 577
    if-eqz p2, :cond_0

    .line 578
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->haveBoundsChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 171
    :cond_1
    return-void
.end method

.method private updateStyle(Landroid/content/res/TypedArray;Z)V
    .locals 10
    .param p1, "styled"    # Landroid/content/res/TypedArray;
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x50

    .line 548
    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 549
    .local v0, "backgroundColor":I
    const/16 v6, 0x8

    sget v7, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 550
    .local v3, "showcaseColor":I
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/github/amlcurran/showcaseview/R$string;->ok:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    :cond_0
    const/16 v6, 0x9

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 556
    .local v4, "tintButton":Z
    const/4 v6, 0x7

    sget v7, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Title:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 558
    .local v5, "titleTextAppearance":I
    const/4 v6, 0x6

    sget v7, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Detail:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 561
    .local v2, "detailTextAppearance":I
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v6, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setShowcaseColour(I)V

    .line 564
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v6, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setBackgroundColour(I)V

    .line 565
    invoke-direct {p0, v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->tintButton(IZ)V

    .line 566
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v6, v5}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setTitleStyling(I)V

    .line 568
    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v6, v2}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setDetailStyling(I)V

    .line 569
    iput-boolean v9, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 571
    if-eqz p2, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 574
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 259
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->erase(Landroid/graphics/Bitmap;)V

    .line 249
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->drawShowcase(Landroid/graphics/Bitmap;FFF)V

    .line 251
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->draw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getShowcaseX()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    return v0
.end method

.method public getShowcaseY()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    return v0
.end method

.method public hasShowcaseView()Z
    .locals 2

    .prologue
    const v1, 0xf4240

    .line 179
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->clearBitmap()V

    .line 269
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->storeShot()V

    .line 270
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewHide(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 271
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutShowcase()V

    .line 272
    return-void
.end method

.method public hideButton()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 264
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateBitmap()V

    .line 353
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    iget v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->calculateShowcaseRect(FFLcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Z

    move-result v1

    .line 230
    .local v1, "recalculatedCling":Z
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 231
    .local v0, "recalculateText":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shouldCentreText:Z

    invoke-virtual {v4, v5, v6, p0, v7}, Lcom/github/amlcurran/showcaseview/TextDrawer;->calculateTextPosition(IILcom/github/amlcurran/showcaseview/ShowcaseView;Z)V

    .line 234
    :cond_1
    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 235
    return v3

    .end local v0    # "recalculateText":Z
    :cond_2
    move v0, v2

    .line 230
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    const/4 v4, 0x1

    .line 310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 311
    .local v2, "xDelta":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 312
    .local v3, "yDelta":F
    float-to-double v5, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 314
    .local v0, "distanceFromFocus":D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-boolean v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getBlockedRadius()F

    move-result v5

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-lez v5, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    .line 320
    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getBlockedRadius()F

    move-result v5

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-gtz v5, :cond_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public overrideButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    .end local p1    # "listener":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 207
    .restart local p1    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .end local p1    # "listener":Landroid/view/View$OnClickListener;
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    goto :goto_0

    .restart local p1    # "listener":Landroid/view/View$OnClickListener;
    :cond_2
    move-object p1, p0

    .line 208
    goto :goto_1
.end method

.method public setBlocksTouches(Z)V
    .locals 0
    .param p1, "blockTouches"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    .line 537
    return-void
.end method

.method public setButtonPosition(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public setHideOnTouchOutside(Z)V
    .locals 0
    .param p1, "hideOnTouch"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    .line 530
    return-void
.end method

.method public setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    goto :goto_0
.end method

.method public setShouldCentreText(Z)V
    .locals 1
    .param p1, "shouldCentreText"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shouldCentreText:Z

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 497
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 498
    return-void
.end method

.method public setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V
    .locals 3
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;
    .param p2, "animate"    # Z

    .prologue
    .line 142
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/targets/Target;Z)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method setShowcasePosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    iput p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    .line 132
    iput p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    .line 134
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method setShowcasePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 124
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 125
    return-void
.end method

.method public setShowcaseX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 183
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    invoke-virtual {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 184
    return-void
.end method

.method public setShowcaseY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    invoke-virtual {p0, v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 188
    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "theme"    # I

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 544
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateStyle(Landroid/content/res/TypedArray;Z)V

    .line 545
    return-void
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V
    .locals 1
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V

    .line 139
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewShow(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 293
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInShowcase()V

    .line 294
    return-void
.end method

.method public showButton()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    return-void
.end method
