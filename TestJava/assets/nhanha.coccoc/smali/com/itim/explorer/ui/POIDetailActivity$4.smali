.class Lcom/itim/explorer/ui/POIDetailActivity$4;
.super Ljava/lang/Object;
.source "POIDetailActivity.java"

# interfaces
.implements Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->updateAllViews()V
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
    .line 292
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$4;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$4;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/itim/explorer/ui/POIDetailActivity;->mCanSeePhoto:Z
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/POIDetailActivity;->access$602(Lcom/itim/explorer/ui/POIDetailActivity;Z)Z

    .line 297
    return-void
.end method
