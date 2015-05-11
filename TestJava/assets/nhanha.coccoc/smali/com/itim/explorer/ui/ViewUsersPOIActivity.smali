.class public Lcom/itim/explorer/ui/ViewUsersPOIActivity;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "ViewUsersPOIActivity.java"


# static fields
.field public static final ARG_USERSPOI:Ljava/lang/String; = "arg_userspoi"


# instance fields
.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private ivPhoto:Landroid/widget/ImageView;

.field private mBtnAddPhoto:Landroid/widget/ImageButton;

.field private mBtnClearPhoto:Landroid/widget/ImageButton;

.field private mBtnSave:Landroid/widget/Button;

.field private mEtAddress:Landroid/widget/EditText;

.field private mEtPhone:Landroid/widget/EditText;

.field private mEtTitle:Landroid/widget/EditText;

.field private mEtWeb:Landroid/widget/EditText;

.field private mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

.field private mILoadCateBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

.field private mLlTakePhoto:Landroid/view/View;

.field private mMapPoi:Landroid/widget/RelativeLayout;

.field private mTvCategory:Landroid/widget/TextView;

.field private mTvCity:Landroid/widget/TextView;

.field private mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

.field private mVLoading:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    .line 181
    new-instance v0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity$1;-><init>(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mILoadCateBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

    .line 204
    new-instance v0, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity$2;-><init>(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/itim/explorer/io/model/UsersPOI;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    return-object v0
.end method

.method static synthetic access$002(Lcom/itim/explorer/ui/ViewUsersPOIActivity;Lcom/itim/explorer/io/model/UsersPOI;)Lcom/itim/explorer/io/model/UsersPOI;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;
    .param p1, "x1"    # Lcom/itim/explorer/io/model/UsersPOI;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCategory:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->createPhoto()V

    return-void
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/itim/explorer/ui/ViewUsersPOIActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/ViewUsersPOIActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mVLoading:Landroid/view/View;

    return-object v0
.end method

.method private createPhoto()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 252
    iget-object v8, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    .line 253
    .local v7, "targetW":I
    iget-object v8, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 256
    .local v6, "targetH":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 258
    iget-object v8, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/UsersPOI;->getPhoto()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 260
    .local v2, "decodedString":[B
    array-length v8, v2

    invoke-static {v2, v10, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 263
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 264
    .local v4, "photoW":I
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 267
    .local v3, "photoH":I
    const/4 v5, 0x1

    .line 268
    .local v5, "scaleFactor":I
    if-gtz v7, :cond_0

    if-lez v6, :cond_1

    .line 269
    :cond_0
    div-int v8, v4, v7

    div-int v9, v3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 273
    :cond_1
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 274
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 275
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 278
    array-length v8, v2

    invoke-static {v2, v10, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onBackPressed()V

    .line 178
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->setContentView(I)V

    .line 59
    sget-object v2, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v2, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 60
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00fd

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 65
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "arg_userspoi"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/itim/explorer/io/model/UsersPOI;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    .line 67
    const v2, 0x7f0b006c

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtTitle:Landroid/widget/EditText;

    .line 68
    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;

    .line 69
    const v2, 0x7f0b006e

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f0b006f

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCategory:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtAddress:Landroid/widget/EditText;

    .line 72
    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0b007e

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mVLoading:Landroid/view/View;

    .line 74
    const v2, 0x7f0b0077

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mLlTakePhoto:Landroid/view/View;

    .line 75
    const v2, 0x7f0b0079

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnAddPhoto:Landroid/widget/ImageButton;

    .line 76
    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnSave:Landroid/widget/Button;

    .line 77
    const v2, 0x7f0b007a

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnClearPhoto:Landroid/widget/ImageButton;

    .line 78
    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mMapPoi:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnAddPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mLlTakePhoto:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mMapPoi:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 86
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 87
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 88
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 89
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 90
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 91
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnAddPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 92
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mBtnClearPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 97
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 99
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 100
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 103
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, "tvTime":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const v2, 0x7f0b0076

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    .line 107
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 108
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 109
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 110
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtTitle:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getUrl()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getUrl()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getUrl()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getCategory()I

    move-result v2

    if-lez v2, :cond_3

    .line 127
    new-instance v2, Lcom/itim/explorer/io/LoadCategory;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mILoadCateBorder:Lcom/itim/explorer/interfaces/ILoadCategory;

    invoke-direct {v2, v3, p0}, Lcom/itim/explorer/io/LoadCategory;-><init>(Lcom/itim/explorer/interfaces/ILoadCategory;Landroid/content/Context;)V

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/itim/explorer/io/LoadCategory;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :goto_3
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/UsersPOI;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/UsersPOI;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_4
    new-instance v2, Lcom/itim/explorer/io/LoadUserPOIDetail;

    iget-object v3, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mILoad:Lcom/itim/explorer/interfaces/ILoadUsersPOI;

    iget-object v4, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mUsersPOI:Lcom/itim/explorer/io/model/UsersPOI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/UsersPOI;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "arg_uid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itim/explorer/io/LoadUserPOIDetail;-><init>(Lcom/itim/explorer/interfaces/ILoadUsersPOI;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v7, [Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/itim/explorer/io/LoadUserPOIDetail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCategory:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->mTvCity:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/ViewUsersPOIActivity;->finish()V

    .line 146
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onResume()V

    .line 157
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 167
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 168
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 173
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 174
    return-void
.end method
