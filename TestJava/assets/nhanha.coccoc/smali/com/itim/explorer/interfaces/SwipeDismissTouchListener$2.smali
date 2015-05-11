.class Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


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

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->val$originalHeight:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mCallbacks:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$300(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;
    invoke-static {v2}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$200(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 251
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 252
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->val$originalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # getter for: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$100(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    return-void
.end method
