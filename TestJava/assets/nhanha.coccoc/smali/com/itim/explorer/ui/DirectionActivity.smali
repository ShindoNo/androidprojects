.class public Lcom/itim/explorer/ui/DirectionActivity;
.super Lcom/itim/explorer/ui/BaseActivity;
.source "DirectionActivity.java"


# static fields
.field public static final ARG_LOCATION:Ljava/lang/String; = "arg_location"


# instance fields
.field private mFrom:Lcom/google/android/gms/maps/model/LatLng;

.field private mFromCurrent:Z

.field private mPOITitle:Ljava/lang/String;

.field private mTo:Lcom/google/android/gms/maps/model/LatLng;

.field private tvFrom:Landroid/widget/TextView;

.field private tvTo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private goToNavigate(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 122
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "extra_direction_to"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 126
    const-string v3, "extra_direction_from"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 127
    iget-boolean v3, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFromCurrent:Z

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/itim/explorer/ui/DirectionActivity;->mTo:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "extra_direction_to"

    iget-object v4, p0, Lcom/itim/explorer/ui/DirectionActivity;->mTo:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFrom:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_1

    .line 131
    const-string v3, "extra_direction_from"

    iget-object v4, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFrom:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    :cond_1
    :goto_0
    const-string v3, "load_des_mode"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Screen"

    const-string v4, "Direction screen"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_1
    const-string v3, "Go to navigation"

    invoke-static {v3, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/DirectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 161
    return-void

    .line 134
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFrom:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_3

    .line 135
    const-string v3, "extra_direction_to"

    iget-object v4, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFrom:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/itim/explorer/ui/DirectionActivity;->mTo:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_1

    .line 138
    const-string v3, "extra_direction_from"

    iget-object v4, p0, Lcom/itim/explorer/ui/DirectionActivity;->mTo:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 148
    .restart local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v3, "Type"

    const-string v4, "Car"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :pswitch_1
    const-string v3, "Type"

    const-string v4, "Walk"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDiretionText()V
    .locals 3

    .prologue
    const v2, 0x7f0e00eb

    .line 164
    iget-boolean v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFromCurrent:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvFrom:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/DirectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvTo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/DirectionActivity;->mPOITitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvFrom:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itim/explorer/ui/DirectionActivity;->mPOITitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvTo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/DirectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onBackPressed()V

    .line 100
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/DirectionActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0111

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/DirectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 37
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_direction_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_direction_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFrom:Lcom/google/android/gms/maps/model/LatLng;

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_direction_to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_direction_to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mTo:Lcom/google/android/gms/maps/model/LatLng;

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_map_poi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mPOITitle:Ljava/lang/String;

    .line 50
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/DirectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvFrom:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/DirectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->tvTo:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFromCurrent:Z

    .line 53
    invoke-direct {p0}, Lcom/itim/explorer/ui/DirectionActivity;->updateDiretionText()V

    .line 55
    sget-object v0, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v0, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 58
    return-void
.end method

.method public onDirection(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 106
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/DirectionActivity;->goToNavigate(I)V

    goto :goto_0

    .line 109
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/DirectionActivity;->goToNavigate(I)V

    goto :goto_0

    .line 112
    :sswitch_2
    iget-boolean v2, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFromCurrent:Z

    if-nez v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/itim/explorer/ui/DirectionActivity;->mFromCurrent:Z

    .line 113
    invoke-direct {p0}, Lcom/itim/explorer/ui/DirectionActivity;->updateDiretionText()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 112
    goto :goto_1

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x7f0b0081 -> :sswitch_2
        0x7f0b0088 -> :sswitch_0
        0x7f0b0089 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->onBackPressed()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/itim/explorer/ui/DirectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStart()V

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 78
    const-string v0, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseActivity;->onStop()V

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 85
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 86
    return-void
.end method
