.class public Lcom/itim/explorer/ui/CityChooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CityChooseDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ARG_NOT_SET_CURRENT_CITY:Ljava/lang/String; = "arg_not_set_current_city"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddPOIListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

.field private mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;

.field private mEdtTypeCity:Landroid/widget/EditText;

.field private mILoadCityBorder:Lcom/itim/explorer/interfaces/ILoadCityBorder;

.field private mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

.field private mLvPOIs:Landroid/widget/ListView;

.field private mNotSetCurrentCity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/itim/explorer/ui/CityChooseDialog$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/CityChooseDialog$1;-><init>(Lcom/itim/explorer/ui/CityChooseDialog;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mILoadCityBorder:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CityChooseDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/CityChooseDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CityChooseDialog;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mNotSetCurrentCity:Z

    return v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/CityChooseDialog;)Lcom/itim/explorer/ui/adapter/CityAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CityChooseDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/itim/explorer/ui/CityChooseDialog;Lcom/itim/explorer/ui/adapter/CityAdapter;)Lcom/itim/explorer/ui/adapter/CityAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/CityChooseDialog;
    .param p1, "x1"    # Lcom/itim/explorer/ui/adapter/CityAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/CityChooseDialog;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/CityChooseDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 115
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 120
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    iput-object p1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/itim/explorer/ui/CityChooseDialog;->setStyle(II)V

    .line 54
    invoke-virtual {p0}, Lcom/itim/explorer/ui/CityChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/CityChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "arg_not_set_current_city"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mNotSetCurrentCity:Z

    .line 56
    new-instance v0, Lcom/itim/explorer/io/LoadCityBorder;

    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mILoadCityBorder:Lcom/itim/explorer/interfaces/ILoadCityBorder;

    iget-object v3, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v3}, Lcom/itim/explorer/io/LoadCityBorder;-><init>(Lcom/itim/explorer/interfaces/ILoadCityBorder;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadCityBorder;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v1, 0x7f040038

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mEdtTypeCity:Landroid/widget/EditText;

    .line 64
    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    .line 65
    iget-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mLvPOIs:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mEdtTypeCity:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 74
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/CityBorder;

    .line 75
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    invoke-interface {v2, v0}, Lcom/itim/explorer/interfaces/MainActivityListener;->updateCity(Lcom/itim/explorer/io/model/CityBorder;)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mAddPOIListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mAddPOIListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    invoke-interface {v2, v0}, Lcom/itim/explorer/interfaces/AddPOIActivityListener;->updateCity(Lcom/itim/explorer/io/model/CityBorder;)V

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mEdtTypeCity:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    const-string v3, "City choose"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "City"

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "Dialog"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mCityAdapter:Lcom/itim/explorer/ui/adapter/CityAdapter;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/adapter/CityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setAddPOIListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V
    .locals 0
    .param p1, "mAddPOIListener"    # Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mAddPOIListener:Lcom/itim/explorer/interfaces/AddPOIActivityListener;

    .line 134
    return-void
.end method

.method public setmListener(Lcom/itim/explorer/interfaces/MainActivityListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/itim/explorer/interfaces/MainActivityListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/itim/explorer/ui/CityChooseDialog;->mListener:Lcom/itim/explorer/interfaces/MainActivityListener;

    .line 130
    return-void
.end method
