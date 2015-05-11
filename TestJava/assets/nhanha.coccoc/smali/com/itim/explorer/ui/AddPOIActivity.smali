.class public Lcom/itim/explorer/ui/AddPOIActivity;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "AddPOIActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/itim/explorer/interfaces/AddPOIActivityListener;


# static fields
.field private static final ACTION_TAKE_PHOTO:I = 0x68

.field public static final ARG_REDIRECT_FROM_MAIN:Ljava/lang/String; = "arg_redirect_from_main"

.field private static final BIG_IMAGE:I = 0xc9

.field private static final FRAGMENT_TAG_DIALOG_CATEGORY:Ljava/lang/String; = "dialog_choose_category"

.field private static final FRAGMENT_TAG_DIALOG_CITY:Ljava/lang/String; = "dialog_choose_city"

.field private static final FRAGMENT_TAG_DIALOG_SUCCESS:Ljava/lang/String; = "dialog_success"

.field private static final JPEG_FILE_PREFIX:Ljava/lang/String; = "IMG_"

.field private static final JPEG_FILE_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final REQUEST_CHOOSE_LOCATION:I = 0x69

.field private static final SELECT_PHOTO:I = 0x67


# instance fields
.field private atAddPOI:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private failingCourse:I

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private ivPhoto:Landroid/widget/ImageView;

.field private ivRotateLeft:Landroid/widget/ImageView;

.field private ivRotateRight:Landroid/widget/ImageView;

.field private mAlbumStorageDirFactory:Lcom/itim/explorer/ui/AlbumStorageDirFactory;

.field private mBtnAddPhoto:Landroid/widget/ImageButton;

.field private mBtnClearPhoto:Landroid/widget/ImageButton;

.field private mBtnSave:Landroid/widget/Button;

.field private mCategory:Lcom/itim/explorer/io/model/Category;

.field private mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

.field private mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

.field private mCurrentLocation:Landroid/location/Location;

.field private mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mEtAddress:Landroid/widget/EditText;

.field private mEtPhone:Landroid/widget/EditText;

.field private mEtTitle:Landroid/widget/EditText;

.field private mEtWeb:Landroid/widget/EditText;

.field private mImageDegee:F

.field private mIsFristSize:Z

.field private mIsRedirectFromMain:Z

.field private mLPhoto:Landroid/view/View;

.field private mLatPicture:D

.field private mLlTakePhoto:Landroid/view/View;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLongPicture:D

.field private mPOIErrorDialog:Lcom/itim/explorer/ui/AddPOIErrorDialog;

.field private mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

.field private mPhotoFilePath:Ljava/lang/String;

.field private mRlMap:Landroid/widget/RelativeLayout;

.field private mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private mTvCategory:Landroid/widget/TextView;

.field private mTvCity:Landroid/widget/TextView;

.field private mUid:Ljava/lang/String;

.field private mVLoading:Landroid/view/View;

.field private mZoomLevel:F

.field private statusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    .line 94
    const/high16 v0, 0x41400000

    iput v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mZoomLevel:F

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/itim/explorer/ui/AddPOIActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/AddPOIActivity$1;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mImageDegee:F

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mAlbumStorageDirFactory:Lcom/itim/explorer/ui/AlbumStorageDirFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->retriveAuthName()V

    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/itim/explorer/ui/AddPOIActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLatPicture:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/itim/explorer/ui/AddPOIActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLongPicture:D

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mVLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->showAddSusscessDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/itim/explorer/ui/AddPOIActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->failingCourse:I

    return v0
.end method

