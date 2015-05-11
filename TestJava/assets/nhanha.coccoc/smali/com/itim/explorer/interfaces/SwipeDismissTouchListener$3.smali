.class Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method
