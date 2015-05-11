.class public Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;,
        Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

.field private mDismissAnimationRefCount:I

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "callbacks"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v1, 0x1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 134
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 135
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mSlop:I

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    .line 138
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mAnimationTime:J

    .line 140
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    .line 141
    iput-object p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    .prologue
    .line 83
    iget v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    .prologue
    .line 83
    iget v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

    return-object v0
.end method

.method private performDismiss(Landroid/view/View;I)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v5, 0x1

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 332
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 334
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 336
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    new-instance v3, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;

    invoke-direct {v3, p0, v2}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 368
    new-instance v3, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$4;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 376
    iget-object v3, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    new-instance v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 378
    return-void
.end method


# virtual methods
.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$1;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 181
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 307
    :cond_1
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    .line 183
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 184
    const/16 v18, 0x0

    goto :goto_1

    .line 190
    :cond_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 192
    .local v6, "childCount":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 193
    .local v13, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v13, v19

    sub-int v16, v18, v19

    .line 195
    .local v16, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v13, v19

    sub-int v17, v18, v19

    .line 197
    .local v17, "y":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v6, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 199
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 200
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 201
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 206
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownX:F

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;->canDismiss(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 210
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 217
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 197
    .restart local v5    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 213
    .end local v5    # "child":Landroid/view/View;
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 221
    .end local v6    # "childCount":I
    .end local v12    # "i":I
    .end local v13    # "listViewCoords":[I
    .end local v14    # "rect":Landroid/graphics/Rect;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v19, v0

    sub-float v7, v18, v19

    .line 226
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 229
    .local v15, "velocityX":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 230
    .local v2, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 231
    .local v3, "absVelocityY":F
    const/4 v8, 0x0

    .line 232
    .local v8, "dismiss":Z
    const/4 v9, 0x0

    .line 233
    .local v9, "dismissRight":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    .line 234
    const/4 v8, 0x1

    .line 235
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-lez v18, :cond_8

    const/4 v9, 0x1

    .line 242
    :cond_7
    :goto_4
    if-eqz v8, :cond_f

    .line 244
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 245
    .local v11, "downView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 246
    .local v10, "downPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v19

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v10}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;-><init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    invoke-virtual/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 267
    .end local v10    # "downPosition":I
    .end local v11    # "downView":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 268
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 269
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownX:F

    .line 270
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 271
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 272
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 235
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 236
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v2

    if-gtz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v2, v18

    if-gtz v18, :cond_7

    cmpg-float v18, v3, v2

    if-gez v18, :cond_7

    .line 239
    const/16 v18, 0x0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_a

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_7
    const/16 v18, 0x0

    cmpg-float v18, v7, v18

    if-gez v18, :cond_b

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v8, 0x1

    .line 240
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    const/4 v9, 0x1

    :goto_a
    goto/16 :goto_4

    .line 239
    :cond_a
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    goto :goto_9

    .line 240
    :cond_d
    const/4 v9, 0x0

    goto :goto_a

    .line 248
    .restart local v10    # "downPosition":I
    .restart local v11    # "downView":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_5

    .line 261
    .end local v10    # "downPosition":I
    .end local v11    # "downView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f800000

    invoke-virtual/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 277
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v7    # "deltaX":F
    .end local v8    # "dismiss":Z
    .end local v9    # "dismissRight":Z
    .end local v15    # "velocityX":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v19, v0

    sub-float v7, v18, v19

    .line 283
    .restart local v7    # "deltaX":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_10

    .line 284
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mSwiping:Z

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 288
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 289
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    or-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 296
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000

    const/high16 v21, 0x3f800000

    const/high16 v22, 0x40000000

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 302
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPaused:Z

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
