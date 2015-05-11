.class public Lcom/itim/explorer/ui/HistoryFragment;
.super Lcom/itim/explorer/ui/BaseFragment;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/itim/explorer/interfaces/IFragmentHistory;


# static fields
.field private static final MENU_ITEM_ID_DELETE_ALL:I = 0x107


# instance fields
.field private mHistoryAdapter:Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

.field private mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

.field private mTabs:Lcom/astuetz/PagerSlidingTabStrip;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 124
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/MainActivityListener;

    iput-object v0, p0, Lcom/itim/explorer/ui/HistoryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/HistoryFragment;->setHasOptionsMenu(Z)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/16 v2, 0x107

    const/4 v1, 0x0

    .line 92
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    const v0, 0x7f0e0098

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b00f7

    const/4 v4, 0x0

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 48
    const v2, 0x7f04003f

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/HackyViewPager;

    iput-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    :goto_0
    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mTabs:Lcom/astuetz/PagerSlidingTabStrip;

    .line 59
    new-instance v2, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mHistoryAdapter:Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

    .line 62
    iget-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/itim/explorer/ui/HistoryFragment;->mHistoryAdapter:Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    const/4 v2, 0x1

    const/high16 v3, 0x40800000

    invoke-virtual {p0}, Lcom/itim/explorer/ui/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 66
    .local v0, "pageMargin":I
    iget-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 68
    iget-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mTabs:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 69
    return-object v1

    .line 53
    .end local v0    # "pageMargin":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const v2, 0x7f040040

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/ui/widget/NonSwipeableViewPager;

    iput-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "History screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "Button"

    const-string v2, "Clear All"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "Press screen button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    iget-object v1, p0, Lcom/itim/explorer/ui/HistoryFragment;->mHistoryAdapter:Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

    iget-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->deleteAllItems(I)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x107
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v3, 0x107

    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/itim/explorer/ui/HistoryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v2}, Lcom/itim/explorer/interfaces/MainActivityListener;->isDrawerShowing()Z

    move-result v0

    .line 81
    .local v0, "drawerOpen":Z
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 88
    return-void

    .line 84
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/HistoryFragment;->mHistoryAdapter:Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;

    iget-object v4, p0, Lcom/itim/explorer/ui/HistoryFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itim/explorer/ui/adapter/HistoryFragmentAdapter;->getItemCount(I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/itim/explorer/ui/HistoryFragment;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/MainActivityListener;->setDrawerSelected(I)V

    .line 76
    return-void
.end method
