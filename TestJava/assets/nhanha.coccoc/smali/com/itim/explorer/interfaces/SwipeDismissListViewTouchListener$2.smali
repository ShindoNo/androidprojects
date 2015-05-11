.class Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

.field final synthetic val$downPosition:I

.field final synthetic val$downView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    iput-object p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->val$downView:Landroid/view/View;

    iput p3, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->val$downPosition:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->val$downView:Landroid/view/View;

    iget v2, p0, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener$2;->val$downPosition:I

    # invokes: Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;->access$000(Lcom/itim/explorer/interfaces/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    .line 256
    return-void
.end method
