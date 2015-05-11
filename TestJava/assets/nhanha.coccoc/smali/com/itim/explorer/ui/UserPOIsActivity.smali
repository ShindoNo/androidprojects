.class public Lcom/itim/explorer/ui/UserPOIsActivity;
.super Lcom/itim/explorer/ui/BaseActivity;
.source "UserPOIsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ARG_UID:Ljava/lang/String; = "arg_uid"

.field public static final REQUEST_RELOAD:I = 0x69


# instance fields
.field private mAdapter:Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

.field private mListView:Landroid/widget/ListView;

.field private mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

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

.field private mUid:Ljava/lang/String;

.field private mVLoading:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/itim/explorer/ui/UserPOIsActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/UserPOIsActivity$1;-><init>(Lcom/itim/explorer/ui/UserPOIsActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/UserPOIsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/UserPOIsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/UserPOIsActivity;)Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/UserPOIsActivity;Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;)Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;
    .param p1, "x1"    # Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mAdapter:Lcom/itim/explorer/ui/adapter/UsersPOIAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/UserPOIsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/UserPOIsActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mVLoading:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 148
    new-instance v0, Lcom/itim/explorer/io/LoadUsersPOI;

    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    iget-object v2, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/io/LoadUsersPOI;-><init>(Lcom/itim/explorer/interfaces/ILoadUsersPOI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    .line 149
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadUsersPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :cond_0
    return-void
.end method

.method public onAddNewPlace(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "arg_uid"

    iget-object v3, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "arg_redirect_from_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const/16 v2, 0x69

    invoke-virtual {p0, v1, v2}, Lcom/itim/explorer/ui/UserPOIsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "User\'s POIs screen"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "Button"

    const-string v3, "Add POI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "Press screen button"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 142
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onBackPressed()V

    .line 129
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/itim/explorer/ui/UserPOIsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/UserPOIsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00fd

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/UserPOIsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 72
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mVLoading:Landroid/view/View;

    .line 73
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mListView:Landroid/widget/ListView;

    .line 75
    invoke-virtual {p0}, Lcom/itim/explorer/ui/UserPOIsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/itim/explorer/ui/UserPOIsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/Util;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    .line 79
    :cond_0
    new-instance v0, Lcom/itim/explorer/io/LoadUsersPOI;

    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    iget-object v2, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/io/LoadUsersPOI;-><init>(Lcom/itim/explorer/interfaces/ILoadUsersPOI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    .line 80
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadUsersPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/UsersPOI;

    invoke-static {v1}, Lcom/itim/explorer/io/model/UsersPOI;->print(Lcom/itim/explorer/io/model/UsersPOI;)V

    .line 158
    const-string v2, "arg_userspoi"

    iget-object v1, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mPOIs:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const-string v1, "arg_uid"

    iget-object v2, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/UserPOIsActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/UserPOIsActivity;->finish()V

    .line 92
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onResume()V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStart()V

    .line 113
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadUsersPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadUsersPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/UserPOIsActivity;->mLoadUsersPOI:Lcom/itim/explorer/io/LoadUsersPOI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadUsersPOI;->cancel(Z)Z

    .line 122
    :cond_1
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStop()V

    .line 123
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 124
    return-void
.end method
