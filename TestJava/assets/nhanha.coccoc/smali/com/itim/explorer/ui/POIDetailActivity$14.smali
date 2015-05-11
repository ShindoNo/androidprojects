.class Lcom/itim/explorer/ui/POIDetailActivity$14;
.super Landroid/os/AsyncTask;
.source "POIDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->postReview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isSuccess:Z

.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;

.field final synthetic val$postId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->val$postId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->isSuccess:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1055
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->val$postId:Ljava/lang/String;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;
    invoke-static {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1700(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/facebook/model/GraphUser;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;
    invoke-static {v2}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1700(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/facebook/model/GraphUser;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;
    invoke-static {v3}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1300(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/RatingBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mComment:Ljava/lang/String;
    invoke-static {v4}, Lcom/itim/explorer/ui/POIDetailActivity;->access$2200(Lcom/itim/explorer/ui/POIDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v5}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/itim/explorer/io/DataHandler;->reviewPOIPOST(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->isSuccess:Z

    .line 1065
    iget-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    new-instance v1, Lcom/itim/explorer/ui/POIDetailActivity$14$1;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/POIDetailActivity$14$1;-><init>(Lcom/itim/explorer/ui/POIDetailActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/POIDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1088
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    new-instance v1, Lcom/itim/explorer/ui/POIDetailActivity$14$2;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/POIDetailActivity$14$2;-><init>(Lcom/itim/explorer/ui/POIDetailActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/POIDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v6

    .line 1086
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1055
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$14;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 1092
    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->isSuccess:Z

    if-eqz v2, :cond_0

    .line 1095
    new-instance v1, Lcom/itim/explorer/io/LoadRating;

    new-instance v2, Lcom/itim/explorer/ui/POIDetailActivity$14$3;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/POIDetailActivity$14$3;-><init>(Lcom/itim/explorer/ui/POIDetailActivity$14;)V

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v3}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itim/explorer/io/LoadRating;-><init>(Lcom/itim/explorer/interfaces/ILoadRating;Ljava/lang/String;)V

    .line 1122
    .local v1, "loadRating":Lcom/itim/explorer/io/LoadRating;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_map_poi_hash"

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v3}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/itim/explorer/io/LoadRating;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1125
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;
    invoke-static {v2}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1300(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/RatingBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 1126
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->loadReviews()V
    invoke-static {v2}, Lcom/itim/explorer/ui/POIDetailActivity;->access$200(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 1129
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "loadRating":Lcom/itim/explorer/io/LoadRating;
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$14;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/POIDetailActivity;->onCancelReview()V

    goto :goto_0
.end method
