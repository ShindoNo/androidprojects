.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SimplePanelSlideListener;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANCHOR_POINT:F = 1.0f

.field private static final DEFAULT_ATTRS:[I

.field private static final DEFAULT_CLIP_PANEL_FLAG:Z = true

.field private static final DEFAULT_FADE_COLOR:I = -0x67000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_OVERLAY_FLAG:Z = false

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_PARALAX_OFFSET:I = 0x0

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorPoint:F

.field private mClipPanel:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsSlidingUp:Z

.field private mIsTouchEnabled:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingDragViewTouchEvents:Z

.field private mMainView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private mParallaxOffset:I

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v11, 0x3f000000

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 276
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/16 v4, 0x190

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 82
    const/high16 v4, -0x67000000

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 92
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 102
    iput v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 107
    iput v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 112
    iput v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 122
    iput-boolean v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 127
    iput-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 139
    iput v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 161
    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 195
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 206
    iput-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 208
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 278
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iput-object v10, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    iput-object v10, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    .line 345
    :goto_0
    return-void

    .line 284
    :cond_0
    if-eqz p2, :cond_3

    .line 285
    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, "defAttrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 289
    .local v2, "gravity":I
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setGravity(I)V

    .line 292
    .end local v2    # "gravity":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    sget-object v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 296
    .local v3, "ta":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_2

    .line 297
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoPanelHeight:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 298
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoShadowHeight:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 299
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoParalaxOffset:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 301
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoFlingVelocity:I

    const/16 v5, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 302
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoFadeColor:I

    const/high16 v5, -0x67000000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 304
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoDragView:I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 306
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoOverlay:I

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 307
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoClipPanel:I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 309
    sget v4, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoAnchorPoint:I

    const/high16 v5, 0x3f800000

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 311
    invoke-static {}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v4

    sget v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoInitialState:I

    sget-object v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 314
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    .end local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 318
    .local v1, "density":F
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    if-ne v4, v7, :cond_4

    .line 319
    const/high16 v4, 0x42880000

    mul-float/2addr v4, v1

    add-float/2addr v4, v11

    float-to-int v4, v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 321
    :cond_4
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne v4, v7, :cond_5

    .line 322
    const/high16 v4, 0x40800000

    mul-float/2addr v4, v1

    add-float/2addr v4, v11

    float-to-int v4, v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 324
    :cond_5
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-ne v4, v7, :cond_6

    .line 325
    const/4 v4, 0x0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 328
    :cond_6
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-lez v4, :cond_8

    .line 329
    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sothree/slidinguppanel/library/R$drawable;->above_shadow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    :goto_1
    invoke-virtual {p0, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 341
    new-instance v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;

    invoke-direct {v4, p0, v10}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v11, v4}, Lcom/sothree/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    .line 342
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setMinVelocity(F)V

    .line 344
    iput-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    goto/16 :goto_0

    .line 332
    :cond_7
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sothree/slidinguppanel/library/R$drawable;->below_shadow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 336
    :cond_8
    iput-object v10, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 0
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method static synthetic access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$602(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)F
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method private computePanelTopPosition(F)I
    .locals 4
    .param p1, "slideOffset"    # F

    .prologue
    .line 895
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 896
    .local v1, "slidingViewHeight":I
    :goto_0
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 898
    .local v0, "slidePixelOffset":I
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 900
    :goto_1
    return v2

    .line 895
    .end local v0    # "slidePixelOffset":I
    .end local v1    # "slidingViewHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 900
    .restart local v0    # "slidePixelOffset":I
    .restart local v1    # "slidingViewHeight":I
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private computeSlideOffset(I)F
    .locals 3
    .param p1, "topPosition"    # I

    .prologue
    .line 908
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 912
    .local v0, "topBoundCollapsed":I
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 654
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDragViewUnder(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 880
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 888
    :goto_0
    return v5

    .line 881
    :cond_0
    new-array v3, v7, [I

    .line 882
    .local v3, "viewLocation":[I
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 883
    new-array v0, v7, [I

    .line 884
    .local v0, "parentLocation":[I
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 885
    aget v6, v0, v5

    add-int v1, v6, p1

    .line 886
    .local v1, "screenX":I
    aget v6, v0, v4

    add-int v2, v6, p2

    .line 887
    .local v2, "screenY":I
    aget v6, v3, v5

    if-lt v1, v6, :cond_1

    aget v6, v3, v5

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v1, v6, :cond_1

    aget v6, v3, v4

    if-lt v2, v6, :cond_1

    aget v6, v3, v4

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 888
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private onPanelDragged(I)V
    .locals 6
    .param p1, "newTop"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 965
    sget-object v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 967
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v3

    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 969
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getCurrentParalaxOffset()I

    move-result v2

    .line 971
    .local v2, "mainViewOffset":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 972
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 978
    .end local v2    # "mainViewOffset":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 981
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 982
    .local v1, "lp":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v0, v3, v4

    .line 984
    .local v0, "defaultHeight":I
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v3, :cond_4

    .line 986
    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int v3, p1, v3

    :goto_1
    iput v3, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 987
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 992
    :cond_1
    :goto_2
    return-void

    .line 974
    .end local v0    # "defaultHeight":I
    .end local v1    # "lp":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    .restart local v2    # "mainViewOffset":I
    :cond_2
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-static {v3}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v3

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    goto :goto_0

    .line 986
    .end local v2    # "mainViewOffset":I
    .restart local v0    # "defaultHeight":I
    .restart local v1    # "lp":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, p1

    goto :goto_1

    .line 988
    :cond_4
    iget v3, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    iget-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v3, :cond_1

    .line 989
    iput v0, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 990
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_2
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1099
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1100
    check-cast v7, Landroid/view/ViewGroup;

    .line 1101
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1102
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1103
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1105
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1106
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1108
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1109
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1110
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1109
    invoke-virtual/range {v0 .. v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    .line 1115
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1105
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1115
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1133
    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->abort()V

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    .line 598
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 599
    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 591
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 592
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 584
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 585
    return-void
.end method

.method dispatchOnPanelHidden(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelHidden(Landroid/view/View;)V

    .line 605
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 606
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 578
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1067
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1070
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1071
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1074
    .local v2, "right":I
    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_1

    .line 1075
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int v3, v4, v5

    .line 1076
    .local v3, "top":I
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1081
    .local v0, "bottom":I
    :goto_0
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1082
    .local v1, "left":I
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1083
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1085
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    return-void

    .line 1078
    .restart local v2    # "right":I
    :cond_1
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1079
    .restart local v3    # "top":I
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    add-int v0, v4, v5

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 997
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    move-result v4

    .line 999
    .local v4, "save":I
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eq v5, p2, :cond_4

    .line 1002
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1003
    iget-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v5, :cond_0

    .line 1004
    iget-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v5, :cond_3

    .line 1005
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1010
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    if-eqz v5, :cond_1

    .line 1011
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1014
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1016
    .local v3, "result":Z
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 1017
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    ushr-int/lit8 v0, v5, 0x18

    .line 1018
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    iget v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 1019
    .local v2, "imag":I
    shl-int/lit8 v5, v2, 0x18

    iget v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int v1, v5, v6

    .line 1020
    .local v1, "color":I
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1021
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1027
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v2    # "imag":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1029
    return v3

    .line 1007
    .end local v3    # "result":Z
    :cond_3
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1024
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .restart local v3    # "result":Z
    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1121
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1138
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1126
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAnchorPoint()F
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getCurrentParalaxOffset()I
    .locals 4

    .prologue
    .line 441
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 442
    .local v0, "offset":I
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "offset":I
    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    return v0
.end method

.method public isClipPanel()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    return v0
.end method

.method public isOverlayed()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 659
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 661
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 667
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 353
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 824
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 827
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 829
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 867
    :goto_0
    return v6

    .line 832
    :cond_1
    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    if-ne v0, v9, :cond_3

    .line 833
    :cond_2
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v7}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    goto :goto_0

    .line 837
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 838
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 840
    .local v5, "y":F
    packed-switch v0, :pswitch_data_0

    .line 867
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 842
    :pswitch_1
    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 843
    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 844
    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_1

    .line 849
    :pswitch_2
    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 850
    .local v1, "adx":F
    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 851
    .local v2, "ady":F
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v7}, Lcom/sothree/slidinguppanel/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 854
    .local v3, "dragSlop":I
    iget-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-eqz v7, :cond_5

    int-to-float v7, v3

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    int-to-float v7, v3

    cmpg-float v7, v2, v7

    if-gez v7, :cond_5

    .line 855
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 858
    :cond_5
    int-to-float v7, v3

    cmpl-float v7, v2, v7

    if-lez v7, :cond_6

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_7

    :cond_6
    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 859
    :cond_7
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v7}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 860
    iput-boolean v9, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 747
    .local v9, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v10

    .line 749
    .local v10, "paddingTop":I
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 751
    .local v2, "childCount":I
    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v11, :cond_0

    .line 752
    sget-object v11, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v12}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 764
    const/4 v11, 0x0

    iput v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 769
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_6

    .line 770
    invoke-virtual {p0, v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 773
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    if-eqz v7, :cond_1

    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v11, :cond_3

    .line 769
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 754
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "i":I
    :pswitch_0
    const/high16 v11, 0x3f800000

    iput v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 757
    :pswitch_1
    iget v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    iput v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 760
    :pswitch_2
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v12

    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_3
    add-int v8, v12, v11

    .line 761
    .local v8, "newTop":I
    invoke-direct {p0, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v11

    iput v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 760
    .end local v8    # "newTop":I
    :cond_2
    iget v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v11, v11

    goto :goto_3

    .line 777
    .restart local v0    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 778
    .local v3, "childHeight":I
    move v6, v10

    .line 780
    .local v6, "childTop":I
    iget-object v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v11, :cond_4

    .line 781
    iget v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v11}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v6

    .line 784
    :cond_4
    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-nez v11, :cond_5

    .line 785
    iget-object v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v11, :cond_5

    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v11, :cond_5

    .line 786
    iget v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v11}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v11

    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v6, v11, v12

    .line 789
    :cond_5
    add-int v1, v6, v3

    .line 790
    .local v1, "childBottom":I
    move v4, v9

    .line 791
    .local v4, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int v5, v4, v11

    .line 793
    .local v5, "childRight":I
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 796
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childHeight":I
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    .end local v6    # "childTop":I
    :cond_6
    iget-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v11, :cond_7

    .line 797
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 800
    :cond_7
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 801
    return-void

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 671
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 672
    .local v10, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 673
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 674
    .local v5, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 676
    .local v6, "heightSize":I
    const/high16 v12, 0x40000000

    if-eq v10, v12, :cond_0

    .line 677
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 678
    :cond_0
    const/high16 v12, 0x40000000

    if-eq v5, v12, :cond_1

    .line 679
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .line 684
    .local v1, "childCount":I
    const/4 v12, 0x2

    if-eq v1, v12, :cond_2

    .line 685
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 688
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    .line 689
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 690
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v12, :cond_3

    .line 691
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 695
    :cond_3
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_4

    .line 696
    sget-object v12, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 699
    :cond_4
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v12

    sub-int v12, v6, v12

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v13

    sub-int v8, v12, v13

    .line 702
    .local v8, "layoutHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_c

    .line 703
    invoke-virtual {p0, v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 707
    .local v9, "lp":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    if-nez v7, :cond_6

    .line 702
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 711
    :cond_6
    move v4, v8

    .line 712
    .local v4, "height":I
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v12, :cond_7

    iget-boolean v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v12, :cond_7

    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v12, v13, :cond_7

    .line 713
    iget v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v4, v12

    .line 717
    :cond_7
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    if-ne v12, v13, :cond_8

    .line 718
    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 726
    .local v3, "childWidthSpec":I
    :goto_2
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v12, v13, :cond_a

    .line 727
    const/high16 v12, -0x80000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 734
    .local v2, "childHeightSpec":I
    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 736
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v12, :cond_5

    .line 737
    iget-object v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    goto :goto_1

    .line 719
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childWidthSpec":I
    :cond_8
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_9

    .line 720
    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_2

    .line 722
    .end local v3    # "childWidthSpec":I
    :cond_9
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childWidthSpec":I
    goto :goto_2

    .line 728
    :cond_a
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_b

    .line 729
    const/high16 v12, 0x40000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childHeightSpec":I
    goto :goto_3

    .line 731
    .end local v2    # "childHeightSpec":I
    :cond_b
    iget v12, v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childHeightSpec":I
    goto :goto_3

    .line 741
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childWidthSpec":I
    .end local v4    # "height":I
    .end local v9    # "lp":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    :cond_c
    invoke-virtual {p0, v11, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 742
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1153
    move-object v0, p1

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;

    .line 1154
    .local v0, "ss":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;
    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1155
    iget-object v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1156
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1143
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1145
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1146
    .local v0, "ss":Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1148
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 805
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 807
    if-eq p2, p4, :cond_0

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 810
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 876
    :goto_0
    return v0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 876
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 644
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 645
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 646
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 647
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1
    .param p1, "anchorPoint"    # F

    .prologue
    .line 530
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 531
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 533
    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 565
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 375
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 376
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 377
    return-void
.end method

.method public setDragView(I)V
    .locals 1
    .param p1, "dragViewResId"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 520
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 521
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 3
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 491
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 493
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 494
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 495
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    new-instance v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;

    invoke-direct {v1, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    :cond_1
    return-void
.end method

.method public setEnableDragViewTouchEvents(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    .line 820
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    const/16 v1, 0x50

    .line 359
    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 363
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 366
    :cond_1
    return-void

    .line 362
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinFlingVelocity(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 471
    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0
    .param p1, "overlayed"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 550
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 405
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 408
    :cond_0
    return-void
.end method

.method public setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 479
    return-void
.end method

.method public setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 5
    .param p1, "state"    # Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 930
    if-eqz p1, :cond_0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne p1, v1, :cond_1

    .line 931
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Panel state cannot be null or DRAGGING."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_3

    .line 961
    :cond_2
    :goto_0
    return-void

    .line 938
    :cond_3
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v1, :cond_4

    .line 939
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    .line 941
    :cond_4
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_5

    .line 942
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 945
    :cond_5
    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_0
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 947
    :pswitch_1
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 950
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 956
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v2

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_1
    add-int v0, v2, v1

    .line 957
    .local v0, "newTop":I
    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 956
    .end local v0    # "newTop":I
    :cond_6
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v1, v1

    goto :goto_1

    .line 945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setParalaxOffset(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 452
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 455
    :cond_0
    return-void
.end method

.method public setShadowHeight(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 423
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 424
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 427
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    .line 392
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 5
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 1039
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v1

    .line 1044
    :cond_1
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 1045
    .local v0, "panelTop":I
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1047
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1048
    const/4 v1, 0x1

    goto :goto_0
.end method

.method updateObscuredViewVisibility()V
    .locals 17

    .prologue
    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 641
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 613
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v11, v15, v16

    .line 614
    .local v11, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    .line 615
    .local v13, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 620
    .local v2, "bottomBound":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v15}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 622
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 623
    .local v10, "right":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    .line 624
    .local v12, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 628
    .local v1, "bottom":I
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 629
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 630
    .local v5, "clampedChildLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 631
    .local v7, "clampedChildTop":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 632
    .local v6, "clampedChildRight":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 634
    .local v4, "clampedChildBottom":I
    if-lt v5, v8, :cond_2

    if-lt v7, v12, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v4, v1, :cond_2

    .line 636
    const/4 v14, 0x4

    .line 640
    .local v14, "vis":I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 626
    .end local v1    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "clampedChildBottom":I
    .end local v5    # "clampedChildLeft":I
    .end local v6    # "clampedChildRight":I
    .end local v7    # "clampedChildTop":I
    .end local v8    # "left":I
    .end local v10    # "right":I
    .end local v12    # "top":I
    .end local v14    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bottom":I
    move v12, v1

    .restart local v12    # "top":I
    move v10, v1

    .restart local v10    # "right":I
    move v8, v1

    .restart local v8    # "left":I
    goto :goto_1

    .line 638
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "clampedChildBottom":I
    .restart local v5    # "clampedChildLeft":I
    .restart local v6    # "clampedChildRight":I
    .restart local v7    # "clampedChildTop":I
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "vis":I
    goto :goto_2
.end method
