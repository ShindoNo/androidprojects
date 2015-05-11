.class Lcom/itim/explorer/ui/widget/LoadMoreListView$1;
.super Ljava/lang/Object;
.source "LoadMoreListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/widget/LoadMoreListView;->setupAdvBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/widget/LoadMoreListView;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/widget/LoadMoreListView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/itim/explorer/ui/widget/LoadMoreListView$1;->this$0:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/AdvUtil;->onBannerClick(Landroid/content/Context;)V

    .line 105
    return-void
.end method
