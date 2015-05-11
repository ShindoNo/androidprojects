.class public Lcom/itim/explorer/ui/MapActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MapActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/itim/explorer/interfaces/GetLocationListener;
.implements Lcom/itim/explorer/interfaces/MapActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/MapActivity$18;
    }
.end annotation


# static fields
.field public static final ARG_CAMERA_POS:Ljava/lang/String; = "extra_latlong_animate"

.field public static final ARG_DIRETION_FROM:Ljava/lang/String; = "extra_direction_from"

.field public static final ARG_DIRETION_TO:Ljava/lang/String; = "extra_direction_to"

.field public static final ARG_MAP_CATEGORY_ID:Ljava/lang/String; = "extra_map_category_id"

.field public static final ARG_MAP_CATEGORY_NAME:Ljava/lang/String; = "extra_map_category_name"

.field public static final ARG_MAP_FAR_RIGHT:Ljava/lang/String; = "extra_map_far_right"

.field public static final ARG_MAP_LAT:Ljava/lang/String; = "extra_map_lat"

.field public static final ARG_MAP_LATLON:Ljava/lang/String; = "extra_map_latlon"

.field public static final ARG_MAP_LOCATION:Ljava/lang/String; = "extra_map_location"

.field public static final ARG_MAP_LONG:Ljava/lang/String; = "extra_map_long"

.field public static final ARG_MAP_MARKER_TITLE:Ljava/lang/String; = "extra_map_marker_title"

.field public static final ARG_MAP_NEAR_LEFT:Ljava/lang/String; = "extra_map_near_left"

.field public static final ARG_MAP_OFFSET:Ljava/lang/String; = "extra_map_offset"

.field public static final ARG_MAP_POI:Ljava/lang/String; = "extra_map_poi"

.field public static final ARG_MAP_POI_HASH:Ljava/lang/String; = "extra_map_poi_hash"

.field public static final ARG_MAP_RADIUS:Ljava/lang/String; = "extra_map_radius"

.field public static final ARG_MAP_SEARCH_INPUT:Ljava/lang/String; = "extra_map_search_input"

.field public static final ARG_MAP_SEARCH_QUERY:Ljava/lang/String; = "extra_map_search_query"

.field public static final ARG_MAP_SIZE:Ljava/lang/String; = "extra_map_size"

.field public static final ARG_MAP_TYPE:Ljava/lang/String; = "extra_map_type"

.field public static final ARG_MAP_ZOOM_LEVEL_CHANGE:Ljava/lang/String; = "extra_map_zoom_level"

.field public static final ARG_SCREEN_TITLE:Ljava/lang/String; = "extra_screen_title"

.field public static final ARG_UID:Ljava/lang/String; = "extra_uid"

.field protected static final DOWN:Z = false

.field private static final EARTHRADIUS:D = 6366198.0

.field public static final MAP_TYPE_CATEGORY:I = 0x1

.field public static final MAP_TYPE_CURRENT_LOCATION:I = 0x5

.field public static final MAP_TYPE_DIRECTION:I = 0x4

.field public static final MAP_TYPE_MAP_INTENT:I = 0x6

.field public static final MAP_TYPE_MAP_NHANHA_INTENT:I = 0x7

.field public static final MAP_TYPE_NEAR_BY:I = 0x8

.field public static final MAP_TYPE_POI:I = 0x2

.field public static final MAP_TYPE_SEARCH:I = 0x3

.field private static final MENU_ITEM_ID_LIST:I = 0x2

.field private static final MENU_ITEM_ID_SEARCH:I = 0x1

.field private static final TIME_OLD_LOCATION:J = 0x61a8L

.field protected static final UP:Z = true

.field private static mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;


# instance fields
.field private bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;

.field private camerashift:I

.field private circle:Lcom/google/android/gms/maps/model/Circle;

.field private circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

.field private countToShowErrorNotFound:I

.field private countToShowErrorUnknow:I

.field private firstCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

.field private firstpanelcheck:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private listBookmarkedPOI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateCurrentLocation:Z

.field private mAtvSearch:Landroid/widget/AutoCompleteTextView;

.field private mCategoryID:I

.field private mCurrentLocation:Landroid/location/Location;

.field private mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mFromCurrent:Z

.field private mHashBookmarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mHashPoiMarker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mHdlrShortListPOI:Landroid/os/Handler;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoad;

.field private mImgbCurrentLocation:Landroid/widget/ImageButton;

.field private mImgbMapType:Landroid/widget/ImageButton;

.field private mIsShowDirection:Z

.field private mIvClearSearch:Landroid/widget/ImageView;

.field private mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

.field private mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mMapType:I

.field private mMenu:Landroid/view/Menu;

.field private mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

.field private mPanelItemHeight:I

.field private mPgbLoading:Landroid/view/View;

.field private mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

.field private mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

.field private mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mSpinner:Landroid/widget/Spinner;

.field private mVSearch:Landroid/view/View;

.field private mapIsReady:Z

.field private mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

.field private markerPlusInfoWindowH:I

.field private maxSliderHeight:I

.field private poiListIsReady:Z

.field private sliderTitleHeight:I

.field private tvFrom:Landroid/widget/TextView;

.field private tvTo:Landroid/widget/TextView;

.field private vDirection:Landroid/view/View;

.field private zoomLevelCurrentPosition:F

.field private zoomLevelDefault:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 157
    const/high16 v0, 0x41600000

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelCurrentPosition:F

    .line 158
    const/high16 v0, 0x41700000

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelDefault:F

    .line 161
    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    .line 170
    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->mIsShowDirection:Z

    .line 178
    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    .line 181
    iput v4, p0, Lcom/itim/explorer/ui/MapActivity;->countToShowErrorNotFound:I

    .line 182
    iput v4, p0, Lcom/itim/explorer/ui/MapActivity;->countToShowErrorUnknow:I

    .line 184
    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->firstCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 189
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAnimateCurrentLocation:Z

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    .line 207
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->mapIsReady:Z

    .line 208
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z

    .line 210
    new-instance v0, Lcom/itim/explorer/ui/MapActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/MapActivity$1;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    .line 1988
    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->firstpanelcheck:Z

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/MapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/itim/explorer/ui/MapActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/MapActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    return p1
.end method

