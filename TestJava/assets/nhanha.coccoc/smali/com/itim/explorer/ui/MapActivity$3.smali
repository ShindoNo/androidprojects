.class Lcom/itim/explorer/ui/MapActivity$3;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/MapActivity;->setupBottomSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/MapActivity;

.field final synthetic val$panel:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$3;->this$0:Lcom/itim/explorer/ui/MapActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/MapActivity$3;->val$panel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 675
    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->access$1900()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$3;->val$panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->access$1900()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setEnabled(Z)V

    .line 676
    :cond_0
    return-void
.end method
