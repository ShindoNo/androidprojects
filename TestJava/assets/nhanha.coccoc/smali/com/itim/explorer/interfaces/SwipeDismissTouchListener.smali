.class public Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v1, 0x1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 115
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mSlop:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mAnimationTime:J

    .line 120
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 121
    iput-object p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 122
    iput-object p3, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

    return-object v0
.end method

.method private performDismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 238
    iget-object v3, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 239
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 241
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 243
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    new-instance v3, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 257
    new-instance v3, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;

    invoke-direct {v3, p0, v1}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 266
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 130
    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 131
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 230
    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 137
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mDownX:F

    .line 138
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v7, v8}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 140
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 142
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    const/4 v7, 0x0

    goto :goto_1

    .line 147
    :pswitch_1
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v7, v8

    .line 152
    .local v3, "deltaX":F
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 154
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 155
    .local v6, "velocityX":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 156
    .local v0, "absVelocityX":F
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 157
    .local v1, "absVelocityY":F
    const/4 v4, 0x0

    .line 158
    .local v4, "dismiss":Z
    const/4 v5, 0x0

    .line 159
    .local v5, "dismissRight":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 160
    const/4 v4, 0x1

    .line 161
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_4

    const/4 v5, 0x1

    .line 168
    :cond_3
    :goto_2
    if-eqz v4, :cond_b

    .line 171
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v8

    if-eqz v5, :cond_a

    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v7, v7

    :goto_3
    invoke-virtual {v8, v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v7, v8, v9}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$1;

    invoke-direct {v8, p0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$1;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)V

    invoke-virtual {v7, v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 190
    :goto_4
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 191
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 192
    const/4 v7, 0x0

    iput v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mTranslationX:F

    .line 193
    const/4 v7, 0x0

    iput v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mDownX:F

    .line 194
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 161
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 162
    :cond_5
    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_3

    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_3

    cmpg-float v7, v1, v0

    if-gez v7, :cond_3

    .line 165
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    const/4 v7, 0x1

    move v8, v7

    :goto_5
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_7

    const/4 v7, 0x1

    :goto_6
    if-ne v8, v7, :cond_8

    const/4 v4, 0x1

    .line 166
    :goto_7
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    const/4 v5, 0x1

    :goto_8
    goto :goto_2

    .line 165
    :cond_6
    const/4 v7, 0x0

    move v8, v7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    .line 166
    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    .line 171
    :cond_a
    iget v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v7, v7

    int-to-float v7, v7

    goto :goto_3

    .line 184
    :cond_b
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {v7}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000

    invoke-virtual {v7, v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v7, v8, v9}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_4

    .line 199
    .end local v0    # "absVelocityX":F
    .end local v1    # "absVelocityY":F
    .end local v3    # "deltaX":F
    .end local v4    # "dismiss":Z
    .end local v5    # "dismissRight":Z
    .end local v6    # "velocityX":F
    :pswitch_2
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 203
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mDownX:F

    sub-float v3, v7, v8

    .line 205
    .restart local v3    # "deltaX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 206
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mSwiping:Z

    .line 207
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 211
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x3

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 213
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 214
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 217
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_c
    iget-boolean v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v7, :cond_1

    .line 218
    iput v3, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mTranslationX:F

    .line 220
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-static {v7, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 223
    iget-object v7, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x40000000

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 225
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