.method static synthetic access$1102(Lcom/itim/explorer/ui/MapActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/itim/explorer/ui/MapActivity;->countToShowErrorUnknow:I

    return p1
.end method

.method static synthetic access$1200(Lcom/itim/explorer/ui/MapActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mPgbLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V

    return-void
.end method

.method static synthetic access$1400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/LoadPOI;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateDiretionText()V

    return-void
.end method

.method static synthetic access$1600(Lcom/itim/explorer/ui/MapActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHdlrShortListPOI:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/POIListSliderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/itim/explorer/ui/MapActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->setBottomSliderHeight(I)V

    return-void
.end method

.method static synthetic access$1900()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->showBookmarks()V

    return-void
.end method

.method static synthetic access$2102(Lcom/itim/explorer/ui/MapActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateActionBar()V

    return-void
.end method

.method static synthetic access$2300(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hidePanel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/itim/explorer/ui/MapActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/io/model/POI;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->goToPOIDetails(Lcom/itim/explorer/io/model/POI;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/itim/explorer/ui/MapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->camerashift:I

    return v0
.end method

.method static synthetic access$2800(Lcom/itim/explorer/ui/MapActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->setPanelIcon(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/LoadMoreListView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/io/model/POI;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getSelectedPOI()Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/io/model/POI;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->camera_show_poi(Lcom/itim/explorer/io/model/POI;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/itim/explorer/ui/MapActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/itim/explorer/ui/MapActivity;->onSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/itim/explorer/ui/MapActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mIvClearSearch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->onSearchNearby(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/MapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;)Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/itim/explorer/ui/MapActivity;)Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/MapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/itim/explorer/ui/MapActivity;->mIsShowDirection:Z

    return v0
.end method

.method static synthetic access$802(Lcom/itim/explorer/ui/MapActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/itim/explorer/ui/MapActivity;->countToShowErrorNotFound:I

    return p1
.end method

.method static synthetic access$900(Lcom/itim/explorer/ui/MapActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/MapActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object p1
.end method

.method private anchorPanel()V
    .locals 2

    .prologue
    .line 788
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 791
    return-void
.end method

.method private calculateCameraShift()V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getBottomSliderHeight()I

    move-result v0

    iget v1, p0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/itim/explorer/ui/MapActivity;->markerPlusInfoWindowH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->camerashift:I

    .line 857
    return-void
.end method

.method private camera_result_center(Lcom/itim/explorer/io/model/POI;)V
    .locals 8
    .param p1, "firstPOIresult"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 2268
    const/16 v2, 0x14

    .line 2269
    .local v2, "mapPadding":I
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 2270
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2271
    .local v1, "center":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v4

    const/high16 v5, 0x40000000

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v4

    const/high16 v5, 0x43fa0000

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v4

    const/high16 v5, 0x447a0000

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 2274
    .local v3, "minRadius":I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2275
    neg-int v4, v3

    neg-int v5, v3

    invoke-direct {p0, v1, v4, v5}, Lcom/itim/explorer/ui/MapActivity;->moveByMeters(Lcom/google/android/gms/maps/model/LatLng;II)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2276
    invoke-direct {p0, v1, v3, v3}, Lcom/itim/explorer/ui/MapActivity;->moveByMeters(Lcom/google/android/gms/maps/model/LatLng;II)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2277
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2279
    return-void

    .line 2271
    .end local v3    # "minRadius":I
    :cond_0
    const/16 v3, 0x1f4

    goto :goto_0
.end method

.method private camera_show_poi(Lcom/itim/explorer/io/model/POI;)V
    .locals 26
    .param p1, "poiToShow"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 2218
    .local v4, "b":Lcom/google/android/gms/maps/model/LatLngBounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    iget-object v0, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v18

    .line 2219
    .local v18, "topRight":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    iget-object v0, v4, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v6

    .line 2220
    .local v6, "bottomLeft":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    .line 2221
    .local v9, "hScreen":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v19, v22, v23

    .line 2223
    .local v19, "wScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v20

    .line 2224
    .local v20, "widthIW":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 2225
    .local v10, "heightMarker":I
    invoke-virtual/range {p0 .. p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 2226
    .local v21, "widthMarker":I
    div-int/lit8 v11, v20, 0x2

    .line 2227
    .local v11, "left":I
    div-int/lit8 v22, v21, 0x2

    sub-int v15, v19, v22

    .line 2228
    .local v15, "right":I
    invoke-direct/range {p0 .. p0}, Lcom/itim/explorer/ui/MapActivity;->getBottomSliderHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/ui/MapActivity;->markerPlusInfoWindowH:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    move/from16 v23, v0

    sub-int v17, v22, v23

    .line 2229
    .local v17, "top":I
    invoke-direct/range {p0 .. p0}, Lcom/itim/explorer/ui/MapActivity;->getBottomSliderHeight()I

    move-result v22

    sub-int v22, v22, v10

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    move/from16 v23, v0

    sub-int v5, v22, v23

    .line 2231
    .local v5, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    invoke-direct {v0, v11, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    .line 2232
    .local v16, "sw":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v12

    .line 2233
    .local v12, "ne":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v8, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 2234
    .local v8, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-virtual {v8, v12}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2235
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2236
    invoke-virtual {v8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v7

    .line 2237
    .local v7, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v24

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2240
    .local v14, "poiLatLng":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v13

    .line 2242
    .local v13, "p":Landroid/graphics/Point;
    invoke-virtual {v7, v14}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2265
    :goto_1
    return-void

    .line 2223
    .end local v5    # "bottom":I
    .end local v7    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v8    # "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .end local v10    # "heightMarker":I
    .end local v11    # "left":I
    .end local v12    # "ne":Lcom/google/android/gms/maps/model/LatLng;
    .end local v13    # "p":Landroid/graphics/Point;
    .end local v14    # "poiLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v15    # "right":I
    .end local v16    # "sw":Lcom/google/android/gms/maps/model/LatLng;
    .end local v17    # "top":I
    .end local v20    # "widthIW":I
    .end local v21    # "widthMarker":I
    :cond_0
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2246
    .restart local v5    # "bottom":I
    .restart local v7    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .restart local v8    # "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .restart local v10    # "heightMarker":I
    .restart local v11    # "left":I
    .restart local v12    # "ne":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v13    # "p":Landroid/graphics/Point;
    .restart local v14    # "poiLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v15    # "right":I
    .restart local v16    # "sw":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v17    # "top":I
    .restart local v20    # "widthIW":I
    .restart local v21    # "widthMarker":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v22, v0

    invoke-static {v14}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method

.method private camera_user_result_center(Lcom/itim/explorer/io/model/POI;)V
    .locals 10
    .param p1, "firstresult"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 2282
    const/16 v3, 0x14

    .line 2283
    .local v3, "mapPadding":I
    const/16 v4, 0x1f4

    .line 2284
    .local v4, "minRadius":I
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 2285
    .local v2, "location":Landroid/location/Location;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 2286
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2287
    if-eqz v2, :cond_0

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2288
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 2289
    .local v1, "center":Lcom/google/android/gms/maps/model/LatLng;
    neg-int v5, v4

    neg-int v6, v4

    invoke-direct {p0, v1, v5, v6}, Lcom/itim/explorer/ui/MapActivity;->moveByMeters(Lcom/google/android/gms/maps/model/LatLng;II)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2290
    invoke-direct {p0, v1, v4, v4}, Lcom/itim/explorer/ui/MapActivity;->moveByMeters(Lcom/google/android/gms/maps/model/LatLng;II)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 2291
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2293
    return-void
.end method

.method public static collapsePanel()V
    .locals 2

    .prologue
    .line 1780
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v0, v1, :cond_1

    .line 1784
    :cond_0
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 1786
    :cond_1
    return-void
.end method

.method private configureInterfaceChanges()V
    .locals 11

    .prologue
    const v10, 0x7f0b0091

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 813
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const v5, 0x7f0b0141

    invoke-virtual {p0, v5}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 814
    .local v4, "v":Landroid/view/View;
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 815
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    .line 816
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 817
    .local v0, "actionBarHeight":I
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/itim/explorer/ui/MapActivity;->maxSliderHeight:I

    .line 819
    sget-object v5, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget v6, p0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    invoke-virtual {v5, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 821
    sget-object v5, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v6, 0x7f0b0098

    invoke-virtual {v5, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 822
    .local v3, "panel":Landroid/view/View;
    new-instance v5, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    iget v6, p0, Lcom/itim/explorer/ui/MapActivity;->maxSliderHeight:I

    invoke-direct {v5, v9, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    iget v6, p0, Lcom/itim/explorer/ui/MapActivity;->sliderTitleHeight:I

    invoke-virtual {v5, v7, v7, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 843
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 844
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x4008e147ae147ae1L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/itim/explorer/ui/MapActivity;->markerPlusInfoWindowH:I

    .line 845
    sget-object v5, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v5, v10}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 846
    sget-object v5, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v5, v10}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    :cond_0
    return-void
.end method

.method private getBookmarks()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1040
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/itim/explorer/provider/POIContentProvider;->CONTENT_URI_BOOKMARK:Landroid/net/Uri;

    const-string v5, "BOOKMARK._id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1044
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "poi_id"

    invoke-static {v6, v0}, Lcom/itim/explorer/io/POISQLiteHelper;->cursorToPOIs(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->listBookmarkedPOI:Ljava/util/List;

    .line 1045
    return-void
.end method

.method private getBottomSliderHeight()I
    .locals 2

    .prologue
    .line 2366
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getPOIid(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Integer;
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v0, 0x0

    .line 1721
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-object v0

    .line 1722
    :cond_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPOI()Lcom/itim/explorer/io/model/POI;
    .locals 2

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/io/model/POI;

    return-object v0
.end method

.method private goToPOIDetails(Lcom/itim/explorer/io/model/POI;)V
    .locals 3
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/POIDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1595
    .local v0, "poiIntent":Landroid/content/Intent;
    const-string v1, "extra_map_location"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1596
    const-string v1, "extra_map_poi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1597
    const-string v1, "list_poi"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->onGetResultList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1599
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1600
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 1601
    return-void
.end method

.method private hidePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2402
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setEnabled(Z)V

    .line 2403
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2407
    :cond_0
    return-void
.end method

.method private hideSearchItem()V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1714
    return-void
.end method

.method private isCurrentLocationTooOld()Z
    .locals 6

    .prologue
    .line 1953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1955
    .local v0, "time":J
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x61a8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPanelHidden()Z
    .locals 2

    .prologue
    .line 764
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPOIs()V
    .locals 4

    .prologue
    .line 1092
    new-instance v0, Lcom/itim/explorer/ui/MapActivity$7;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-direct {v0, p0, v1}, Lcom/itim/explorer/ui/MapActivity$7;-><init>(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/interfaces/ILoad;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    .line 1103
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1105
    return-void
.end method

.method private meterToLatitude(D)D
    .locals 4
    .param p1, "meterToNorth"    # D

    .prologue
    .line 2317
    const-wide v2, 0x415848fd80000000L

    div-double v0, p1, v2

    .line 2318
    .local v0, "rad":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private meterToLongitude(DD)D
    .locals 10
    .param p1, "meterToEast"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 2309
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 2310
    .local v0, "latArc":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x415848fd80000000L

    mul-double v4, v6, v8

    .line 2311
    .local v4, "radius":D
    div-double v2, p1, v4

    .line 2312
    .local v2, "rad":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    return-wide v6
.end method

.method private moveByMeters(Lcom/google/android/gms/maps/model/LatLng;II)Lcom/google/android/gms/maps/model/LatLng;
    .locals 9
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "north"    # I
    .param p3, "east"    # I

    .prologue
    .line 2296
    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    int-to-double v7, p2

    invoke-direct {p0, v7, v8}, Lcom/itim/explorer/ui/MapActivity;->meterToLatitude(D)D

    move-result-wide v7

    add-double v0, v5, v7

    .line 2297
    .local v0, "lat":D
    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    int-to-double v7, p3

    invoke-direct {p0, v7, v8, v0, v1}, Lcom/itim/explorer/ui/MapActivity;->meterToLongitude(DD)D

    move-result-wide v7

    add-double v2, v5, v7

    .line 2298
    .local v2, "lng":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2299
    .local v4, "result":Lcom/google/android/gms/maps/model/LatLng;
    return-object v4
.end method

.method private onSearch(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "categoryId"    # Z

    .prologue
    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    .line 2019
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2020
    .local v5, "search":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2021
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Screen"

    const-string v7, "Map screen"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    const-string v6, "Query"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v6, "Is final"

    const-string v7, "true"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_0

    .line 2027
    :cond_0
    invoke-static {p0, v5}, Lcom/itim/explorer/util/Util;->saveQuery(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2029
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2030
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz p2, :cond_4

    .line 2031
    const-string v6, "extra_map_category_id"

    iget v7, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2033
    :cond_1
    :goto_0
    const-string v6, "extra_method"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2034
    const-string v6, "extra_map_search_query"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v6, "extra_map_type"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2037
    const-string v6, "extra_map_offset"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2038
    const-string v6, "extra_map_size"

    const/16 v7, 0x32

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2039
    const-string v6, "extra_latlong_animate"

    iget-object v7, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2040
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 2041
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_2

    .line 2042
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

    .line 2043
    const-string v6, "extra_map_location"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2045
    :cond_2
    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getCurrentCity(Landroid/content/Context;)Lcom/itim/explorer/io/model/CityBorder;

    move-result-object v0

    .line 2046
    .local v0, "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    iget-object v6, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v4

    .line 2047
    .local v4, "region":Lcom/google/android/gms/maps/model/VisibleRegion;
    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v6, v6, v10

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v6, v6, v10

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v6, v6, v10

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v6, v6, v10

    if-eqz v6, :cond_5

    .line 2050
    const-string v6, "Borders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string v6, "extra_map_near_left"

    iget-object v7, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2052
    const-string v6, "extra_map_far_right"

    iget-object v7, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2064
    :cond_3
    :goto_1
    const-string v6, "extra_screen_title"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v6, "searching"

    invoke-static {v6, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2070
    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->searchInCurrentActivity(Landroid/os/Bundle;)V

    .line 2075
    return-void

    .line 2032
    .end local v0    # "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "region":Lcom/google/android/gms/maps/model/VisibleRegion;
    :cond_4
    const-string v6, "extra_map_category_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "extra_map_category_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2054
    .restart local v0    # "cityBorder":Lcom/itim/explorer/io/model/CityBorder;
    .restart local v3    # "location":Landroid/location/Location;
    .restart local v4    # "region":Lcom/google/android/gms/maps/model/VisibleRegion;
    :cond_5
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 2055
    const-string v6, "City"

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
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

    .line 2058
    const-string v6, "extra_map_near_left"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2060
    const-string v6, "extra_map_far_right"

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1
.end method

.method private onSearchNearby(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    .line 2149
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2151
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_map_near_left"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2152
    const-string v1, "extra_map_near_left"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2153
    :cond_0
    const-string v1, "extra_map_far_right"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2154
    const-string v1, "extra_map_far_right"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2155
    :cond_1
    const-string v1, "extra_method"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2156
    const-string v1, "extra_map_radius"

    const/high16 v2, 0x3fc00000

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2157
    const-string v1, "extra_map_size"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2158
    const-string v1, "extra_map_latlon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2159
    const-string v1, "extra_map_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2160
    const-string v1, "extra_map_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2161
    const-string v1, "extra_map_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2162
    :cond_2
    const-string v1, "extra_map_category_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2163
    const-string v1, "extra_map_category_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2164
    :cond_3
    const-string v1, "extra_screen_title"

    const v2, 0x7f0e00fb

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2167
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/LoadPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_4

    .line 2169
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v1, v5}, Lcom/itim/explorer/io/LoadPOI;->cancel(Z)Z

    .line 2170
    :cond_4
    new-instance v1, Lcom/itim/explorer/io/LoadPOI;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-direct {v1, v2}, Lcom/itim/explorer/io/LoadPOI;-><init>(Lcom/itim/explorer/interfaces/ILoad;)V

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    .line 2171
    iput v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    .line 2172
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0146

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02012a

    invoke-static {v1, v2, v3, v4}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2176
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setupAdvBanner()V

    .line 2177
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateActionBar()V

    .line 2178
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/POIListSliderFragment;->setTitle()V

    .line 2179
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    new-array v2, v5, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/itim/explorer/io/LoadPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2180
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41880000

    invoke-static {p1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 2182
    return-void
.end method

.method private prepareMapForUpdate()V
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 2323
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->showBookmarks()V

    .line 2324
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateCurrentLocation()V

    .line 2325
    return-void
.end method

.method private searchInCurrentActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 2085
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2086
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V

    .line 2087
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2088
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    invoke-virtual {v1}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setupAdvBanner()V

    .line 2089
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hideSearchItem()V

    .line 2091
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2092
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2094
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/LoadPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_1

    .line 2096
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v1, v3}, Lcom/itim/explorer/io/LoadPOI;->cancel(Z)Z

    .line 2097
    :cond_1
    new-instance v1, Lcom/itim/explorer/ui/MapActivity$15;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-direct {v1, p0, v2}, Lcom/itim/explorer/ui/MapActivity$15;-><init>(Lcom/itim/explorer/ui/MapActivity;Lcom/itim/explorer/interfaces/ILoad;)V

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    .line 2110
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    new-array v2, v3, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/itim/explorer/io/LoadPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2111
    return-void
.end method

.method private searchInNewActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2078
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2079
    .local v0, "mapIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2080
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 2081
    invoke-virtual {p0, v2, v2}, Lcom/itim/explorer/ui/MapActivity;->overridePendingTransition(II)V

    .line 2082
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->finish()V

    .line 2083
    return-void
.end method

.method private servicesConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1739
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 1742
    .local v2, "resultCode":I
    if-nez v2, :cond_1

    .line 1745
    const/4 v3, 0x1

    .line 1755
    :cond_0
    :goto_0
    return v3

    .line 1747
    :cond_1
    invoke-static {v2, p0, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 1749
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1750
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 1751
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 1752
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "LocationConfig"

    invoke-virtual {v1, v4, v5}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBottomSliderHeight(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 2346
    if-nez p1, :cond_0

    .line 2347
    const/4 v1, 0x0

    iput v1, p0, Lcom/itim/explorer/ui/MapActivity;->camerashift:I

    .line 2363
    :goto_0
    return-void

    .line 2356
    :cond_0
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->maxSliderHeight:I

    .line 2357
    .local v0, "h":I
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2361
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->calculateCameraShift()V

    goto :goto_0
.end method

.method private setPanelIcon(I)V
    .locals 2
    .param p1, "ic_resource"    # I

    .prologue
    const/4 v1, 0x2

    .line 794
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 796
    :cond_0
    return-void
.end method

.method private setPanelVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2382
    iget-boolean v0, p0, Lcom/itim/explorer/ui/MapActivity;->poiListIsReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itim/explorer/ui/MapActivity;->mapIsReady:Z

    if-eqz v0, :cond_1

    .line 2383
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2384
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setEnabled(Z)V

    .line 2385
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->setBottomSliderHeight(I)V

    .line 2387
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2389
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->showPanel()V

    .line 2391
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->anchorPanel()V

    .line 2393
    :cond_0
    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->firstpanelcheck:Z

    .line 2399
    :cond_1
    :goto_0
    return-void

    .line 2396
    :cond_2
    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->firstpanelcheck:Z

    .line 2397
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hidePanel()V

    goto :goto_0
.end method

.method private setupBottomSlider()V
    .locals 3

    .prologue
    .line 656
    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sput-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 657
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAnchorPoint(F)V

    .line 658
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hidePanel()V

    .line 659
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setOverlayed(Z)V

    .line 661
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setEnabled(Z)V

    .line 662
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v2, 0x7f0b0141

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 671
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "panel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/itim/explorer/ui/MapActivity$3;-><init>(Lcom/itim/explorer/ui/MapActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 688
    sget-object v1, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$4;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$4;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 740
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/ui/widget/LoadMoreListView;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    .line 741
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mPOIScrollView:Lcom/itim/explorer/ui/widget/LoadMoreListView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$5;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$5;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/widget/LoadMoreListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 761
    return-void
.end method

.method private setupGoogleMap()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L

    const/4 v7, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0092

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 542
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 543
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 544
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 545
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 546
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 547
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 548
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 550
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 551
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/itim/explorer/provider/CurrentLocationProvider;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itim/explorer/provider/CurrentLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V

    .line 553
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 555
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 556
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_latlong_animate"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "extra_latlong_animate"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 569
    :cond_0
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/itim/explorer/ui/MapActivity$2;

    invoke-direct {v5, p0}, Lcom/itim/explorer/ui/MapActivity$2;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 598
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 608
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_near_left"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_near_left"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 611
    .local v3, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_far_right"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 613
    .local v0, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    div-double/2addr v4, v10

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    div-double/2addr v6, v10

    iget-wide v8, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v6, v8

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 618
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v5, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelDefault:F

    invoke-static {v1, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 627
    .end local v0    # "farRight":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v3    # "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_location"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_map_location"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 623
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v6, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelDefault:F

    invoke-static {v5, v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method private setupMapLogic()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v10, 0x0

    .line 860
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    .line 861
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/itim/explorer/util/UIUtil;->getPixelsFromDp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/itim/explorer/ui/widget/MapWrapperLayout;->init(Lcom/google/android/gms/maps/GoogleMap;I)V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->firstCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 864
    const/4 v0, 0x3

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->countToShowErrorNotFound:I

    .line 865
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->showBookmarks()V

    .line 866
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateCurrentLocation()V

    .line 867
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    packed-switch v0, :pswitch_data_0

    .line 1038
    :goto_0
    :pswitch_0
    return-void

    .line 869
    :pswitch_1
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hidePanel()V

    .line 870
    :cond_0
    iput-boolean v5, p0, Lcom/itim/explorer/ui/MapActivity;->firstpanelcheck:Z

    .line 871
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iput-boolean v8, p0, Lcom/itim/explorer/ui/MapActivity;->mIsShowDirection:Z

    .line 874
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->prepareMapForUpdate()V

    .line 876
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_map_poi"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/io/model/POI;

    .line 877
    .local v7, "poi":Lcom/itim/explorer/io/model/POI;
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v8

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v3

    invoke-static {v3}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 885
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v8

    invoke-direct {v1, v3, v4, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v3, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelDefault:F

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 890
    .local v2, "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    new-instance v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    iget-boolean v4, p0, Lcom/itim/explorer/ui/MapActivity;->mIsShowDirection:Z

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/itim/explorer/ui/widget/MapWrapperLayout;ZLcom/itim/explorer/interfaces/MapActivityListener;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    .line 893
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mPoiInfoWindowAdapter:Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 894
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/itim/explorer/ui/MapActivity$6;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/MapActivity$6;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 903
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 905
    :cond_1
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateDiretionText()V

    goto/16 :goto_0

    .line 912
    .end local v2    # "poilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itim/explorer/io/model/POI;>;"
    .end local v7    # "poi":Lcom/itim/explorer/io/model/POI;
    :pswitch_2
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    if-eq v0, v4, :cond_2

    .line 917
    :cond_2
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->loadPOIs()V

    goto/16 :goto_0

    .line 964
    :pswitch_3
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    if-eq v0, v4, :cond_3

    .line 967
    :cond_3
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->loadPOIs()V

    .line 977
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v6, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Map type"

    const-string v1, "Category"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v0, "Name"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_map_category_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v0, "Map screen"

    invoke-static {v0, v6}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 985
    .end local v6    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_map_near_left"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 986
    iput-boolean v8, p0, Lcom/itim/explorer/ui/MapActivity;->mAnimateCurrentLocation:Z

    .line 987
    :cond_4
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hidePanel()V

    .line 988
    iput-boolean v5, p0, Lcom/itim/explorer/ui/MapActivity;->firstpanelcheck:Z

    goto/16 :goto_0

    .line 992
    :pswitch_5
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_map_zoom_level"

    const/high16 v5, 0x41600000

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 997
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto/16 :goto_0

    .line 1000
    :pswitch_6
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_map_lat"

    invoke-virtual {v4, v5, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extra_map_long"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const v3, 0x7f02013e

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1007
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_map_marker_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1008
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_map_marker_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1027
    :cond_5
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_map_zoom_level"

    iget v5, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelCurrentPosition:F

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private setupSearchMenuItem()V
    .locals 4

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mVSearch:Landroid/view/View;

    .line 1334
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mVSearch:Landroid/view/View;

    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    .line 1336
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 1337
    new-instance v1, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1020014

    invoke-direct {v1, v2, v3, p0}, Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;-><init>(Landroid/content/Context;ILcom/itim/explorer/interfaces/GetLocationListener;)V

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    .line 1339
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mSearchAdapter:Lcom/itim/explorer/ui/adapter/AutoCompleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1340
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "extra_map_search_input"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_map_search_input"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mVSearch:Landroid/view/View;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1358
    .local v0, "ivSearch":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$9;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$9;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$10;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$10;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1403
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$11;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$11;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1431
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mVSearch:Landroid/view/View;

    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mIvClearSearch:Landroid/widget/ImageView;

    .line 1433
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mAtvSearch:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$12;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$12;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1452
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mIvClearSearch:Landroid/widget/ImageView;

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$13;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$13;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    new-instance v1, Lcom/itim/explorer/ui/MapActivity$14;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/MapActivity$14;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    return-void

    .line 1340
    .end local v0    # "ivSearch":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_map_search_query"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 637
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    .line 638
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 640
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 643
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    const v1, 0x7f0b00dc

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mSpinner:Landroid/widget/Spinner;

    .line 645
    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbCurrentLocation:Landroid/widget/ImageButton;

    .line 646
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbMapType:Landroid/widget/ImageButton;

    .line 648
    const v1, 0x7f0b0084

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->tvFrom:Landroid/widget/TextView;

    .line 649
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->tvTo:Landroid/widget/TextView;

    .line 651
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private showBookmarks()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000

    .line 1048
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1049
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 1050
    .local v1, "m":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 1052
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "m":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1053
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->listBookmarkedPOI:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/io/model/POI;

    .line 1054
    .local v3, "poi":Lcom/itim/explorer/io/model/POI;
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    const v6, 0x7f02006d

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 1065
    .local v2, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mHashBookmarks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1070
    .end local v2    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_1
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 1991
    const/16 v2, 0x2328

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 1993
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1994
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 1995
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 1996
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "LocationConfig"

    invoke-virtual {v1, v2, v3}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1999
    .end local v1    # "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    :cond_0
    return-void
.end method

.method private showPanel()V
    .locals 2

    .prologue
    .line 2411
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->setBottomSliderHeight(I)V

    .line 2413
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 2415
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2417
    :cond_0
    return-void
.end method

.method private startPeriodicUpdates()V
    .locals 9

    .prologue
    .line 1868
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1869
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 1870
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1871
    .local v1, "provider":Ljava/lang/String;
    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1872
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 1874
    .local v7, "lastKnownLocation":Landroid/location/Location;
    invoke-static {v7}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v2}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1879
    :cond_1
    iput-object v7, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    goto :goto_0

    .line 1882
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private stopPeriodicUpdates()V
    .locals 2

    .prologue
    .line 1885
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1886
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1887
    return-void
.end method

.method private switchPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 769
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->anchorPanel()V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 778
    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->collapsePanel()V

    goto :goto_0

    .line 780
    :cond_2
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 781
    :cond_4
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private toDirection(Landroid/location/Location;Ljava/lang/Class;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1638
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 1639
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/itim/explorer/util/LocationUtils;->showNoLocationDialog(Landroid/content/Context;Z)V

    .line 1696
    :goto_0
    return-void

    .line 1644
    :cond_0
    invoke-static {p1}, Lcom/itim/explorer/util/LocationUtils;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 1645
    .local v0, "currentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1646
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "extra_screen_title"

    const v5, 0x7f0e0111

    invoke-virtual {p0, v5}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v4, "extra_map_type"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1648
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getSelectedPOI()Lcom/itim/explorer/io/model/POI;

    move-result-object v3

    .line 1649
    .local v3, "poi":Lcom/itim/explorer/io/model/POI;
    const-string v4, "extra_map_poi"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1652
    const-string v4, "load_des_mode"

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1653
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1654
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    if-eqz v4, :cond_2

    .line 1655
    const-string v4, "extra_direction_to"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1658
    const-string v4, "To"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    if-eqz v0, :cond_1

    .line 1661
    const-string v4, "extra_direction_from"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1663
    const-string v4, "From"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    :cond_1
    :goto_1
    const-string v4, "Screen"

    const-string v5, "Map screen"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1693
    :goto_2
    const-string v4, "Go to navigation"

    invoke-static {v4, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1694
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1695
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1667
    :cond_2
    if-eqz v0, :cond_3

    .line 1668
    const-string v4, "extra_direction_to"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1670
    const-string v4, "To"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    :cond_3
    const-string v4, "extra_direction_from"

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1676
    const-string v4, "From"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1685
    :pswitch_0
    const-string v4, "Type"

    const-string v5, "Car"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1688
    :pswitch_1
    const-string v4, "Type"

    const-string v5, "Walk"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAccuracy(FZ)V
    .locals 6
    .param p1, "accuracy"    # F
    .param p2, "gray"    # Z

    .prologue
    .line 1961
    if-eqz p2, :cond_0

    .line 1962
    const v2, -0xadadae

    .line 1963
    .local v2, "strokeColor":I
    const v0, 0x10525252

    .line 1969
    .local v0, "fillColor":I
    :goto_0
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v3, :cond_1

    .line 1984
    :goto_1
    return-void

    .line 1966
    .end local v0    # "fillColor":I
    .end local v2    # "strokeColor":I
    :cond_0
    const v2, -0xc45dd4

    .line 1967
    .restart local v2    # "strokeColor":I
    const v0, 0x101567d2

    .restart local v0    # "fillColor":I
    goto :goto_0

    .line 1971
    :cond_1
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1972
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    if-nez v3, :cond_2

    .line 1973
    new-instance v3, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v3

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v3

    const/high16 v4, 0x40000000

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    .line 1976
    :cond_2
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v3, :cond_3

    .line 1977
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1979
    :cond_3
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 1980
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 1981
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 1982
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 1983
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->circle:Lcom/google/android/gms/maps/model/Circle;

    goto :goto_1
.end method

.method private updateActionBar()V
    .locals 4

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_map_category_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_map_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    .line 1075
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_screen_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    invoke-static {v3}, Lcom/itim/explorer/io/model/Category;->getIconResource(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1084
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_screen_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f02012a

    invoke-static {v0, v1, v2, v3}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1082
    const/4 v0, -0x1

    iput v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCategoryID:I

    goto :goto_0
.end method

.method private updateCurrentLocation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000

    .line 1890
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 1891
    .local v0, "currentLocation":Landroid/location/Location;
    if-nez v0, :cond_1

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    invoke-static {v0}, Lcom/itim/explorer/util/LocationUtils;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1919
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_2

    .line 1920
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1921
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1923
    :cond_2
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->isCurrentLocationTooOld()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0200e8

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    const v4, 0x7f0e00f7

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 1931
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->isCurrentLocationTooOld()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/itim/explorer/ui/MapActivity;->updateAccuracy(FZ)V

    .line 1945
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->mAnimateCurrentLocation:Z

    if-eqz v2, :cond_0

    .line 1946
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v3, p0, Lcom/itim/explorer/ui/MapActivity;->zoomLevelDefault:F

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1948
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->mAnimateCurrentLocation:Z

    goto :goto_0

    .line 1923
    :cond_3
    const v2, 0x7f0200e7

    goto :goto_1
.end method

.method private updateDiretionText()V
    .locals 4

    .prologue
    const v3, 0x7f0e00eb

    .line 1727
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getSelectedPOI()Lcom/itim/explorer/io/model/POI;

    move-result-object v0

    .line 1728
    .local v0, "poi":Lcom/itim/explorer/io/model/POI;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 1729
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-boolean v2, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    if-eqz v2, :cond_1

    .line 1730
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->tvFrom:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->tvTo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    :goto_1
    return-void

    .line 1728
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1733
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->tvFrom:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->tvTo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MapActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public changeMapMode(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1815
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Button"

    const-string v2, "Change map view"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    const-string v1, "Press screen button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1817
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 1819
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbMapType:Landroid/widget/ImageButton;

    const v2, 0x7f020132

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1825
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 1822
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbMapType:Landroid/widget/ImageButton;

    const v2, 0x7f020130

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2194
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 2195
    .local v3, "v":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2197
    .local v1, "ret":Z
    instance-of v7, v3, Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    .line 2199
    .local v4, "w":Landroid/view/View;
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2200
    .local v2, "scrcoords":[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v8, v2, v9

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 2202
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v8, v2, v10

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 2203
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v10, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-gez v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 2207
    :cond_0
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2208
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2212
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "scrcoords":[I
    .end local v4    # "w":Landroid/view/View;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    return v1
.end method

.method public getLatLngBounds()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    .line 2116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public goToAR(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1811
    return-void
.end method

.method public goToCurrentLocation(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1790
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Button"

    const-string v3, "User location"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    const-string v2, "Press screen button"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1792
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 1793
    .local v1, "lc":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 1796
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1798
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 2004
    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itim/explorer/ui/MapActivity;->updateAccuracy(FZ)V

    .line 2005
    return-void
.end method

.method public onAddPOI(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1830
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    const-string v1, "Button"

    const-string v2, "Add POI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    const-string v1, "Press screen button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1833
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/itim/explorer/ui/AddPOIActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/MapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1834
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    .line 1835
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1762
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itim/explorer/ui/MapActivity;->isPanelHidden()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v0, v1, :cond_1

    .line 1765
    :cond_0
    sget-object v0, Lcom/itim/explorer/ui/MapActivity;->mSlidingLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 1770
    :goto_0
    return-void

    .line 1767
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1768
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 7
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    const/4 v6, 0x1

    .line 1503
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1504
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Screen"

    const-string v5, "Map screen"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string v4, "Camera change"

    invoke-static {v4, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1506
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->firstCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    if-nez v4, :cond_1

    .line 1507
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->firstCameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 1541
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1510
    :cond_1
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hideSearchItem()V

    .line 1511
    iget v4, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    packed-switch v4, :pswitch_data_0

    .line 1521
    :pswitch_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1523
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    .line 1524
    .local v1, "farRight":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v4

    iget-object v3, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    .line 1527
    .local v3, "nearLeft":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1528
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "extra_map_near_left"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1529
    const-string v4, "extra_map_far_right"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1530
    const-string v4, "extra_map_location"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1533
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/LoadPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_2

    .line 1535
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v4, v6}, Lcom/itim/explorer/io/LoadPOI;->cancel(Z)Z

    .line 1536
    :cond_2
    new-instance v4, Lcom/itim/explorer/io/LoadPOI;

    iget-object v5, p0, Lcom/itim/explorer/ui/MapActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoad;

    invoke-direct {v4, v5}, Lcom/itim/explorer/io/LoadPOI;-><init>(Lcom/itim/explorer/interfaces/ILoad;)V

    iput-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    .line 1537
    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    new-array v5, v6, [Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/itim/explorer/io/LoadPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1511
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 805
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 806
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->configureInterfaceChanges()V

    .line 807
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 480
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 481
    const v3, 0x7f04001f

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MapActivity;->setContentView(I)V

    .line 482
    sget-object v3, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v3, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 484
    const-string v3, "Map screen"

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 486
    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mPgbLoading:Landroid/view/View;

    .line 487
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b0098

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/ui/POIListSliderFragment;

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->bottomSlider:Lcom/itim/explorer/ui/POIListSliderFragment;

    .line 489
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_map_search_input"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_map_search_query"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateActionBar()V

    .line 491
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setupBottomSlider()V

    .line 492
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getBookmarks()V

    .line 493
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->servicesConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setupViews()V

    .line 495
    iput-boolean v8, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    .line 496
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mHdlrShortListPOI:Landroid/os/Handler;

    .line 497
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setupGoogleMap()V

    .line 498
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 499
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "sharePost":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    const/4 v3, 0x7

    iput v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    .line 503
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "strLatLngs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const v5, 0x7f02013e

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    iput-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapIntentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 515
    .end local v1    # "sharePost":Ljava/lang/String;
    .end local v2    # "strLatLngs":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setupMapLogic()V

    .line 518
    .end local v0    # "data":Landroid/net/Uri;
    :cond_2
    return-void

    .line 513
    .restart local v0    # "data":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_map_type"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1236
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->mMenu:Landroid/view/Menu;

    .line 1237
    iget v2, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    .line 1240
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1241
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setupSearchMenuItem()V

    .line 1242
    const v2, 0x7f0e0143

    invoke-interface {p1, v5, v4, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020145

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/MapActivity;->mVSearch:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1251
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1252
    .local v1, "searchItem":Landroid/view/MenuItem;
    new-instance v2, Lcom/itim/explorer/ui/MapActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/itim/explorer/ui/MapActivity$8;-><init>(Lcom/itim/explorer/ui/MapActivity;Landroid/view/Menu;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1310
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_map_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1311
    .local v0, "mapType":I
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1312
    const v2, 0x7f0e0114

    invoke-interface {p1, v5, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200f5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1320
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1324
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    invoke-virtual {v0}, Lcom/itim/explorer/io/LoadPOI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mLoadPOIs:Lcom/itim/explorer/io/LoadPOI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itim/explorer/io/LoadPOI;->cancel(Z)Z

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    .line 1173
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1174
    return-void
.end method

.method public onDirection()V
    .locals 5

    .prologue
    .line 1555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1556
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    const-string v3, "Direction"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const-string v2, "Click on infowindow"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1558
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    .line 1559
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 1561
    .local v1, "location":Landroid/location/Location;
    if-nez v1, :cond_1

    .line 1580
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 1563
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    const-class v2, Lcom/itim/explorer/ui/DirectionActivity;

    invoke-direct {p0, v1, v2}, Lcom/itim/explorer/ui/MapActivity;->toDirection(Landroid/location/Location;Ljava/lang/Class;)V

    goto :goto_0

    .line 1574
    .end local v1    # "location":Landroid/location/Location;
    :cond_2
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1575
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDirection(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1605
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1607
    :sswitch_0
    iget-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->mFromCurrent:Z

    .line 1608
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateDiretionText()V

    goto :goto_0

    .line 1607
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1616
    :sswitch_1
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->vDirection:Landroid/view/View;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05000c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1623
    :sswitch_2
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 1624
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1627
    const-class v1, Lcom/itim/explorer/ui/MapNavigationActivity;

    invoke-direct {p0, v0, v1}, Lcom/itim/explorer/ui/MapActivity;->toDirection(Landroid/location/Location;Ljava/lang/Class;)V

    goto :goto_0

    .line 1605
    :sswitch_data_0
    .sparse-switch
        0x7f0b0081 -> :sswitch_0
        0x7f0b00d9 -> :sswitch_1
        0x7f0b00db -> :sswitch_2
    .end sparse-switch
.end method

.method public onGetResultList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onInfoWindowsClick(Lcom/itim/explorer/io/model/POI;)V
    .locals 3
    .param p1, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 1586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1587
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "POI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const-string v1, "POI"

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-string v1, "Click on infowindow"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1590
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/MapActivity;->goToPOIDetails(Lcom/itim/explorer/io/model/POI;)V

    .line 1591
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 522
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hideSearchItem()V

    .line 524
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->switchPanel()V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "Button"

    const-string v2, "Menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    .restart local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v1, "Button"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 536
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1839
    if-eqz p1, :cond_0

    .line 1840
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    .line 1844
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateCurrentLocation()V

    .line 1845
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 1701
    const-string v0, "Click on map"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 1702
    iget v0, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    .line 1705
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->hideSearchItem()V

    .line 1706
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 1709
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->setMapControlVisible(I)V

    .line 1710
    return-void
.end method

.method public onMapLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2371
    iput-boolean v1, p0, Lcom/itim/explorer/ui/MapActivity;->mapIsReady:Z

    .line 2374
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->setPanelVisibility()V

    .line 2375
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 2376
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 2377
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 2121
    const-string v0, "Long click on map"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 2122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0152

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/itim/explorer/ui/MapActivity$17;-><init>(Lcom/itim/explorer/ui/MapActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00fe

    new-instance v2, Lcom/itim/explorer/ui/MapActivity$16;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/MapActivity$16;-><init>(Lcom/itim/explorer/ui/MapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 1178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1179
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Map screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1230
    :goto_0
    return v3

    .line 1182
    :sswitch_0
    const-string v1, "Button"

    const-string v2, "Home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string v1, "Click actionbar button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1184
    iget v1, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    packed-switch v1, :pswitch_data_0

    .line 1198
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 1199
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 1186
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->onBackPressed()V

    goto :goto_0

    .line 1224
    :sswitch_1
    const-string v1, "Button"

    const-string v2, "Button in top right corner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v1, "Click actionbar button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1226
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->switchPanel()V

    goto :goto_0

    .line 1180
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch

    .line 1184
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1129
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1132
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1133
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1134
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->stopPeriodicUpdates()V

    .line 1136
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1859
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->isCurrentLocationTooOld()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/itim/explorer/ui/MapActivity;->updateAccuracy(FZ)V

    .line 1864
    return-void

    .line 1859
    :cond_1
    const v0, 0x453b8000

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1854
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/MapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->isCurrentLocationTooOld()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/itim/explorer/ui/MapActivity;->updateAccuracy(FZ)V

    .line 1855
    return-void

    .line 1854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1109
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1110
    invoke-virtual {p0}, Lcom/itim/explorer/ui/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1117
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->startPeriodicUpdates()V

    .line 1118
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->getBookmarks()V

    .line 1119
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->showBookmarks()V

    .line 1125
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 2011
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 1140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 1141
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 1142
    const-string v2, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v2}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1145
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Map type"

    iget v3, p0, Lcom/itim/explorer/ui/MapActivity;->mMapType:I

    invoke-static {v3}, Lcom/itim/explorer/util/Util;->getMapTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 1148
    iget-object v2, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v2

    iget-object v1, v2, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1149
    .local v1, "visible":Lcom/google/android/gms/maps/model/LatLngBounds;
    const-string v2, "Borders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    const-string v2, "Camera zoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itim/explorer/ui/MapActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .end local v1    # "visible":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "Map screen"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1153
    :cond_1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1850
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 1158
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 1159
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1160
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 801
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->configureInterfaceChanges()V

    .line 802
    return-void
.end method

.method protected selectMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 631
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mHashPoiMarker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/itim/explorer/ui/MapActivity;->updateDiretionText()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mSelectedMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 634
    return-void
.end method

.method public setMapControlVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbCurrentLocation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2188
    iget-object v0, p0, Lcom/itim/explorer/ui/MapActivity;->mImgbMapType:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2189
    return-void
.end method
