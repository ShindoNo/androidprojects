.class Lcom/itim/explorer/ui/ReviewDialog$1;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/ReviewDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/ReviewDialog;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/ReviewDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/itim/explorer/ui/ReviewDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 6
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v4, p0, Lcom/itim/explorer/ui/ReviewDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z
    invoke-static {v4, v1}, Lcom/itim/explorer/ui/ReviewDialog;->access$002(Lcom/itim/explorer/ui/ReviewDialog;Z)Z

    .line 65
    iget-object v1, p0, Lcom/itim/explorer/ui/ReviewDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->mBtnRate:Landroid/widget/Button;
    invoke-static {v1}, Lcom/itim/explorer/ui/ReviewDialog;->access$200(Lcom/itim/explorer/ui/ReviewDialog;)Landroid/widget/Button;

    move-result-object v1

    iget-object v4, p0, Lcom/itim/explorer/ui/ReviewDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->isRatingBarFilled:Z
    invoke-static {v4}, Lcom/itim/explorer/ui/ReviewDialog;->access$000(Lcom/itim/explorer/ui/ReviewDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itim/explorer/ui/ReviewDialog$1;->this$0:Lcom/itim/explorer/ui/ReviewDialog;

    # getter for: Lcom/itim/explorer/ui/ReviewDialog;->isEdidCommentFilled:Z
    invoke-static {v4}, Lcom/itim/explorer/ui/ReviewDialog;->access$100(Lcom/itim/explorer/ui/ReviewDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "Rating bar change"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    return-void

    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move v1, v3

    .line 64
    goto :goto_0

    :cond_1
    move v2, v3

    .line 65
    goto :goto_1
.end method
