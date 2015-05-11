.class Lcom/github/amlcurran/showcaseview/ShowcaseView$1;
.super Ljava/lang/Object;
.source "ShowcaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

.field final synthetic val$animate:Z

.field final synthetic val$target:Lcom/github/amlcurran/showcaseview/targets/Target;


# direct methods
.method constructor <init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/targets/Target;Z)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->val$target:Lcom/github/amlcurran/showcaseview/targets/Target;

    iput-boolean p3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    # getter for: Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;
    invoke-static {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$000(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/ShotStateStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    # invokes: Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateBitmap()V
    invoke-static {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$100(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 149
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->val$target:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/targets/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 150
    .local v0, "targetPoint":Landroid/graphics/Point;
    if-eqz v0, :cond_2

    .line 151
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v2, 0x0

    # setter for: Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z
    invoke-static {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$202(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z

    .line 152
    iget-boolean v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->val$animate:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    # getter for: Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;
    invoke-static {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$300(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/AnimationFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-interface {v1, v2, v0}, Lcom/github/amlcurran/showcaseview/AnimationFactory;->animateTargetToPoint(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V

    .line 163
    .end local v0    # "targetPoint":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "targetPoint":Landroid/graphics/Point;
    :cond_1
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(Landroid/graphics/Point;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v2, 0x1

    # setter for: Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z
    invoke-static {v1, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$202(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z

    .line 159
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;->this$0:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    goto :goto_0
.end method
