.class public Lcom/itim/explorer/ui/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/itim/explorer/interfaces/GetLocationListener;
.implements Lcom/itim/explorer/interfaces/MainActivityListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/ActionBarActivity;",
        "Lcom/itim/explorer/interfaces/MainActivityListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;>;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/widget/ExpandableListView$OnGroupClickListener;",
        "Landroid/location/LocationListener;",
        "Lcom/itim/explorer/interfaces/GetLocationListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG_ABOUT:Ljava/lang/String; = "fragment_about"

.field public static final FRAGMENT_TAG_BOOKMARK:Ljava/lang/String; = "fragment_bookmark"

.field public static final FRAGMENT_TAG_CITY_DIALOG:Ljava/lang/String; = "dialog_choose_city"

.field public static final FRAGMENT_TAG_GPS_DIALOG:Ljava/lang/String; = "gps_dialog"

.field public static final FRAGMENT_TAG_HISTORY:Ljava/lang/String; = "fragment_history"

.field public static final FRAGMENT_TAG_MAIN:Ljava/lang/String; = "fragment_main"

.field public static final LOAD_BOOKMARK_ALL_POI:I = 0x4

.field public static final LOAD_BOOKMARK_POI:I = 0x3

.field public static final LOAD_HISTORY_ALL_POI:I = 0x2

.field public static final LOAD_HISTORY_POI:I = 0x1

.field public static final LOAD_SEARCH_QUERY:I = 0x5

.field public static final LOAD_SEARCH_QUERY_ALL:I = 0x6


# instance fields
.field private etSelectCity:Landroid/widget/TextView;

.field i:I

.field private isOnTouchCategory:Z

.field private locationManager:Landroid/location/LocationManager;

.field private mAtvSearch:Landroid/widget/AutoCompleteTextView;

.field private mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocation:Landroid/location/Location;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ExpandableListView;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mFBProfileID:Ljava/lang/String;

.field private mFBProfileName:Ljava/lang/String;

.field private mFmCategory:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

.field private mIvClearSearch:Landroid/widget/ImageView;

.field private mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

.field private mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

.field private mTitle:Ljava/lang/CharSequence;

.field private mVSelectCity:Landroid/view/View;

.field private statusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/itim/explorer/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/MainActivity$1;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 611
    iput v1, p0, Lcom/itim/explorer/ui/MainActivity;->i:I

    .line 932
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MainActivity;->isOnTouchCategory:Z

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/MainActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mIvClearSearch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/MainActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$502(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/itim/explorer/ui/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/MainActivity;)Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/itim/explorer/ui/MainActivity;Lcom/itim/explorer/io/model/Category;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;
    .param p1, "x1"    # Lcom/itim/explorer/io/model/Category;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MainActivity;->goToMap(Lcom/itim/explorer/io/model/Category;)V

    return-void
.end method

