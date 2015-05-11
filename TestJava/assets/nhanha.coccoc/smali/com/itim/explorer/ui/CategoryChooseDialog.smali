.class public Lcom/itim/explorer/ui/CategoryChooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CategoryChooseDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCityAdapter:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

.field private mILoadCategoryBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

.field private mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

.field private mLvPOIs:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/itim/explorer/ui/CategoryChooseDialog$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/CategoryChooseDialog$1;-><init>(Lcom/itim/explorer/ui/CategoryChooseDialog;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mILoadCategoryBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/CategoryChooseDialog;)Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CategoryChooseDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/CategoryChooseDialog;Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;)Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/CategoryChooseDialog;
    .param p1, "x1"    # Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CategorySpinnerAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/CategoryChooseDialog;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CategoryChooseDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/itim/explorer/ui/CategoryChooseDialog;->setStyle(II)V

    .line 34
    new-instance v0, Lcom/itim/explorer/io/LoadCategory;

    iget-object v1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mILoadCategoryBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/CategoryChooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/io/LoadCategory;-><init>(Lcom/itim/explorer/interfaces/ILoadCategory;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadCategory;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v2, 0x7f040038

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v2, 0x7f0b00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    .line 43
    iget-object v2, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    const v2, 0x7f0b00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "tv":Landroid/widget/TextView;
    const v2, 0x7f0e0032

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 53
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/Category;

    .line 54
    .local v0, "category":Lcom/itim/explorer/io/model/Category;
    iget-object v1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    invoke-interface {v1, v0}, Lcom/itim/explorer/interfaces/AddPOIActivityListener;->updateCategory(Lcom/itim/explorer/io/model/Category;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setmListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/itim/explorer/ui/CategoryChooseDialog;->mListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .line 81
    return-void
.end method
