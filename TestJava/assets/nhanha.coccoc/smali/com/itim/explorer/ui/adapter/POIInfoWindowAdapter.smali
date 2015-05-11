.class public Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;
.super Ljava/lang/Object;
.source "POIInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoWindowView:Landroid/widget/LinearLayout;

.field private mIsShowDirection:Z

.field private mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

.field private mMapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

.field private mPOINearbyCount:I

.field private mPOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mPOIsNearBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/itim/explorer/ui/widget/MapWrapperLayout;ZLcom/itim/explorer/interfaces/MapActivityListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "mapWrapperLayout"    # Lcom/itim/explorer/ui/widget/MapWrapperLayout;
    .param p4, "isShowDirection"    # Z
    .param p5, "mapListener"    # Lcom/itim/explorer/interfaces/MapActivityListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;",
            "Lcom/itim/explorer/ui/widget/MapWrapperLayout;",
            "Z",
            "Lcom/itim/explorer/interfaces/MapActivityListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "pOIs":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/POI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mContext:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIs:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    .line 43
    iput-boolean p4, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mIsShowDirection:Z

    .line 44
    iput-object p5, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

    .line 45
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mContext:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;)Lcom/itim/explorer/interfaces/MapActivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

    return-object v0
.end method


# virtual methods
.method public getCurrentPOINearBy()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOINearbyCount:I

    return v0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 30
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v13

    .line 61
    .local v13, "location":Lcom/google/android/gms/maps/model/LatLng;
    const-wide v8, 0x3ee4f8b588e368f1L

    .line 62
    .local v8, "eps":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itim/explorer/io/model/POI;

    .line 63
    .local v16, "poi":Lcom/itim/explorer/io/model/POI;
    invoke-virtual/range {v16 .. v16}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v5

    iget-wide v0, v13, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v28, v0

    sub-double v5, v5, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v3, v5, v8

    if-gez v3, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v5

    iget-wide v0, v13, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v28, v0

    sub-double v5, v5, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v3, v5, v8

    if-gez v3, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v16    # "poi":Lcom/itim/explorer/io/model/POI;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "mInfoButtonListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    const/4 v14, 0x0

    .line 72
    .local v14, "mInfoDirectionListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04004c

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 73
    .local v26, "viewItem":Landroid/view/View;
    const v3, 0x7f0b0125

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 75
    .local v12, "llItem":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    .local v19, "poiSize":I
    const/16 v17, 0x0

    .line 76
    .local v17, "poiCount":I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOINearbyCount:I

    .line 78
    const/4 v15, 0x0

    .line 80
    .local v15, "newMuptyPOI":Z
    if-eqz v15, :cond_5

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/itim/explorer/interfaces/MapActivityListener;->setMapControlVisible(I)V

    .line 82
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04004d

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 84
    .local v25, "viewFirstPOI":Landroid/view/View;
    const v3, 0x7f0b0127

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 85
    .local v21, "tvFirstPOIName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v3, 0x7f0b0128

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 87
    .local v20, "tvAddress":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v3, 0x7f0b012a

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 89
    .local v11, "ibtnDirection":Landroid/widget/ImageButton;
    const v3, 0x7f0b0129

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 90
    .local v23, "tvRating":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v3

    invoke-static {v3}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v3, 0x7f0b0126

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 93
    .local v4, "vLeftInfo":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mIsShowDirection:Z

    if-eqz v3, :cond_3

    .line 95
    new-instance v2, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$1;

    .end local v2    # "mInfoButtonListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    const v3, 0x7f02005a

    const v5, 0x7f02005b

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$1;-><init>(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;Landroid/view/View;II)V

    .line 105
    .restart local v2    # "mInfoButtonListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    new-instance v14, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$2;

    .end local v14    # "mInfoDirectionListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    const v3, 0x7f02005a

    const v5, 0x7f02005b

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v3, v5}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$2;-><init>(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;Landroid/view/View;II)V

    .line 116
    .restart local v14    # "mInfoDirectionListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    invoke-virtual {v11, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 132
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v27, "viewMore":Landroid/widget/TextView;
    const v3, 0x7f02006b

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " more..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/16 v3, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v28, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    const/16 v3, 0x11

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    .end local v4    # "vLeftInfo":Landroid/view/View;
    .end local v11    # "ibtnDirection":Landroid/widget/ImageButton;
    .end local v20    # "tvAddress":Landroid/widget/TextView;
    .end local v21    # "tvFirstPOIName":Landroid/widget/TextView;
    .end local v23    # "tvRating":Landroid/widget/TextView;
    .end local v25    # "viewFirstPOI":Landroid/view/View;
    .end local v27    # "viewMore":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mIsShowDirection:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;->setMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapWrapperLayout:Lcom/itim/explorer/ui/widget/MapWrapperLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/itim/explorer/ui/widget/MapWrapperLayout;->setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInfoWindowView:Landroid/widget/LinearLayout;

    :goto_2
    return-object v3

    .line 119
    .restart local v4    # "vLeftInfo":Landroid/view/View;
    .restart local v11    # "ibtnDirection":Landroid/widget/ImageButton;
    .restart local v20    # "tvAddress":Landroid/widget/TextView;
    .restart local v21    # "tvFirstPOIName":Landroid/widget/TextView;
    .restart local v23    # "tvRating":Landroid/widget/TextView;
    .restart local v25    # "viewFirstPOI":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOINearbyCount:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Lcom/itim/explorer/interfaces/MapActivityListener;->setMapControlVisible(I)V

    goto/16 :goto_1

    .line 122
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mMapListener:Lcom/itim/explorer/interfaces/MapActivityListener;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/itim/explorer/interfaces/MapActivityListener;->setMapControlVisible(I)V

    goto/16 :goto_1

    .line 141
    .end local v4    # "vLeftInfo":Landroid/view/View;
    .end local v11    # "ibtnDirection":Landroid/widget/ImageButton;
    .end local v20    # "tvAddress":Landroid/widget/TextView;
    .end local v21    # "tvFirstPOIName":Landroid/widget/TextView;
    .end local v23    # "tvRating":Landroid/widget/TextView;
    .end local v25    # "viewFirstPOI":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mPOIsNearBy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/io/model/POI;

    .line 142
    .local v7, "poiNear":Lcom/itim/explorer/io/model/POI;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04004d

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 144
    .local v24, "viewChild":Landroid/view/View;
    const v3, 0x7f0b0127

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 146
    .local v22, "tvName":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v3, 0x7f0b0128

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 149
    .restart local v20    # "tvAddress":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v3, 0x7f0b012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 156
    .restart local v11    # "ibtnDirection":Landroid/widget/ImageButton;
    const v3, 0x7f0b0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 158
    .restart local v23    # "tvRating":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v5

    invoke-static {v5}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v3, 0x7f0b0126

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 162
    .restart local v4    # "vLeftInfo":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;->mIsShowDirection:Z

    if-eqz v3, :cond_7

    .line 164
    new-instance v2, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;

    .end local v2    # "mInfoButtonListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    const v5, 0x7f02005a

    const v6, 0x7f02005b

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$3;-><init>(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;Landroid/view/View;IILcom/itim/explorer/io/model/POI;)V

    .line 174
    .restart local v2    # "mInfoButtonListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    new-instance v14, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$4;

    .end local v14    # "mInfoDirectionListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    const v3, 0x7f02005a

    const v5, 0x7f02005b

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v3, v5}, Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter$4;-><init>(Lcom/itim/explorer/ui/adapter/POIInfoWindowAdapter;Landroid/view/View;II)V

    .line 185
    .restart local v14    # "mInfoDirectionListener":Lcom/itim/explorer/ui/widget/OnInfoWindowElemTouchListener;
    invoke-virtual {v11, v14}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :goto_4
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "poiCount":I
    .local v18, "poiCount":I
    if-lez v17, :cond_6

    .line 200
    const v3, 0x7f02006b

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    :cond_6
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v17, v18

    .line 203
    .end local v18    # "poiCount":I
    .restart local v17    # "poiCount":I
    goto/16 :goto_3

    .line 187
    :cond_7
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 218
    .end local v4    # "vLeftInfo":Landroid/view/View;
    .end local v7    # "poiNear":Lcom/itim/explorer/io/model/POI;
    .end local v11    # "ibtnDirection":Landroid/widget/ImageButton;
    .end local v20    # "tvAddress":Landroid/widget/TextView;
    .end local v22    # "tvName":Landroid/widget/TextView;
    .end local v23    # "tvRating":Landroid/widget/TextView;
    .end local v24    # "viewChild":Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method
