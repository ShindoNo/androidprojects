.class public Lcom/itim/explorer/ui/POIListSliderFragment;
.super Lcom/itim/explorer/ui/BaseFragment;
.source "POIListSliderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ARG_IS_LOADMORE:Ljava/lang/String; = "arg_is_load_more"

.field public static final ARG_TITLE:Ljava/lang/String; = "arg_title"


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

.field private mCurrentItemIndex:I

.field private mCurrentPOI:Lcom/itim/explorer/io/model/POI;

.field private mIsLoadMore:Z

.field private mIsShowAdv:Z

.field private mIsShowCategoryIcon:Z

.field private mItemCountToLoad:I

.field private mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

.field private mParams:Landroid/os/Bundle;

.field private mPois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragment;-><init>()V

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mItemCountToLoad:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowAdv:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/POIAdapter;->setPOIs(Ljava/util/List;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setSelection(I)V

    .line 315
    :cond_1
    return-void

    .line 307
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getItemHeightofListView(I)I
    .locals 7
    .param p1, "items"    # I

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v4, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 286
    .local v3, "mAdapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    .line 291
    .local v2, "listviewElementsHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 293
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-interface {v3, v1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "childView":Landroid/view/View;
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    return v2
.end method

.method public getItemView()Landroid/view/View;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 151
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    .line 153
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v2, "extra_map_category_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowCategoryIcon:Z

    .line 155
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 156
    .local v6, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "arg_is_load_more"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsLoadMore:Z

    .line 158
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowCategoryIcon:Z

    .line 161
    :goto_1
    const/4 v4, 0x1

    .line 163
    .local v4, "showDistance":Z
    iput-boolean v5, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowAdv:Z

    .line 164
    new-instance v0, Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowCategoryIcon:Z

    invoke-direct/range {v0 .. v5}, Lcom/itim/explorer/ui/adapter/POIAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZZ)V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    .line 165
    return-void

    .end local v4    # "showDistance":Z
    .end local v6    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move v0, v1

    .line 153
    goto :goto_0

    .line 160
    .restart local v6    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iput-boolean v5, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsLoadMore:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 42
    const v2, 0x7f040051

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->setTitle()V

    .line 57
    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 59
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->onLoadMoreComplete()V

    .line 64
    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mIsShowCategoryIcon:Z

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    .local v0, "padding":I
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3, v5, v0, v0}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setPadding(IIII)V

    .line 73
    .end local v0    # "padding":I
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    .line 175
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "Map screen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v2, "Position"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v2, "Select POI on panel"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mCurrentPOI:Lcom/itim/explorer/io/model/POI;

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mCurrentPOI:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "poiIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v3}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p3, v3

    if-le v2, v3, :cond_0

    .line 228
    const-string v3, "extra_map_poi"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v4}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v2, "list_poi"

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 231
    const-string v3, "extra_map_location"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/MapActivity;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public setCurrentPOI(Lcom/itim/explorer/io/model/POI;)V
    .locals 0
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mCurrentPOI:Lcom/itim/explorer/io/model/POI;

    .line 196
    return-void
.end method

.method public setPOIs(Ljava/util/List;I)V
    .locals 2
    .param p2, "currentItemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mAdapter:Lcom/itim/explorer/ui/adapter/POIAdapter;

    iget-object v1, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/adapter/POIAdapter;->setPOIs(Ljava/util/List;)V

    .line 187
    :cond_0
    iput p2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mCurrentItemIndex:I

    .line 189
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mLvPOIs:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setSelection(I)V

    .line 192
    :cond_1
    return-void

    .line 181
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mPois:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setTitle()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const-wide/high16 v9, 0x3fe0000000000000L

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 237
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    .line 238
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v3, "extra_screen_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v3, "extra_map_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "categoryIcon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v3, "extra_map_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 259
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v4, "extra_screen_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v4, "extra_map_category_id"

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v9

    double-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v9

    double-to-int v3, v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 275
    .end local v1    # "categoryIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v1    # "categoryIcon":Landroid/graphics/drawable/Drawable;
    :sswitch_0
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    const v3, 0x7f0e0145

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v6, "extra_screen_title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/itim/explorer/ui/POIListSliderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->mParams:Landroid/os/Bundle;

    const-string v3, "extra_map_category_id"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, "category":I
    if-eq v0, v11, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v9

    double-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v9

    double-to-int v3, v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 255
    .end local v0    # "category":I
    :sswitch_1
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    const v3, 0x7f0e0146

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/POIListSliderFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 267
    .end local v1    # "categoryIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "arg_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIListSliderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "arg_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/itim/explorer/ui/POIListSliderFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