.method static synthetic access$1700(Lcom/itim/explorer/ui/AddPOIActivity;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/itim/explorer/ui/AddPOIActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/itim/explorer/ui/AddPOIActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->updateUI(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/itim/explorer/ui/AddPOIActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mIsFristSize:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/itim/explorer/ui/AddPOIActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mIsFristSize:Z

    return p1
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->imageToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/itim/explorer/ui/AddPOIActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/itim/explorer/ui/AddPOIActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/itim/explorer/ui/AddPOIActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/itim/explorer/ui/AddPOIActivity;)Lcom/itim/explorer/io/model/Category;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/AddPOIActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;

    return-object v0
.end method

.method private addPOI()V
    .locals 2

    .prologue
    .line 680
    new-instance v0, Lcom/itim/explorer/ui/AddPOIActivity$6;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/AddPOIActivity$6;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    .line 761
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 762
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 609
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 610
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 611
    .local v4, "width":I
    const/4 v3, 0x1

    .line 613
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 615
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 616
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 622
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 623
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 627
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private createImageFile()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "imageFileName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getAlbumDir()Ljava/io/File;

    move-result-object v0

    .line 884
    .local v0, "albumF":Ljava/io/File;
    const-string v4, ".jpg"

    invoke-static {v2, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 886
    .local v1, "imageF":Ljava/io/File;
    return-object v1
.end method

.method private createPhoto()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 944
    const/4 v8, 0x0

    iput v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mImageDegee:F

    .line 945
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    iget v9, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mImageDegee:F

    invoke-static {v8, v9}, Lcom/itim/explorer/util/UIUtil;->rotateImage(Landroid/widget/ImageView;F)V

    .line 952
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 953
    .local v6, "targetW":I
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 956
    .local v5, "targetH":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 957
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 958
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 959
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 960
    .local v3, "photoW":I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 963
    .local v2, "photoH":I
    const/4 v4, 0x1

    .line 964
    .local v4, "scaleFactor":I
    if-gtz v6, :cond_0

    if-lez v5, :cond_1

    .line 965
    :cond_0
    div-int v8, v3, v6

    div-int v9, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 969
    :cond_1
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 970
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 971
    iput-boolean v11, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 974
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 977
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 978
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->requestLayout()V

    .line 979
    iput-boolean v11, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mIsFristSize:Z

    .line 980
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 981
    .local v7, "vto":Landroid/view/ViewTreeObserver;
    new-instance v8, Lcom/itim/explorer/ui/AddPOIActivity$7;

    invoke-direct {v8, p0}, Lcom/itim/explorer/ui/AddPOIActivity$7;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 991
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLlTakePhoto:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnClearPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 993
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateLeft:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateRight:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    return-void
.end method

.method private filterLetterDigitSymbol([C)[Landroid/text/InputFilter;
    .locals 3
    .param p1, "allowed"    # [C

    .prologue
    .line 277
    new-instance v0, Lcom/itim/explorer/ui/AddPOIActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity$5;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;[C)V

    .line 303
    .local v0, "filter":Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private galleryAddPic()V
    .locals 4

    .prologue
    .line 1000
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1004
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1006
    return-void
.end method

.method private getAlbumDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 907
    .local v0, "storageDir":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mAlbumStorageDirFactory:Lcom/itim/explorer/ui/AlbumStorageDirFactory;

    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/AlbumStorageDirFactory;->getAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 915
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    const-string v1, "Photo"

    const-string v2, "failed to create directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v1, 0x0

    .line 927
    :goto_0
    return-object v1

    .line 923
    :cond_0
    const v1, 0x7f0e0020

    invoke-virtual {p0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "External storage is not mounted READ/WRITE."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v0

    .line 927
    goto :goto_0
.end method

.method private getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/AddPOIActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBigCameraPhoto()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->createPhoto()V

    .line 937
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->galleryAddPic()V

    .line 941
    :cond_0
    return-void
.end method

.method private final imageToString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 804
    const/4 v7, 0x0

    .line 805
    .local v7, "result":Ljava/lang/String;
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 806
    const/16 v6, 0x320

    .line 807
    .local v6, "reqWidth":I
    const/16 v5, 0x258

    .line 808
    .local v5, "reqHeight":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 809
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 810
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 811
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 812
    invoke-static {v4, v6, v5}, Lcom/itim/explorer/ui/AddPOIActivity;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 813
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 814
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 816
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v2, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 818
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 819
    .local v0, "b":[B
    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 827
    .end local v0    # "b":[B
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 829
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "reqHeight":I
    .end local v6    # "reqWidth":I
    :cond_0
    return-object v7

    .line 820
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "reqHeight":I
    .restart local v6    # "reqWidth":I
    :catch_0
    move-exception v3

    .line 821
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "Photo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageToString(), image to string failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 823
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 824
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xc9

    iput v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->failingCourse:I

    .line 825
    const-string v8, "Photo"

    const-string v9, "imageToString(), Out of memory error catched"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private retriveAuthName()V
    .locals 4

    .prologue
    .line 1009
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 1010
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    new-instance v2, Lcom/itim/explorer/ui/AddPOIActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/itim/explorer/ui/AddPOIActivity$8;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;Lcom/facebook/Session;)V

    invoke-static {v1, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 1026
    .local v0, "request":Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 1030
    .end local v0    # "request":Lcom/facebook/Request;
    :goto_0
    return-void

    .line 1028
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setStatusToView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isError"    # Z

    .prologue
    .line 1151
    if-eqz p2, :cond_0

    const v0, 0x7f020173

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1153
    return-void

    .line 1151
    :cond_0
    const v0, 0x7f020172

    goto :goto_0
.end method

.method private setUpPhotoFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->createImageFile()Ljava/io/File;

    move-result-object v0

    .line 892
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    .line 894
    return-object v0
.end method

.method private showAddSusscessDialog()V
    .locals 4

    .prologue
    .line 767
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    if-nez v2, :cond_0

    .line 768
    new-instance v2, Lcom/itim/explorer/ui/AddPOISusscessDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/AddPOISusscessDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    .line 769
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->setListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V

    .line 770
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->setCancelable(Z)V

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 773
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_success"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 775
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 778
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 779
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIListDialog:Lcom/itim/explorer/ui/AddPOISusscessDialog;

    const-string v3, "dialog_success"

    invoke-virtual {v2, v0, v3}, Lcom/itim/explorer/ui/AddPOISusscessDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 780
    return-void
.end method

.method private showErrorDialog()V
    .locals 5

    .prologue
    .line 785
    iget v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->failingCourse:I

    packed-switch v2, :pswitch_data_0

    .line 795
    new-instance v2, Lcom/itim/explorer/ui/AddPOIErrorDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/AddPOIErrorDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIErrorDialog:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 799
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIErrorDialog:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    const-string v3, "dialog_error"

    invoke-virtual {v2, v1, v3}, Lcom/itim/explorer/ui/AddPOIErrorDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 800
    return-void

    .line 787
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_0
    new-instance v2, Lcom/itim/explorer/ui/AddPOIErrorDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/AddPOIErrorDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIErrorDialog:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 789
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "string_id"

    const-wide/32 v3, 0x7f0e00b5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 790
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPOIErrorDialog:Lcom/itim/explorer/ui/AddPOIErrorDialog;

    invoke-virtual {v2, v0}, Lcom/itim/explorer/ui/AddPOIErrorDialog;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 1140
    const/16 v2, 0x2328

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 1142
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1143
    new-instance v1, Lcom/itim/explorer/ui/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/itim/explorer/ui/ErrorDialogFragment;-><init>()V

    .line 1144
    .local v1, "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    invoke-virtual {v1, v0}, Lcom/itim/explorer/ui/ErrorDialogFragment;->setDialog(Landroid/app/Dialog;)V

    .line 1145
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "LocationConfig"

    invoke-virtual {v1, v2, v3}, Lcom/itim/explorer/ui/ErrorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1148
    .end local v1    # "errorFragment":Lcom/itim/explorer/ui/ErrorDialogFragment;
    :cond_0
    return-void
.end method

.method private startPeriodicUpdates()V
    .locals 9

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 1107
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

    .line 1108
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x5dc

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1109
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 1111
    .local v7, "lastKnownLocation":Landroid/location/Location;
    invoke-static {v7}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v0}, Lcom/itim/explorer/util/LocationUtils;->isLocationValid(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1116
    :cond_1
    iput-object v7, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    goto :goto_0

    .line 1118
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private stopPeriodicUpdates()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1122
    return-void
.end method

.method private updateCurrentLocation()V
    .locals 4

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/itim/explorer/util/LocationUtils;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 1127
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    .line 1129
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mZoomLevel:F

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1131
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->stopPeriodicUpdates()V

    .line 1137
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mZoomLevel:F

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method private updateUI(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 834
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 836
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 837
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCategory:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 838
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 840
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnAddPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnClearPhoto:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 843
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 536
    const/16 v0, 0x2328

    if-ne p1, v0, :cond_1

    .line 537
    packed-switch p2, :pswitch_data_0

    .line 601
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 604
    :cond_0
    return-void

    .line 548
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 549
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 550
    .local v8, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 552
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 553
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 554
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 556
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 561
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    .line 563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 564
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 565
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->createPhoto()V

    .line 567
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v3, "Boolean"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v0, "Image is picked"

    invoke-static {v0, v8}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 567
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 571
    :pswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 572
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->handleBigCameraPhoto()V

    .line 574
    :cond_4
    const-string v3, "Boolean"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v0, "Photo is taken"

    invoke-static {v0, v8}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 574
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 580
    :pswitch_3
    if-eqz p3, :cond_0

    .line 582
    const-string v0, "arg_choosed_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/LatLng;

    .line 584
    .local v9, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p3, :cond_7

    .line 585
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_6

    .line 586
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    const v4, 0x7f02013e

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 591
    :cond_6
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 592
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    .line 593
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mZoomLevel:F

    invoke-static {v9, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 596
    :cond_7
    const-string v3, "Boolean"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v0, "Location is choosed"

    invoke-static {v0, v8}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 596
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 537
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 550
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onBackPressed()V

    .line 327
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onChooseCategory(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 846
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    if-nez v2, :cond_0

    .line 847
    new-instance v2, Lcom/itim/explorer/ui/CategoryChooseDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/CategoryChooseDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    .line 848
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/CategoryChooseDialog;->setmListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 851
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_choose_category"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 853
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 854
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 856
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 857
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    const-string v3, "dialog_choose_category"

    invoke-virtual {v2, v0, v3}, Lcom/itim/explorer/ui/CategoryChooseDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 858
    return-void
.end method

.method public onChooseCity(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 861
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    if-nez v3, :cond_0

    .line 862
    new-instance v3, Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-direct {v3}, Lcom/itim/explorer/ui/CityChooseDialog;-><init>()V

    iput-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 864
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "arg_not_set_current_city"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-virtual {v3, v0}, Lcom/itim/explorer/ui/CityChooseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 866
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-virtual {v3, p0}, Lcom/itim/explorer/ui/CityChooseDialog;->setAddPOIListener(Lcom/itim/explorer/interfaces/AddPOIActivityListener;)V

    .line 868
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 869
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_choose_city"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 871
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 872
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 874
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 875
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    const-string v4, "dialog_choose_city"

    invoke-virtual {v3, v1, v4}, Lcom/itim/explorer/ui/CityChooseDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 876
    return-void
.end method

.method public onClearPhoto(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 499
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Add POI screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "Button"

    const-string v2, "Clear picture"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "Press screen button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    const-string v1, ""

    iput-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    .line 504
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLlTakePhoto:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onPickPhoto(Landroid/view/View;)V

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onChooseCategory(Landroid/view/View;)V

    goto :goto_0

    .line 339
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onChooseCity(Landroid/view/View;)V

    goto :goto_0

    .line 342
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onTakePhoto(Landroid/view/View;)V

    goto :goto_0

    .line 345
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onClearPhoto(Landroid/view/View;)V

    goto :goto_0

    .line 348
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onRotateLeft(Landroid/view/View;)V

    goto :goto_0

    .line 351
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onRotateRight(Landroid/view/View;)V

    goto :goto_0

    .line 354
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/itim/explorer/ui/AddPOIActivity;->onSavePlace(Landroid/view/View;)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x7f0b006f
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget-object v8, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v8, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 146
    const v8, 0x7f04001a

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 148
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "android.hardware.camera"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.hardware.camera.front"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    const/4 v3, 0x1

    .line 150
    .local v3, "hasCompass":Z
    :goto_0
    if-nez v3, :cond_1

    .line 151
    const v8, 0x7f0b0078

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_1
    sget-object v8, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v8}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 155
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v7

    .line 156
    .local v7, "session":Lcom/facebook/Session;
    if-nez v7, :cond_4

    .line 157
    if-eqz p1, :cond_2

    .line 158
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/itim/explorer/ui/AddPOIActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v8, v9, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v7

    .line 161
    :cond_2
    if-nez v7, :cond_3

    .line 162
    new-instance v7, Lcom/facebook/Session;

    .end local v7    # "session":Lcom/facebook/Session;
    invoke-direct {v7, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v7    # "session":Lcom/facebook/Session;
    :cond_3
    invoke-static {v7}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 165
    invoke-virtual {v7}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v8

    sget-object v9, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v8, v9}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    new-instance v8, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v8, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v9, p0, Lcom/itim/explorer/ui/AddPOIActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e0017

    invoke-virtual {p0, v10}, Lcom/itim/explorer/ui/AddPOIActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 173
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "arg_redirect_from_main"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mIsRedirectFromMain:Z

    .line 178
    const v8, 0x7f0b006c

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    .line 179
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    new-instance v9, Lcom/itim/explorer/ui/AddPOIActivity$2;

    invoke-direct {v9, p0}, Lcom/itim/explorer/ui/AddPOIActivity$2;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    const v8, 0x7f0b006d

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    .line 187
    const v8, 0x7f0b006e

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    .line 188
    const v8, 0x7f0b006f

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCategory:Landroid/widget/TextView;

    .line 189
    const v8, 0x7f0b0070

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    .line 190
    const v8, 0x7f0b0071

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;

    .line 191
    const v8, 0x7f0b0072

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mRlMap:Landroid/widget/RelativeLayout;

    .line 192
    const v8, 0x7f0b007e

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mVLoading:Landroid/view/View;

    .line 193
    const v8, 0x7f0b0077

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLlTakePhoto:Landroid/view/View;

    .line 194
    const v8, 0x7f0b0075

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    .line 195
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 196
    .local v5, "observer":Landroid/view/ViewTreeObserver;
    new-instance v8, Lcom/itim/explorer/ui/AddPOIActivity$3;

    invoke-direct {v8, p0}, Lcom/itim/explorer/ui/AddPOIActivity$3;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    const v8, 0x7f0b0079

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnAddPhoto:Landroid/widget/ImageButton;

    .line 207
    const v8, 0x7f0b007d

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnSave:Landroid/widget/Button;

    .line 208
    const v8, 0x7f0b007a

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mBtnClearPhoto:Landroid/widget/ImageButton;

    .line 209
    const v8, 0x7f0b007b

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateLeft:Landroid/widget/ImageView;

    .line 210
    const v8, 0x7f0b007c

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivRotateRight:Landroid/widget/ImageView;

    .line 211
    const v8, 0x7f0b0076

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    .line 217
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-lt v8, v9, :cond_6

    .line 218
    new-instance v8, Lcom/itim/explorer/ui/FroyoAlbumDirFactory;

    invoke-direct {v8}, Lcom/itim/explorer/ui/FroyoAlbumDirFactory;-><init>()V

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mAlbumStorageDirFactory:Lcom/itim/explorer/ui/AlbumStorageDirFactory;

    .line 222
    :goto_1
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->clearFocus()V

    .line 226
    const/16 v8, 0xa

    new-array v1, v8, [C

    fill-array-data v1, :array_0

    .line 227
    .local v1, "allowedTitleSymbols":[C
    const/4 v8, 0x6

    new-array v0, v8, [C

    fill-array-data v0, :array_1

    .line 228
    .local v0, "allowedAddressSymbols":[C
    const/4 v8, 0x3

    new-array v2, v8, [C

    fill-array-data v2, :array_2

    .line 229
    .local v2, "allowedWebSymbols":[C
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->filterLetterDigitSymbol([C)[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 230
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/itim/explorer/ui/AddPOIActivity;->filterLetterDigitSymbol([C)[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 231
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/itim/explorer/ui/AddPOIActivity;->filterLetterDigitSymbol([C)[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 234
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f0b0073

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v8

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 236
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/itim/explorer/provider/CurrentLocationProvider;

    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itim/explorer/provider/CurrentLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V

    .line 238
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 239
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 240
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 241
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 242
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 243
    iget-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v9, Lcom/itim/explorer/ui/AddPOIActivity$4;

    invoke-direct {v9, p0}, Lcom/itim/explorer/ui/AddPOIActivity$4;-><init>(Lcom/itim/explorer/ui/AddPOIActivity;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 272
    const-string v8, "location"

    invoke-virtual {p0, v8}, Lcom/itim/explorer/ui/AddPOIActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/LocationManager;

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 273
    const-string v8, "Add POI screen"

    invoke-static {v8}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 274
    return-void

    .line 148
    .end local v0    # "allowedAddressSymbols":[C
    .end local v1    # "allowedTitleSymbols":[C
    .end local v2    # "allowedWebSymbols":[C
    .end local v3    # "hasCompass":Z
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "observer":Landroid/view/ViewTreeObserver;
    .end local v7    # "session":Lcom/facebook/Session;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 220
    .restart local v3    # "hasCompass":Z
    .restart local v5    # "observer":Landroid/view/ViewTreeObserver;
    .restart local v7    # "session":Lcom/facebook/Session;
    :cond_6
    new-instance v8, Lcom/itim/explorer/ui/BaseAlbumDirFactory;

    invoke-direct {v8}, Lcom/itim/explorer/ui/BaseAlbumDirFactory;-><init>()V

    iput-object v8, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mAlbumStorageDirFactory:Lcom/itim/explorer/ui/AlbumStorageDirFactory;

    goto/16 :goto_1

    .line 226
    :array_0
    .array-data 2
        0x2fs
        0x2ds
        0x2bs
        0x40s
        0x24s
        0x25s
        0x26s
        0x21s
        0x2cs
        0x2es
    .end array-data

    .line 227
    :array_1
    .array-data 2
        0x2fs
        0x2ds
        0x2bs
        0x2cs
        0x3bs
        0x2es
    .end array-data

    .line 228
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2es
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1157
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1159
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Add POI screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string v1, "Button"

    const-string v2, "Menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1163
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1165
    .restart local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Add POI screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v1, "Button"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1169
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1085
    if-eqz p1, :cond_0

    .line 1086
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentLocation:Landroid/location/Location;

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->updateCurrentLocation()V

    .line 1088
    return-void
.end method

.method public onOKDialog()V
    .locals 4

    .prologue
    .line 662
    iget-boolean v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mIsRedirectFromMain:Z

    if-eqz v2, :cond_0

    .line 663
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 664
    .local v1, "returnIntent":Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/itim/explorer/ui/AddPOIActivity;->setResult(ILandroid/content/Intent;)V

    .line 665
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->finish()V

    .line 666
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 677
    .end local v1    # "returnIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/itim/explorer/ui/UserPOIsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .local v0, "intent2":Landroid/content/Intent;
    const-string v3, "arg_uid"

    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itim/explorer/util/Util;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/AddPOIActivity;->startActivity(Landroid/content/Intent;)V

    .line 674
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->finish()V

    .line 675
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mUid:Ljava/lang/String;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 310
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Add POI screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "Button"

    const-string v2, "Home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "Click actionbar button"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 314
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->finish()V

    .line 315
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1046
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onPause()V

    .line 1047
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->stopPeriodicUpdates()V

    .line 1049
    return-void
.end method

.method public onPickPhoto(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "photoPickerIntent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Screen"

    const-string v4, "Add POI screen"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v3, "Type"

    const-string v4, "Pick Image (from files)"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v3, "Add picture"

    invoke-static {v3, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    const/16 v3, 0x67

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/itim/explorer/ui/AddPOIActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00af

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 373
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1103
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1098
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->retriveAuthName()V

    .line 1037
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onResume()V

    .line 1038
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->startPeriodicUpdates()V

    .line 1042
    return-void
.end method

.method public onRotateLeft(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 515
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "Add POI screen"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "Button"

    const-string v3, "Rotate left"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "Press screen button"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    const/high16 v3, -0x3d4c0000

    invoke-static {v2, v3}, Lcom/itim/explorer/util/UIUtil;->rotateBitmap(Landroid/widget/ImageView;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 521
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onRotateRight(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "Add POI screen"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v2, "Button"

    const-string v3, "Rotate right"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v2, "Press screen button"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000

    invoke-static {v2, v3}, Lcom/itim/explorer/util/UIUtil;->rotateBitmap(Landroid/widget/ImageView;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 531
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 532
    iget-object v2, p0, Lcom/itim/explorer/ui/AddPOIActivity;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 533
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1071
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1072
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 1073
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1074
    return-void
.end method

.method public onSavePlace(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v8, 0x7f0e00a9

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 401
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 402
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 403
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mRlMap:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 404
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 405
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 406
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    invoke-direct {p0, v3, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 407
    const/4 v2, 0x1

    .local v2, "isNeedFocus":Z
    const/4 v1, 0x0

    .line 408
    .local v1, "isError":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Screen"

    const-string v4, "Add POI screen"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 412
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 414
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 415
    const/4 v2, 0x0

    .line 416
    const/4 v1, 0x1

    .line 417
    const-string v3, "Error field"

    const-string v4, "Title"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    :cond_1
    const-string v3, "Error field"

    const-string v4, "Phone number"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 425
    if-eqz v2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00aa

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 429
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 430
    const/4 v2, 0x0

    .line 432
    :cond_2
    const/4 v1, 0x1

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_5

    .line 437
    const-string v3, "Error field"

    const-string v4, "Web URL"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 439
    if-eqz v2, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00ac

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 443
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtWeb:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 444
    const/4 v2, 0x0

    .line 446
    :cond_4
    const/4 v1, 0x1

    .line 448
    :cond_5
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 449
    const-string v3, "Error field"

    const-string v4, "Address"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 451
    if-eqz v2, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 454
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 455
    const/4 v2, 0x0

    .line 457
    :cond_6
    const/4 v1, 0x1

    .line 459
    :cond_7
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 460
    :cond_8
    const-string v3, "Error field"

    const-string v4, "Photo"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 462
    if-eqz v2, :cond_9

    .line 463
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 465
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLPhoto:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 467
    :cond_9
    const/4 v1, 0x1

    .line 470
    :cond_a
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v3, :cond_d

    .line 473
    :cond_c
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLatPicture:D

    .line 474
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mLongPicture:D

    .line 485
    if-eqz v1, :cond_e

    .line 486
    const-string v3, "Type"

    const-string v4, "Error"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v3, "Check POI"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 495
    :goto_0
    return-void

    .line 476
    :cond_d
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mRlMap:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v6}, Lcom/itim/explorer/ui/AddPOIActivity;->setStatusToView(Landroid/view/View;Z)V

    .line 478
    invoke-virtual {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 490
    :cond_e
    iget-object v3, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mVLoading:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 491
    invoke-direct {p0, v7}, Lcom/itim/explorer/ui/AddPOIActivity;->updateUI(Z)V

    .line 492
    const-string v3, "Type"

    const-string v4, "OK"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v3, "Check POI"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 494
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->addPOI()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1053
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 1054
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 1055
    const-string v0, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1093
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->atAddPOI:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1063
    :cond_0
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 1064
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1065
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 1066
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1067
    return-void
.end method

.method public onTakePhoto(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 379
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, "takePictureIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 381
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v2, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Screen"

    const-string v5, "Add POI screen"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v4, "Type"

    const-string v5, "Take Photo (from camera)"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v4, "Add picture"

    invoke-static {v4, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/AddPOIActivity;->setUpPhotoFile()Ljava/io/File;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    .line 388
    const-string v4, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    const/16 v4, 0x68

    invoke-virtual {p0, v3, v4}, Lcom/itim/explorer/ui/AddPOIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 392
    const/4 v1, 0x0

    .line 393
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mPhotoFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateCategory(Lcom/itim/explorer/io/model/Category;)V
    .locals 2
    .param p1, "category"    # Lcom/itim/explorer/io/model/Category;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCategory:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/itim/explorer/io/model/Category;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iput-object p1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategory:Lcom/itim/explorer/io/model/Category;

    .line 656
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCategoryChooseDialog:Lcom/itim/explorer/ui/CategoryChooseDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/CategoryChooseDialog;->dismiss()V

    .line 658
    :cond_0
    return-void
.end method

.method public updateCity(Lcom/itim/explorer/io/model/CityBorder;)V
    .locals 7
    .param p1, "city"    # Lcom/itim/explorer/io/model/CityBorder;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mTvCity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCityChooseDialog:Lcom/itim/explorer/ui/CityChooseDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/CityChooseDialog;->dismiss()V

    .line 636
    :cond_0
    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mCurrentMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/high16 v2, 0x41600000

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 650
    :goto_0
    return-void

    .line 643
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMin_lng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lat()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/CityBorder;->getMax_lng()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 647
    iget-object v0, p0, Lcom/itim/explorer/ui/AddPOIActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/itim/explorer/ui/AddPOIActivity;->mSelectLatLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method
