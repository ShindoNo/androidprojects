.class Lcom/itim/explorer/ui/POIDetailActivity$14$3;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoadRating;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity$14;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity$14;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoadRating$Error;)V
    .locals 0
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoadRating$Error;

    .prologue
    .line 1120
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/itim/explorer/io/model/PoiRating;)V
    .locals 3
    .param p1, "rating"    # Lcom/itim/explorer/io/model/PoiRating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/itim/explorer/io/model/PoiRating;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/PoiRating;->getRating()F

    move-result v0

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/PoiRating;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/model/POI;->setRating(F)V

    .line 1103
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->tvRate:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1200(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v2, v2, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v2}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v2

    invoke-static {v2}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14$3;->this$1:Lcom/itim/explorer/ui/POIDetailActivity$14;

    iget-object v0, v0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    :cond_0
    return-void
.end method
