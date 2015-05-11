.class Lcom/itim/explorer/ui/MapActivity$4;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;


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
    .line 688
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 710
    const-string v0, "Panel anchored"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v1, 0x108002a

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelIcon(I)V
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MapActivity;->access$2800(Lcom/itim/explorer/ui/MapActivity;I)V

    .line 713
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 727
    const-string v0, "Panel collapsed"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v1, 0x7f0200f5

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelIcon(I)V
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MapActivity;->access$2800(Lcom/itim/explorer/ui/MapActivity;I)V

    .line 730
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 719
    const-string v0, "Panel expanded"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    const v1, 0x108002a

    # invokes: Lcom/itim/explorer/ui/MapActivity;->setPanelIcon(I)V
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/MapActivity;->access$2800(Lcom/itim/explorer/ui/MapActivity;I)V

    .line 722
    return-void
.end method

.method public onPanelHidden(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 734
    const-string v0, "Panel hidden"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 694
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 697
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->camerashift:I
    invoke-static {v2}, Lcom/itim/explorer/ui/MapActivity;->access$2700(Lcom/itim/explorer/ui/MapActivity;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 698
    .local v0, "mainViewOffset":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 700
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$600(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/MapWrapperLayout;->setTranslationY(F)V

    .line 705
    .end local v0    # "mainViewOffset":I
    :cond_0
    :goto_0
    return-void

    .line 702
    .restart local v0    # "mainViewOffset":I
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity$4;->this$0:Lcom/itim/explorer/ui/MapActivity;

    # getter for: Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    invoke-static {v1}, Lcom/itim/explorer/ui/MapActivity;->access$600(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    goto :goto_0
.end method
