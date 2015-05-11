.class Lcom/itim/explorer/ui/POIDetailActivity$10;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
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
    .line 782
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 3
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;
    invoke-static {v0, p1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1702(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;

    .line 787
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1700(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/facebook/model/GraphUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # getter for: Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1800(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->isReviewed()Z
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1900(Lcom/itim/explorer/ui/POIDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # invokes: Lcom/itim/explorer/ui/POIDetailActivity;->openDialogRate()V
    invoke-static {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->access$2000(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1802(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;)Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 796
    :cond_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$10;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
