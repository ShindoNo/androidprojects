.class Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;
.super Ljava/lang/Object;
.source "CategoryFragmentNoGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

.field final synthetic val$firstHint:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/CategoryFragmentNoGrid;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;->this$0:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    iput-object p2, p0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;->val$firstHint:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;->val$firstHint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-void
.end method
