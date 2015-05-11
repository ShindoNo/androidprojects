.class public Lcom/itim/explorer/ui/AboutActivity;
.super Lcom/itim/explorer/ui/BaseActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onBackPressed()V

    .line 75
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/AboutActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e000e

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 27
    .local v1, "versionName":Ljava/lang/String;
    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0014

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/itim/explorer/ui/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0010

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/itim/explorer/ui/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "versionName":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v2, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 40
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->onBackPressed()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStart()V

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 53
    const-string v0, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStop()V

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 60
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 61
    return-void
.end method
