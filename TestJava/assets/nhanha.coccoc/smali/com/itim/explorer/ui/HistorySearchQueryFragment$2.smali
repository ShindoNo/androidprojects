.class Lcom/itim/explorer/ui/HistorySearchQueryFragment$2;
.super Ljava/lang/Object;
.source "HistorySearchQueryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/HistorySearchQueryFragment;->initData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$2;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/itim/explorer/ui/HistorySearchQueryFragment$2;->this$0:Lcom/itim/explorer/ui/HistorySearchQueryFragment;

    # getter for: Lcom/itim/explorer/ui/HistorySearchQueryFragment;->mFirstHint:Landroid/view/View;
    invoke-static {v0}, Lcom/itim/explorer/ui/HistorySearchQueryFragment;->access$300(Lcom/itim/explorer/ui/HistorySearchQueryFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method
