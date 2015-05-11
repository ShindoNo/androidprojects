.class public Lcom/itim/explorer/ui/CategoryFragmentNoGrid;
.super Lcom/itim/explorer/ui/BaseFragment;
.source "CategoryFragmentNoGrid.java"


# instance fields
.field private mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/MainActivityListener;

    iput-object v0, p0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->setHasOptionsMenu(Z)V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f04003d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itim/explorer/util/UIUtil;->setRobotoFont(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    const v2, 0x7f0b00f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "firstHint":Landroid/view/View;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/itim/explorer/util/UIUtil;->firstShowHintMain(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    new-instance v2, Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;

    invoke-direct {v2, p0, v0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid$1;-><init>(Lcom/itim/explorer/ui/CategoryFragmentNoGrid;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 64
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragment;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->mMainActivity:Lcom/itim/explorer/interfaces/MainActivityListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/itim/explorer/interfaces/MainActivityListener;->setDrawerSelected(I)V

    .line 31
    return-void
.end method
