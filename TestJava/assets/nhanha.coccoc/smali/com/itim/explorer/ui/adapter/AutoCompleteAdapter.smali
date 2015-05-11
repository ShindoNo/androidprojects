.class public Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoad:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainActivity:Lcom/itim/explorer/interfaces/GetLocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/itim/explorer/interfaces/GetLocationListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "mListener"    # Lcom/itim/explorer/interfaces/GetLocationListener;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    .line 48
    iput-object p3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mMainActivity:Lcom/itim/explorer/interfaces/GetLocationListener;

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mLoad:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Lcom/itim/explorer/interfaces/GetLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mMainActivity:Lcom/itim/explorer/interfaces/GetLocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;-><init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;)V

    .line 169
    .local v0, "myFilter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/POI;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    .line 62
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
    .line 35
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->getItem(I)Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 176
    :cond_0
    if-nez p2, :cond_2

    .line 177
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040043

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 179
    new-instance v1, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;-><init>(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$1;)V

    .line 180
    .local v1, "holder":Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    const v3, 0x7f0b00fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
    invoke-static {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$502(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;)Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .line 182
    const v3, 0x7f0b00fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->name:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$602(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 184
    const v3, 0x7f0b00fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->address:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$702(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 186
    const v3, 0x7f0b0100

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$802(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 188
    const v3, 0x7f0b00ff

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->rating:Landroid/widget/TextView;
    invoke-static {v1, v3}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$902(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    :goto_0
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 195
    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/model/POI;

    .line 206
    .local v2, "poi":Lcom/itim/explorer/io/model/POI;
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->icon:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$500(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setDefaultImageResId(I)V

    .line 208
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->name:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$600(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->address:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$700(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->rating:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$900(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v6

    invoke-static {v6}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v3

    float-to-double v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    const/4 v0, 0x1

    .line 212
    .local v0, "distanceisavaliable":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L

    cmpg-double v3, v5, v7

    if-gez v3, :cond_4

    .line 214
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$800(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v6

    invoke-static {v6}, Lcom/itim/explorer/util/Util;->metersDecFormat(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_2
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$800(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    .end local v0    # "distanceisavaliable":Z
    .end local v1    # "holder":Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    .end local v2    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_1
    :goto_3
    return-object p2

    .line 192
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;

    .restart local v1    # "holder":Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;
    goto/16 :goto_0

    .restart local v2    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_3
    move v0, v4

    .line 211
    goto :goto_1

    .line 215
    .restart local v0    # "distanceisavaliable":Z
    :cond_4
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$800(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v6

    invoke-static {v6}, Lcom/itim/explorer/util/Util;->kmDecFormat(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " km"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 218
    :cond_5
    # getter for: Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->distance:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;->access$800(Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter$POIHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
