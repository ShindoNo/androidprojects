.class Lcom/itim/explorer/ui/POIDetailActivity$11;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->publishStory()V
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
    .line 854
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    const v4, 0x7f0e0137

    const/4 v5, 0x0

    .line 856
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    if-nez v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 860
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/POIDetailActivity;->onCancelReview()V

    .line 884
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 864
    .local v1, "graphResponse":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 866
    .local v2, "postId":Ljava/lang/String;
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 870
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 871
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_1

    .line 872
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 875
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/POIDetailActivity;->onCancelReview()V

    goto :goto_0

    .line 877
    :cond_1
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const v4, 0x7f0e0134

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 880
    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity$11;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->postReview(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/itim/explorer/ui/POIDetailActivity;->access$2100(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
