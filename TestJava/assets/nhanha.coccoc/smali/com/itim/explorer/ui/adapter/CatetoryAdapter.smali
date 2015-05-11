.class public Lcom/itim/explorer/ui/adapter/CatetoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CatetoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/CatetoryAdapter$1;,
        Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    }
.end annotation


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/Category;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/Category;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Category;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->getItem(I)Lcom/itim/explorer/io/model/Category;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Category;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;-><init>(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$1;)V

    .line 51
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    const v1, 0x7f0b00f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    # setter for: Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->access$102(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f0b00f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->name:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->access$202(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    # getter for: Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->access$100(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/Category;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    # getter for: Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;->access$200(Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/Category;

    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object p2

    .line 57
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/CatetoryAdapter$CateHolder;
    goto :goto_0
.end method
