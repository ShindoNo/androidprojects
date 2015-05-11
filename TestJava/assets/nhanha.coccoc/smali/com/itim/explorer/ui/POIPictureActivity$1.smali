.class Lcom/itim/explorer/ui/POIPictureActivity$1;
.super Ljava/lang/Object;
.source "POIPictureActivity.java"

# interfaces
.implements Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIPictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIPictureActivity;

.field final synthetic val$view:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIPictureActivity;Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/itim/explorer/ui/POIPictureActivity$1;->this$0:Lcom/itim/explorer/ui/POIPictureActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/POIPictureActivity$1;->val$view:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIPictureActivity$1;->val$view:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 34
    return-void
.end method
