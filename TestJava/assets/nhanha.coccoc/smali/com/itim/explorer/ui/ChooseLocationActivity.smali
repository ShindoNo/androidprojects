.class public Lcom/itim/explorer/ui/ChooseLocationActivity;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "ChooseLocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# static fields
.field public static final ARG_CHOOSED_LOCATION:Ljava/lang/String; = "arg_choosed_location"

.field public static final ARG_CURRENT_LOCATION:Ljava/lang/String; = "arg_current_location"

.field public static final ARG_LATLNGBOUND_LOCATION:Ljava/lang/String; = "arg_latlngbound_location"

.field private static final MENU_ITEM_ID_DONE:I


# instance fields
.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ChooseLocationActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/ChooseLocationActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ChooseLocationActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ChooseLocationActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ChooseLocationActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->setContentView(I)V

    .line 42
    sget-object v0, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v0, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 43
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0147

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 45
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 48
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/itim/explorer/ui/ChooseLocationActivity$1;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/ChooseLocationActivity$1;-><init>(Lcom/itim/explorer/ui/ChooseLocationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/itim/explorer/ui/ChooseLocationActivity$2;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/ChooseLocationActivity$2;-><init>(Lcom/itim/explorer/ui/ChooseLocationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    const v1, 0x7f0e0114

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, "itemDone":Landroid/view/MenuItem;
    const v1, 0x7f0e009f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200f6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    .end local v0    # "itemDone":Landroid/view/MenuItem;
    :cond_0
    return v3
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f02013e

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 195
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v1, "arg_choosed_location"

    iget-object v2, p0, Lcom/itim/explorer/ui/ChooseLocationActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->finish()V

    .line 175
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 177
    .end local v0    # "returnIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ChooseLocationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00b2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 200
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 206
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 207
    return-void
.end method