.method static synthetic access$902(Lcom/itim/explorer/ui/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/itim/explorer/ui/MainActivity;->isOnTouchCategory:Z

    return p1
.end method

.method private goToMap(Landroid/os/Bundle;Lcom/itim/explorer/io/model/Category;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "category"    # Lcom/itim/explorer/io/model/Category;

    .prologue
    .line 1044
    const-string v1, "extra_map_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1045
    const-string v1, "extra_method"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    const-string v1, "extra_map_offset"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    const-string v1, "extra_map_category_id"

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Category;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1049
    const-string v1, "extra_map_category_name"

    invoke-virtual {p2}, Lcom/itim/explorer/io/model/Category;->getEn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "extra_screen_title"

    invoke-virtual {p2, p0}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1052
    .local v0, "mapIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1054
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 1055
    return-void
.end method

.method private goToMap(Lcom/itim/explorer/io/model/Category;)V
    .locals 10
    .param p1, "category"    # Lcom/itim/explorer/io/model/Category;

    .prologue
    const/4 v9, -0x1

    .line 1019
    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 1020
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1021
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 1022
    const-string v3, "extra_map_near_left"

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1024
    const-string v3, "extra_map_far_right"

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1026
    const-string v3, "extra_map_size"

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 1030
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_1

    .line 1031
    const-string v3, "extra_map_location"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1032
    const-string v3, "extra_map_size"

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v3

    if-eq v3, v9, :cond_3

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/itim/explorer/ui/MainActivity;->goToMap(Landroid/os/Bundle;Lcom/itim/explorer/io/model/Category;)V

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_3
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/itim/explorer/util/LocationUtils;->showNoLocationDialog(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private onMap(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_screen_title"

    const v2, 0x7f0e00fb

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v1, "extra_map_type"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1131
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1132
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 1133
    return-void
.end method

.method private onShareLocation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1170
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 1171
    .local v1, "location_sh":Landroid/location/Location;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1172
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Screen"

    const-string v4, "Main screen"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    if-nez v1, :cond_0

    .line 1174
    const-string v3, "Location"

    const-string v4, "null"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-static {p0, v9}, Lcom/itim/explorer/util/LocationUtils;->showNoLocationDialog(Landroid/content/Context;Z)V

    .line 1189
    :goto_0
    const-string v3, "Share location"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1190
    return-void

    .line 1178
    :cond_0
    const-string v3, "Location"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1180
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00fa

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private servicesConnected()Z
    .locals 2

    .prologue
    .line 833
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 835
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    .line 836
    const/4 v1, 0x1

    .line 847
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v4, 0x106000d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, v7, v4}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 166
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setLogo(I)V

    .line 167
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040056

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "vSearch":Landroid/view/View;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 171
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 172
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 173
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 174
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 178
    const v3, 0x7f0b014b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    .line 180
    new-instance v3, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1020014

    invoke-direct {v3, v4, v5, p0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;-><init>(Landroid/content/Context;ILcom/itim/explorer/interfaces/GetLocationListener;)V

    iput-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .line 182
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/itim/explorer/ui/MainActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const v3, 0x7f0b014a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 185
    .local v1, "ivSearch":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$2;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 195
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$3;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$4;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 221
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$5;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    const v3, 0x7f0b014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mIvClearSearch:Landroid/widget/ImageView;

    .line 248
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$6;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mIvClearSearch:Landroid/widget/ImageView;

    new-instance v4, Lcom/itim/explorer/ui/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/itim/explorer/ui/MainActivity$7;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v3, Lcom/itim/explorer/ui/MainActivity$8;

    invoke-direct {v3, p0}, Lcom/itim/explorer/ui/MainActivity$8;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method private setupDrawerMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 302
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 303
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    .line 304
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mVSelectCity:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mVSelectCity:Landroid/view/View;

    const v1, 0x7f0b0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->etSelectCity:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->etSelectCity:Landroid/widget/TextView;

    new-instance v1, Lcom/itim/explorer/ui/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/MainActivity$9;-><init>(Lcom/itim/explorer/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->etSelectCity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itim/explorer/util/Util;->getCurrentCityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mVSelectCity:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0200f2

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 324
    new-instance v0, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/itim/explorer/interfaces/MainActivityListener;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    .line 327
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 328
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 339
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 342
    new-instance v0, Lcom/itim/explorer/ui/MainActivity$10;

    iget-object v3, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f020134

    const v5, 0x7f0e00a4

    const v6, 0x7f0e00a0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/itim/explorer/ui/MainActivity$10;-><init>(Lcom/itim/explorer/ui/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 355
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 356
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusable(Z)V

    .line 363
    return-void
.end method

.method private setupFaceBook(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 388
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 389
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_2

    .line 390
    if-eqz p1, :cond_0

    .line 391
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v1, v2, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v0

    .line 394
    :cond_0
    if-nez v0, :cond_1

    .line 395
    new-instance v0, Lcom/facebook/Session;

    .end local v0    # "session":Lcom/facebook/Session;
    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 397
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 398
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 405
    :cond_2
    return-void
.end method

.method private setupLocationServices()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 922
    const/16 v2, 0x2328

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 924
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 925
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 926
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 927
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "LocationConfig"

    invoke-virtual {v1, v2, v3}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 930
    .end local v1    # "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    :cond_0
    return-void
.end method

.method private startPeriodicUpdates()V
    .locals 9

    .prologue
    .line 883
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 884
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 885
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 886
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 888
    .local v7, "lastKnownLocation":Landroid/location/Location;
    invoke-static {v7}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 893
    :cond_1
    iput-object v7, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    goto :goto_0

    .line 912
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private stopPeriodicUpdates()V
    .locals 2

    .prologue
    .line 917
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 918
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 919
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 1137
    const/4 v2, 0x1

    .line 1139
    .local v2, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 1140
    .local v4, "v":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1142
    instance-of v8, v4, Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 1144
    .local v5, "w":Landroid/view/View;
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 1145
    .local v3, "scrcoords":[I
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v3, v9

    int-to-float v9, v9

    sub-float v6, v8, v9

    .line 1147
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    int-to-float v9, v9

    sub-float v7, v8, v9

    .line 1149
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gez v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1

    .line 1153
    :cond_0
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1154
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "scrcoords":[I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "w":Landroid/view/View;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    :goto_0
    return v2

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFbProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLngBounds()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public goToAbout()V
    .locals 4

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fragment_about"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 647
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/itim/explorer/ui/AboutFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/itim/explorer/ui/AboutFragment;-><init>()V

    .line 650
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "fragment_about"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/itim/explorer/util/UIUtil;->showFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 652
    :cond_1
    const-string v1, "Main menu - About"

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 654
    return-void
.end method

.method public goToBookmark()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 631
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "fragment_bookmark"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 633
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 634
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/itim/explorer/ui/POIListFragment;->newInstance(I)Lcom/itim/explorer/ui/POIListFragment;

    move-result-object v0

    .line 636
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "fragment_bookmark"

    invoke-static {v2, v0, v3, v1}, Lcom/itim/explorer/util/UIUtil;->showFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 638
    :cond_1
    const-string v2, "Main menu - Choose Bookmark"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 639
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 640
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 641
    return-void

    .line 639
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goToHistory()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "fragment_history"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 617
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcom/itim/explorer/ui/HistoryFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/itim/explorer/ui/HistoryFragment;-><init>()V

    .line 622
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "fragment_history"

    invoke-static {v2, v0, v3, v1}, Lcom/itim/explorer/util/UIUtil;->showFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 624
    :cond_1
    const-string v2, "Main menu - Choose History"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 626
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 627
    return-void

    .line 625
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerShowing()Z
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 506
    const/16 v0, 0x2328

    if-ne p1, v0, :cond_0

    .line 507
    packed-switch p2, :pswitch_data_0

    .line 519
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 521
    return-void

    .line 518
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCategorySelect(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 944
    iget-boolean v0, p0, Lcom/itim/explorer/ui/MainActivity;->isOnTouchCategory:Z

    if-ne v0, v1, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 946
    :cond_0
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MainActivity;->isOnTouchCategory:Z

    .line 947
    new-instance v0, Lcom/itim/explorer/ui/MainActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/itim/explorer/ui/MainActivity$12;-><init>(Lcom/itim/explorer/ui/MainActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 714
    const/4 v1, 0x2

    if-ge p4, v1, :cond_0

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    .local v0, "intentDetail":Landroid/content/Intent;
    const-string v1, "extra_map_poi"

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->getChild(II)Lcom/itim/explorer/io/model/POI;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    const-string v1, "extra_map_location"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 721
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 724
    .end local v0    # "intentDetail":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->goToHistory()V

    goto :goto_0
.end method

.method public onCitySelect()V
    .locals 4

    .prologue
    .line 366
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    if-nez v2, :cond_0

    .line 367
    new-instance v2, Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/CityChooseDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    .line 368
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/CityChooseDialog;->setmListener(Lcom/itim/explorer/interfaces/MainActivityListener;)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 372
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_choose_city"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 374
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 377
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 378
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    const-string v3, "dialog_choose_city"

    invoke-virtual {v2, v0, v3}, Lcom/itim/explorer/ui/CityChooseDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 379
    const-string v2, "Choose change city"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 547
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 548
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 549
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    iput-object p0, p0, Lcom/itim/explorer/ui/MainActivity;->mContext:Landroid/content/Context;

    .line 144
    sget-object v0, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v0, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 145
    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->setTheme(I)V

    .line 150
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/UIUtil;->loadLanguage(Landroid/content/Context;)V

    .line 151
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->setContentView(I)V

    .line 152
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->setupLocationServices()V

    .line 153
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MainActivity;->setupFaceBook(Landroid/os/Bundle;)V

    .line 154
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->setupDrawerMenu()V

    .line 155
    new-instance v0, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    invoke-direct {v0}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mFmCategory:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    .line 156
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mFmCategory:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    const-string v2, "fragment_main"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->showFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 159
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->setupActionBar()V

    .line 160
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Lcom/itim/explorer/io/LoadPOILoader;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itim/explorer/io/LoadPOILoader;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 596
    invoke-static {p0}, Lcom/itim/explorer/io/model/CityBorder;->createCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itim/explorer/util/Util;->setCurrentCity(Landroid/content/Context;Lcom/itim/explorer/io/model/CityBorder;)V

    .line 598
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 10
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 730
    iget-object v7, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 731
    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 797
    :goto_1
    return v5

    .line 733
    :pswitch_0
    iget-object v7, p0, Lcom/itim/explorer/ui/MainActivity;->mFmCategory:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    invoke-virtual {v7}, Lcom/itim/explorer/ui/CategoryFragmentNoGrid;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/itim/explorer/ui/MainActivity;->mFmCategory:Lcom/itim/explorer/ui/CategoryFragmentNoGrid;

    const-string v9, "fragment_main"

    invoke-static {v7, v8, v9, v6}, Lcom/itim/explorer/util/UIUtil;->showFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 736
    const-string v6, "Main menu - Choose Category"

    invoke-static {v6}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 738
    :cond_1
    iget-object v6, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_1

    .line 741
    :pswitch_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->goToHistory()V

    goto :goto_1

    .line 744
    :pswitch_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->goToBookmark()V

    goto :goto_1

    .line 747
    :pswitch_3
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    .line 748
    .local v4, "session":Lcom/facebook/Session;
    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 749
    const-string v5, ""

    iput-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;

    .line 750
    const-string v5, ""

    iput-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    .line 751
    invoke-virtual {v4}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 752
    const-string v5, "Main - Logout"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 763
    :goto_2
    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    if-eqz v5, :cond_0

    .line 764
    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v5}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/facebook/Session;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 754
    new-instance v5, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v5, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v7, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v5, v7}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 757
    const-string v5, "Main - Login"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 759
    :cond_3
    iget-object v7, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v5, v7}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    .line 761
    const-string v5, "Main - Login"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 767
    .end local v4    # "session":Lcom/facebook/Session;
    :pswitch_4
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->setLanguageConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "lang":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 769
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 770
    .local v3, "langParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Language"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v5, "Main menu - Language change"

    invoke-static {v5, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 773
    .end local v3    # "langParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->finish()V

    .line 775
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 778
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "lang":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->goToAbout()V

    goto/16 :goto_0

    .line 781
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/itim/explorer/ui/UserPOIsActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v1, "intent2":Landroid/content/Intent;
    const-string v7, "arg_uid"

    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itim/explorer/util/Util;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 787
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 788
    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 790
    const-string v5, "Main menu - Add POI"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 782
    :cond_5
    iget-object v5, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    goto :goto_3

    .line 793
    .end local v1    # "intent2":Landroid/content/Intent;
    :pswitch_7
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->onShareLocation()V

    goto/16 :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 568
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 574
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Main screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v1, "Button"

    const-string v2, "Menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 579
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 581
    .restart local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Main screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "Button"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 584
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 586
    const/4 v1, 0x0

    .line 589
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v1

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/ui/MainActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;>;"
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    if-eqz p2, :cond_0

    .line 701
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0, p2}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->setHistoryList(Ljava/util/List;)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0, p2}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->setBookmarkList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;>;"
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 853
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity;->mCurrentLocation:Landroid/location/Location;

    .line 856
    :cond_0
    return-void
.end method

.method public onMap(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1099
    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 1100
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1101
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1102
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Screen"

    const-string v5, "Main screen"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string v4, "Button"

    const-string v5, "Map"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v4, "Press screen button"

    invoke-static {v4, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1106
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1107
    const-string v4, "extra_map_near_left"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1109
    const-string v4, "extra_map_far_right"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1111
    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/MainActivity;->onMap(Landroid/os/Bundle;)V

    .line 1122
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 1114
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 1115
    const-string v4, "extra_map_location"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1116
    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/MainActivity;->onMap(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1118
    :cond_1
    const v4, 0x7f0e00df

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 553
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 555
    :pswitch_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 445
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->stopPeriodicUpdates()V

    .line 447
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 449
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 542
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 543
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 872
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 867
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->retriveAuthName()V

    .line 431
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 433
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 434
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MainActivity;->startPeriodicUpdates()V

    .line 436
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 528
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 529
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 530
    return-void
.end method

.method public onSearch(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1058
    iget-object v6, p0, Lcom/itim/explorer/ui/MainActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1059
    .local v5, "search":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-static {p0, v5}, Lcom/itim/explorer/util/Util;->saveQuery(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1064
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1065
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "extra_method"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    const-string v6, "extra_map_search_query"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v6, "extra_map_type"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    const-string v6, "extra_map_offset"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1069
    const-string v6, "extra_map_size"

    const/16 v7, 0x32

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1071
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 1072
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 1073
    const-string v6, "Location"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v6, "extra_map_location"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1076
    :cond_1
    const-string v6, "extra_screen_title"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 1078
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1079
    const-string v6, "City"

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v6, "Borders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string v6, "extra_map_near_left"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1084
    const-string v6, "extra_map_far_right"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1087
    :cond_2
    const-string v6, "Screen"

    const-string v7, "Main screen"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v6, "Query"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v6, "Is final"

    const-string v7, "true"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string v6, "searching"

    invoke-static {v6, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1092
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1093
    .local v4, "mapIntent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1095
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 454
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 455
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 457
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 458
    const-string v1, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setUserId(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Language"

    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->getLanguageConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v1, "City"

    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v1, "FaceBook State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v1, "Main screen"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 470
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->locationManager:Landroid/location/LocationManager;

    .line 473
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 861
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 498
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 499
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 500
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 501
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 502
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 940
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public retriveAuthName()V
    .locals 4

    .prologue
    .line 801
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 802
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    new-instance v2, Lcom/itim/explorer/ui/MainActivity$11;

    invoke-direct {v2, p0, v1}, Lcom/itim/explorer/ui/MainActivity$11;-><init>(Lcom/itim/explorer/ui/MainActivity;Lcom/facebook/Session;)V

    invoke-static {v1, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 822
    .local v0, "request":Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 829
    .end local v0    # "request":Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileName:Ljava/lang/String;

    .line 825
    const-string v2, ""

    iput-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mFBProfileID:Ljava/lang/String;

    .line 826
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v2}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setDrawerSelected(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 658
    if-nez p1, :cond_1

    .line 659
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->highlightSelectedGroup(I)V

    .line 664
    :cond_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mNaviDrawerAdapter:Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/itim/explorer/ui/adapter/NavigationDrawerAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 535
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/MainActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "Screen"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 677
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public updateCity(Lcom/itim/explorer/io/model/CityBorder;)V
    .locals 2
    .param p1, "city"    # Lcom/itim/explorer/io/model/CityBorder;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->etSelectCity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/itim/explorer/ui/MainActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/CityChooseDialog;->dismiss()V

    .line 690
    :cond_0
    invoke-static {p0, p1}, Lcom/itim/explorer/util/Util;->setCurrentCity(Landroid/content/Context;Lcom/itim/explorer/io/model/CityBorder;)V

    .line 691
    return-void
.end method
