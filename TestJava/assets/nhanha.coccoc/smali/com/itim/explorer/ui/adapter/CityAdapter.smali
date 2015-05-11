.class public Lcom/itim/explorer/ui/adapter/CityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/itim/explorer/io/model/CityBorder;",
        ">;"
    }
.end annotation


# instance fields
.field private filter:Landroid/widget/Filter;

.field locale:Ljava/util/Locale;

.field private mCities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;"
        }
    .end annotation
.end field

.field private mCitiesAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;"
        }
    .end annotation
.end field

.field private mCities_result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewResID"    # I
    .param p3, "tvResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/CityBorder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p4, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/CityBorder;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->locale:Ljava/util/Locale;

    .line 108
    new-instance v2, Lcom/itim/explorer/ui/adapter/CityAdapter$1;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/adapter/CityAdapter$1;-><init>(Lcom/itim/explorer/ui/adapter/CityAdapter;)V

    iput-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->filter:Landroid/widget/Filter;

    .line 27
    iput-object p4, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    .line 28
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/CityBorder;

    .line 31
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itim/explorer/util/AccentRemover;->removeAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itim/explorer/io/model/CityBorder;->setNameNoSign(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v0    # "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCitiesAll:Ljava/util/ArrayList;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities_result:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/adapter/CityAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CityAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities_result:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/adapter/CityAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/CityAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCitiesAll:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/itim/explorer/io/model/CityBorder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/CityBorder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/adapter/CityAdapter;->getItem(I)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v0, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;-><init>(Lcom/itim/explorer/ui/adapter/CityAdapter$1;)V

    .line 89
    .local v0, "holder":Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
    const v1, 0x7f0b0148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->name:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->access$102(Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    # getter for: Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;->access$100(Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/CityAdapter;->mCities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/CityBorder;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object p2

    .line 93
    .end local v0    # "holder":Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;

    .restart local v0    # "holder":Lcom/itim/explorer/ui/adapter/CityAdapter$CityHolder;
    goto :goto_0
.end method
