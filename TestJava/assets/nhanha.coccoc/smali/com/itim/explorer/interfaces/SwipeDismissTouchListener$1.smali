.class Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$1;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener$1;->this$0:Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;

    # invokes: Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->performDismiss()V
    invoke-static {v0}, Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;->access$000(Lcom/itim/explorer/interfaces/SwipeDismissTouchListener;)V

    .line 179
    return-void
.end method
