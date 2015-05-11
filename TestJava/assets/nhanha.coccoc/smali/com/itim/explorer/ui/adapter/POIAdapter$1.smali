.class Lcom/itim/explorer/ui/adapter/POIAdapter$1;
.super Ljava/lang/Object;
.source "POIAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/adapter/POIAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/adapter/POIAdapter;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/adapter/POIAdapter;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/POIAdapter$1;->this$0:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/AdvUtil;->onIconClick(Landroid/content/Context;)V

    .line 120
    return-void
.end method
