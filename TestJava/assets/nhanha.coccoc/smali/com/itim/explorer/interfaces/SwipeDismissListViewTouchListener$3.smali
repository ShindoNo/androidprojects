.class Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;I)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    iput p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 339
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # --operator for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$106(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)I

    .line 340
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)I

    move-result v5

    if-nez v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 345
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 346
    .local v0, "dismissPositions":[I
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 347
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;

    iget v5, v5, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    aput v5, v0, v1

    .line 346
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$400(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$300(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 352
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;

    .line 356
    .local v4, "pendingDismiss":Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;
    iget-object v5, v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 357
    iget-object v5, v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 358
    iget-object v5, v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 359
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    iget-object v5, v4, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 363
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pendingDismiss":Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$PendingDismissData;
    :cond_1
    iget-object v5, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 365
    .end local v0    # "dismissPositions":[I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
