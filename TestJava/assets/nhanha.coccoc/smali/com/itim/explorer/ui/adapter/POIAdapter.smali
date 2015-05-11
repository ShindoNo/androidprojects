.class public Lcom/itim/explorer/ui/adapter/POIAdapter;
.super Landroid/widget/BaseAdapter;
.source "POIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;
    }
.end annotation


# instance fields
.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsShowAdv:Z

.field private mIsShowDistance:Z

.field private mIsShowItemCategory:Z

.field private mPOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isShowItemCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-boolean p3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowItemCategory:Z

    .line 40
    iput-boolean v1, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowDistance:Z

    .line 41
    iput-boolean v1, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowAdv:Z

    .line 42
    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 44
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
            "Lcom/itim/explorer/io/model/POI;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-boolean p3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowItemCategory:Z

    .line 53
    iput-boolean p4, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowDistance:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowAdv:Z

    .line 55
    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isShowItemCategory"    # Z
    .param p4, "isShowDistance"    # Z
    .param p5, "isShowAdv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-boolean p3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowItemCategory:Z

    .line 65
    iput-boolean p4, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowDistance:Z

    .line 66
    iput-boolean p5, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowAdv:Z

    .line 67
    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 68
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/POI;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

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
    .line 24
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/POIAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 94
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040043

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;

    invoke-direct {v0}, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;-><init>()V

    .line 100
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;
    const v3, 0x7f0b00fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .line 102
    const v3, 0x7f0b00fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->name:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0b00fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->address:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f0b0100

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f0b00ff

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->rating:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0b00fb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconCategory:Landroid/widget/ImageView;

    .line 112
    const v3, 0x7f0b00fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconAdv:Landroid/widget/ImageView;

    .line 114
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconAdv:Landroid/widget/ImageView;

    new-instance v4, Lcom/itim/explorer/ui/adapter/POIAdapter$1;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/adapter/POIAdapter$1;-><init>(Lcom/itim/explorer/ui/adapter/POIAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconAdv:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/model/POI;

    .line 129
    .local v2, "poi":Lcom/itim/explorer/io/model/POI;
    iget-boolean v3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowItemCategory:Z

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconCategory:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v4

    invoke-static {v4}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconCategory:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v3, v4, v5}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 136
    invoke-static {v2}, Lcom/itim/explorer/util/AdvUtil;->getIconID(Lcom/itim/explorer/io/model/POI;)I

    move-result v1

    .line 137
    .local v1, "iconId":I
    if-ltz v1, :cond_1

    .line 138
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconAdv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->iconAdv:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_1
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->rating:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-boolean v3, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mIsShowDistance:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 145
    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 146
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/util/Util;->metersDecFormat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;
    .end local v1    # "iconId":I
    .end local v2    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_2
    :goto_1
    return-object p2

    .line 148
    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;
    .restart local v1    # "iconId":I
    .restart local v2    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_3
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/util/Util;->kmDecFormat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "km)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIAdapter$POIHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPOIs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/POIAdapter;->mPOIs:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/itim/explorer/ui/adapter/POIAdapter;->notifyDataSetChanged()V

    .line 161
    return-void
.end method
