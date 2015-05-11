.class public Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsersPOIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isShowItemCategory"    # Z
    .param p4, "isShowDistance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/UsersPOI;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/UsersPOI;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->getItem(I)Lcom/itim/explorer/io/model/UsersPOI;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/UsersPOI;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 64
    if-nez p2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040043

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;

    invoke-direct {v0}, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;-><init>()V

    .line 68
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;
    const v2, 0x7f0b00fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .line 70
    const v2, 0x7f0b00fe

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->name:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0b00fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->address:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f0b0100

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f0b00ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->rating:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/UsersPOI;

    .line 84
    .local v1, "poi":Lcom/itim/explorer/io/model/UsersPOI;
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getCategory()I

    move-result v3

    invoke-static {v3}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setDefaultImageResId(I)V

    .line 86
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;->rating:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;
    .end local v1    # "poi":Lcom/itim/explorer/io/model/UsersPOI;
    :cond_0
    return-object p2

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/UsersPOIAdapter$POIHolder;
    goto :goto_0
.end method

.method public setPOIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/UsersPOI;>;"
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->mPOIs:Ljava/util/List;

    .line 97
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method
