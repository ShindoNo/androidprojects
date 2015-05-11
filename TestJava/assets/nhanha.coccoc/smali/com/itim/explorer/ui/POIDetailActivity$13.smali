.class Lcom/itim/explorer/ui/POIDetailActivity$13;
.super Landroid/os/AsyncTask;
.source "POIDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->onReportProblem(ILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$selectedProblem:I


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    iput p2, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->val$selectedProblem:I

    iput-object p3, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1016
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;
    invoke-static {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v1

    iget v2, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->val$selectedProblem:I

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$13;->val$message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/itim/explorer/io/DataHandler;->reportProblem(IILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1016
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$13;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1020
    return-void
.end method
