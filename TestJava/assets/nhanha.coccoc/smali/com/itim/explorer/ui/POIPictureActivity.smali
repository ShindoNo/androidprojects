.class public Lcom/itim/explorer/ui/POIPictureActivity;
.super Landroid/app/Activity;
.source "POIPictureActivity.java"


# static fields
.field public static final ARG_PICTURE:Ljava/lang/String; = "arg_picture"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 66
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public onClose(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIPictureActivity;->onBackPressed()V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/POIPictureActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f0b009f

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/POIPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .line 27
    .local v1, "view":Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "arg_picture"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "url":Ljava/lang/String;
    const v2, 0x7f020160

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setDefaultImageResId(I)V

    .line 29
    new-instance v2, Lcom/itim/explorer/ui/POIPictureActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/itim/explorer/ui/POIPictureActivity$1;-><init>(Lcom/itim/explorer/ui/POIPictureActivity;Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;)V

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setOnLoadListener(Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;)V

    .line 36
    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 38
    sget-object v2, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v2, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 45
    const-string v2, "POI\'s picture screen"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

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

.method protected onStop()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 60
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 61
    return-void
.end method
