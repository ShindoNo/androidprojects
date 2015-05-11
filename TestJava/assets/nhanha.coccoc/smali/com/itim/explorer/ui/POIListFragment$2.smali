.class Lcom/itim/explorer/ui/POIListFragment$2;
.super Ljava/lang/Object;
.source "POIListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIListFragment;->initData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIListFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIListFragment;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/itim/explorer/ui/POIListFragment$2;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListFragment$2;->this$0:Lcom/itim/explorer/ui/POIListFragment;

    # getter for: Lcom/itim/explorer/ui/POIListFragment;->mFirstHint:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/POIListFragment;->access$400(Lcom/itim/explorer/ui/POIListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    return-void
.end method
