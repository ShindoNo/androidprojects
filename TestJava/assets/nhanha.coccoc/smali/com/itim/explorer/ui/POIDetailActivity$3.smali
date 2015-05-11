.class Lcom/itim/explorer/ui/POIDetailActivity$3;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/ILoad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
    .locals 2
    .param p1, "error"    # Lcom/itim/explorer/interfaces/ILoad$Error;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v1, v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$102(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/itim/explorer/io/model/POI;)Lcom/itim/explorer/io/model/POI;

    .line 206
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->loadReviews()V
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$200(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 207
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->updateAllViews()V
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$300(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 208
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$3;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method
