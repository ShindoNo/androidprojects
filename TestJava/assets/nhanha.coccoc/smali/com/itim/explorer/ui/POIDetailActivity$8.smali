.class Lcom/itim/explorer/ui/POIDetailActivity$8;
.super Landroid/widget/BaseAdapter;
.source "POIDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itim/explorer/ui/POIDetailActivity;->onPoiAction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itim/explorer/ui/POIDetailActivity;

.field final synthetic val$phones:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itim/explorer/ui/POIDetailActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    iput-object p2, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->val$phones:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->val$phones:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->val$phones:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 696
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 700
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 701
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$8;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity$8;->this$0:Lcom/itim/explorer/ui/POIDetailActivity;

    const v2, 0x1010040

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 704
    const/high16 v1, 0x41f00000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 705
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 706
    return-object v0
.end method
