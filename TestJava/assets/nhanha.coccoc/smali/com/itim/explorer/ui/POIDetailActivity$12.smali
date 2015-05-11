.class Lcom/itim/explorer/ui/POIDetailActivity$12;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->checkCanReview()Z
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
    .line 926
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$12;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 1
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$12;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;
    invoke-static {v0, p1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$1702(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;

    .line 933
    return-void
.end method
