.class Lcom/itim/explorer/ui/MapActivity$5;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$5;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 758
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$5;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$2900(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->isOverScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$5;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$2900(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    # getter for: Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->access$1900()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 750
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$5;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;
    invoke-static {v0}, Lcom/itim/explorer/ui/MapActivity;->access$2900(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOverScrolled(Z)V

    .line 752
    :cond_0
    return-void
.end method
