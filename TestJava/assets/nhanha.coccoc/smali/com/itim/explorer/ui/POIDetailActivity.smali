.class public Lcom/itim/explorer/ui/POIDetailActivity;
.super Lcom/itim/explorer/ui/BaseFragmentActivity;
.source "POIDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;
.implements Lcom/itim/explorer/interfaces/POIDetailActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/ui/POIDetailActivity$15;,
        Lcom/itim/explorer/ui/POIDetailActivity$SessionStatusCallback;,
        Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG_DIALOG_LIST_REVIEW:Ljava/lang/String; = "dialog_list_review"

.field private static final FRAGMENT_TAG_DIALOG_REPORT:Ljava/lang/String; = "dialog_report"

.field private static final FRAGMENT_TAG_DIALOG_REVIEW:Ljava/lang/String; = "dialog_review"

.field public static final LIST_POI:Ljava/lang/String; = "list_poi"

.field private static final MENU_ITEM_ID_LIST:I = 0x1

.field private static final MENU_ITEM_ID_SHARE:I = 0x2

.field private static final PENDING_PUBLISH_KEY:Ljava/lang/String; = "pendingPublishReauthorization"

.field private static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private btnBookmark:Landroid/widget/ImageButton;

.field private btnCall:Landroid/widget/ImageButton;

.field private distance:F

.field private facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private isOpeningMap:Z

.field private isReporting:Z

.field private mAdvIcon:Landroid/widget/ImageView;

.field private mCanSeePhoto:Z

.field private mComment:Ljava/lang/String;

.field private mDlReportProblem:Lcom/itim/explorer/ui/ReportProblemDialog;

.field private mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

.field private mFBUser:Lcom/facebook/model/GraphUser;

.field private mIvPhoto:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

.field private mLoading:Landroid/view/View;

.field private mPoi:Lcom/itim/explorer/io/model/POI;

.field private mPoiAddress:Ljava/lang/String;

.field private mPoiTitle:Ljava/lang/String;

.field private mRbReview:Landroid/widget/RatingBar;

.field private mReviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Review;",
            ">;"
        }
    .end annotation
.end field

.field private mStartFromLink:Z

.field private pendingPublishReauthorization:Z

.field private reviewsLimit:I

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private tvAddress:Landroid/widget/TextView;

.field private tvCountReviews:Landroid/widget/TextView;

.field private tvDistance:Landroid/widget/TextView;

.field private tvEmail:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvRate:Landroid/widget/TextView;

.field private tvWeb:Landroid/widget/TextView;

.field private vListReviews:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itim/explorer/ui/POIDetailActivity;->PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;-><init>()V

    .line 111
    sget-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 113
    new-instance v0, Lcom/itim/explorer/ui/POIDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/itim/explorer/ui/POIDetailActivity$1;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    iput-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 119
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->pendingPublishReauthorization:Z

    .line 133
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mCanSeePhoto:Z

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->reviewsLimit:I

    .line 136
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isReporting:Z

    .line 137
    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    .line 761
    return-void
.end method

.method static synthetic access$100(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/io/model/POI;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/itim/explorer/ui/POIDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->reviewsLimit:I

    return v0
.end method

.method static synthetic access$102(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/itim/explorer/io/model/POI;)Lcom/itim/explorer/io/model/POI;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->vListReviews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvRate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/RatingBar;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/itim/explorer/ui/POIDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->checkCanReview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity;->makePhoneCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Lcom/facebook/Session;
    .param p2, "x2"    # Lcom/facebook/SessionState;
    .param p3, "x3"    # Ljava/lang/Exception;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/itim/explorer/ui/POIDetailActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/facebook/model/GraphUser;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Lcom/facebook/model/GraphUser;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/itim/explorer/ui/POIDetailActivity;)Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/itim/explorer/ui/POIDetailActivity;Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;)Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/itim/explorer/ui/POIDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->isReviewed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->loadReviews()V

    return-void
.end method

.method static synthetic access$2000(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->openDialogRate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity;->postReview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/itim/explorer/ui/POIDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->updateAllViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/itim/explorer/ui/POIDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z

    return v0
.end method

.method static synthetic access$500(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/itim/explorer/ui/POIDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mCanSeePhoto:Z

    return p1
.end method

.method static synthetic access$700(Lcom/itim/explorer/ui/POIDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->gotoMap()V

    return-void
.end method

.method static synthetic access$800(Lcom/itim/explorer/ui/POIDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/itim/explorer/ui/POIDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/itim/explorer/ui/POIDetailActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvCountReviews:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkCanReview()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 922
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 923
    .local v1, "fbsession":Lcom/facebook/Session;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 924
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    if-nez v5, :cond_2

    .line 925
    new-instance v5, Lcom/itim/explorer/ui/POIDetailActivity$12;

    invoke-direct {v5, p0}, Lcom/itim/explorer/ui/POIDetailActivity$12;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-static {v1, v5}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v2

    .line 937
    .local v2, "r":Lcom/facebook/RequestAsyncTask;
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/RequestAsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->isReviewed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 947
    .end local v2    # "r":Lcom/facebook/RequestAsyncTask;
    :cond_0
    :goto_1
    return v3

    .line 938
    .restart local v2    # "r":Lcom/facebook/RequestAsyncTask;
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 941
    goto :goto_1

    .line 943
    .end local v2    # "r":Lcom/facebook/RequestAsyncTask;
    :cond_2
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->isReviewed()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    .line 946
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    goto :goto_1
.end method

.method private gotoMap()V
    .locals 3

    .prologue
    .line 1160
    iget-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    if-eqz v1, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    .line 1163
    const-string v1, "POI - Map tap"

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    .local v0, "mapIntent":Landroid/content/Intent;
    const-string v1, "extra_screen_title"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v1, "extra_map_poi"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1167
    const-string v1, "extra_map_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    const-string v1, "extra_latlong_animate"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1170
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1171
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private isReviewed()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 906
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    if-nez v5, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v3

    .line 908
    :cond_1
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    invoke-interface {v5}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "uid":Ljava/lang/String;
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 910
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mReviews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itim/explorer/io/model/Review;

    .line 911
    .local v1, "review":Lcom/itim/explorer/io/model/Review;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getFb_user_id()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getFb_user_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 912
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/Review;->getRating()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 913
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v5, v3}, Landroid/widget/RatingBar;->setEnabled(Z)V

    move v3, v4

    .line 914
    goto :goto_0
.end method

.method private isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 897
    .local p1, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "superset":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 898
    .local v1, "string":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    const/4 v2, 0x0

    .line 902
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadReviews()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lcom/itim/explorer/io/LoadReview;

    new-instance v1, Lcom/itim/explorer/ui/POIDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/itim/explorer/ui/POIDetailActivity$7;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-direct {v0, v1}, Lcom/itim/explorer/io/LoadReview;-><init>(Lcom/itim/explorer/interfaces/ILoadReview;)V

    .line 451
    .local v0, "loadReview":Lcom/itim/explorer/io/LoadReview;
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->reviewsLimit:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/itim/explorer/io/LoadReview;->execute(Ljava/lang/String;II)V

    .line 452
    return-void
.end method

.method private makePhoneCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string v0, "POI - Call"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 751
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 752
    const-string v0, "84"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 755
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 757
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 758
    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 775
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity$15;->$SwitchMap$com$facebook$SessionState:[I

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 826
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 777
    :pswitch_1
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 778
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 781
    :pswitch_2
    new-instance v2, Lcom/itim/explorer/ui/POIDetailActivity$10;

    invoke-direct {v2, p0}, Lcom/itim/explorer/ui/POIDetailActivity$10;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-static {p1, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v1

    .line 799
    .local v1, "r":Lcom/facebook/RequestAsyncTask;
    const-wide/16 v2, 0x3

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/RequestAsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 811
    :goto_1
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mFBUser:Lcom/facebook/model/GraphUser;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    sget-object v3, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    if-ne v2, v3, :cond_0

    .line 812
    sget-object v2, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->publishStory()V

    .line 813
    :cond_1
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 803
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 805
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 806
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 808
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 809
    const-string v2, "FB"

    const-string v3, "timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 775
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private openDialogRate()V
    .locals 4

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    if-nez v2, :cond_0

    .line 1038
    new-instance v2, Lcom/itim/explorer/ui/ReviewDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/ReviewDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    .line 1039
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/ReviewDialog;->setListener(Lcom/itim/explorer/interfaces/POIDetailActivityListener;)V

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1042
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 1043
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_review"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1045
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 1046
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1050
    :cond_1
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itim/explorer/ui/ReviewDialog;->setRate(F)V

    .line 1051
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    const-string v3, "dialog_review"

    invoke-virtual {v2, v0, v3}, Lcom/itim/explorer/ui/ReviewDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1052
    return-void
.end method

.method private postReview(Ljava/lang/String;)V
    .locals 2
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 1055
    new-instance v0, Lcom/itim/explorer/ui/POIDetailActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/itim/explorer/ui/POIDetailActivity$14;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/itim/explorer/ui/POIDetailActivity$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1132
    return-void
.end method

.method private publishStory()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 829
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 831
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v7

    .line 835
    .local v7, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity;->PERMISSIONS:Ljava/util/List;

    invoke-direct {p0, v2, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 836
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 837
    new-instance v6, Lcom/facebook/Session$NewPermissionsRequest;

    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v6, p0, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 839
    .local v6, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    invoke-virtual {v1, v6}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 893
    .end local v6    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    .end local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 843
    .restart local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v3, "postParams":Landroid/os/Bundle;
    const-string v2, "name"

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v2, "caption"

    const v4, 0x7f0e00b9

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/POIDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v2, "description"

    const v4, 0x7f0e00ba

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/POIDetailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v2, "link"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://nhanha.coccoc.com/poi/details/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v2, "picture"

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v2, "message"

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mComment:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v5, Lcom/itim/explorer/ui/POIDetailActivity$11;

    invoke-direct {v5, p0}, Lcom/itim/explorer/ui/POIDetailActivity$11;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    .line 887
    .local v5, "callback":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 890
    .local v0, "request":Lcom/facebook/Request;
    new-instance v8, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    aput-object v0, v2, v10

    invoke-direct {v8, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 891
    .local v8, "task":Lcom/facebook/RequestAsyncTask;
    new-array v2, v10, [Ljava/lang/Void;

    invoke-virtual {v8, v2}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateAllViews()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v8, p0}, Lcom/itim/explorer/io/model/POI;->getCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Lcom/itim/explorer/util/UIUtil;->setupActionBar(Landroid/app/ActionBar;Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 257
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    .line 258
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/itim/explorer/io/model/POI;->setTitle(Ljava/lang/String;)V

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getBuilding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getRoom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiAddress:Ljava/lang/String;

    .line 262
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/itim/explorer/io/model/POI;->setAddress(Ljava/lang/String;)V

    .line 263
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getDistance()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    .line 265
    iget v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    move v0, v4

    .line 266
    .local v0, "distanceisavaliable":Z
    :goto_0
    if-eqz v0, :cond_a

    .line 267
    iget v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_9

    .line 268
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    invoke-static {v8}, Lcom/itim/explorer/util/Util;->metersDecFormat(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_1
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvDistance:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :goto_2
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvRate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/POI;->getRating()F

    move-result v8

    invoke-static {v8}, Lcom/itim/explorer/util/Util;->roundToHalf(F)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "phones":[Ljava/lang/String;
    array-length v6, v2

    if-gt v6, v4, :cond_0

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnCall:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 282
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnCall:Landroid/widget/ImageButton;

    const v6, 0x7f02013c

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->updateBookmarkView()V

    .line 287
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://poipic.coccoc.vn/poi/previews/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mIvPhoto:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    new-instance v6, Lcom/itim/explorer/ui/POIDetailActivity$4;

    invoke-direct {v6, p0}, Lcom/itim/explorer/ui/POIDetailActivity$4;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-virtual {v4, v6}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setOnLoadListener(Lcom/itim/explorer/ui/widget/FadeInNetworkImageView$OnLoadListener;)V

    .line 299
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mIvPhoto:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/itim/explorer/io/VolleySingleton;->getInstance()Lcom/itim/explorer/io/VolleySingleton;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itim/explorer/io/VolleySingleton;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvAddress:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 306
    const v4, 0x7f0b0123

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvEmail:Landroid/widget/TextView;

    .line 307
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvEmail:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :cond_2
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 313
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "url":Ljava/lang/String;
    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    const-string v4, "http://"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    :cond_3
    const-string v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    const-string v4, "www."

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_4
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvWeb:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    .end local v3    # "url":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 325
    :cond_6
    const v4, 0x7f0b0111

    invoke-virtual {p0, v4}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    :cond_7
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getAdv()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 329
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mAdvIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-static {v6}, Lcom/itim/explorer/util/AdvUtil;->getIconID(Lcom/itim/explorer/io/model/POI;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mAdvIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :goto_3
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-static {v4, v6}, Lcom/itim/explorer/util/Util;->historyPOI(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)Z

    .line 340
    sget-object v4, Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;->APP_TRACKER:Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;

    invoke-static {v4, p0}, Lcom/itim/explorer/util/analytic/AnalyticConfig;->getTracker(Lcom/itim/explorer/util/analytic/AnalyticConfig$TrackerName;Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 342
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v7, 0x41700000

    invoke-static {v6, v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 344
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v8

    iget-object v10, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getFe_category()I

    move-result v7

    invoke-static {v7}, Lcom/itim/explorer/io/model/Category;->getMarkerResID(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 352
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/itim/explorer/ui/POIDetailActivity$5;

    invoke-direct {v6, p0}, Lcom/itim/explorer/ui/POIDetailActivity$5;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 360
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 361
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/itim/explorer/ui/POIDetailActivity$6;

    invoke-direct {v6, p0}, Lcom/itim/explorer/ui/POIDetailActivity$6;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 369
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 370
    return-void

    .end local v0    # "distanceisavaliable":Z
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v2    # "phones":[Ljava/lang/String;
    :cond_8
    move v0, v5

    .line 265
    goto/16 :goto_0

    .line 269
    .restart local v0    # "distanceisavaliable":Z
    :cond_9
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->distance:F

    invoke-static {v8}, Lcom/itim/explorer/util/Util;->kmDecFormat(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " km"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 272
    :cond_a
    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvDistance:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 332
    .restart local v2    # "phones":[Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mAdvIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private updateBookmarkView()V
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v1}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itim/explorer/util/Util;->isPOISaved(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnBookmark:Landroid/widget/ImageButton;

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnBookmark:Landroid/widget/ImageButton;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 560
    invoke-super {p0, p1, p2, p3}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 561
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 563
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 575
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onBackPressed()V

    .line 576
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 577
    return-void
.end method

.method public onCancelReview()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1003
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 1004
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    invoke-virtual {v0}, Lcom/itim/explorer/ui/ReviewDialog;->dismiss()V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReview:Lcom/itim/explorer/ui/ReviewDialog;

    .line 1008
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00a0

    if-ne v1, v2, :cond_0

    .line 1152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/itim/explorer/ui/ReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "arg_is_load_more"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v0}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1155
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    .line 1157
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v7, 0x7f040021

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->setContentView(I)V

    .line 144
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "extra_map_poi"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/io/model/POI;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    .line 147
    const v7, 0x7f0b0117

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RatingBar;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    .line 148
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v7, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 149
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 150
    const v7, 0x7f0b011b

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvName:Landroid/widget/TextView;

    .line 151
    const v7, 0x7f0b0121

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvDistance:Landroid/widget/TextView;

    .line 152
    const v7, 0x7f0b0122

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvAddress:Landroid/widget/TextView;

    .line 153
    const v7, 0x7f0b011f

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvRate:Landroid/widget/TextView;

    .line 154
    const v7, 0x7f0b0120

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvCountReviews:Landroid/widget/TextView;

    .line 155
    const v7, 0x7f0b0111

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnCall:Landroid/widget/ImageButton;

    .line 156
    const v7, 0x7f0b0112

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->btnBookmark:Landroid/widget/ImageButton;

    .line 157
    const v7, 0x7f0b011d

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mIvPhoto:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    .line 158
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mIvPhoto:Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;

    invoke-virtual {v7, v9}, Lcom/itim/explorer/ui/widget/FadeInNetworkImageView;->setDrawingCacheEnabled(Z)V

    .line 159
    const v7, 0x7f0b0124

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->tvWeb:Landroid/widget/TextView;

    .line 160
    const v7, 0x7f0b0119

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->vListReviews:Landroid/widget/LinearLayout;

    .line 161
    const v7, 0x7f0b011e

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mAdvIcon:Landroid/widget/ImageView;

    .line 162
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mAdvIcon:Landroid/widget/ImageView;

    new-instance v10, Lcom/itim/explorer/ui/POIDetailActivity$2;

    invoke-direct {v10, p0}, Lcom/itim/explorer/ui/POIDetailActivity$2;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v7, 0x7f0b009e

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mLoading:Landroid/view/View;

    .line 170
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v10, 0x7f0b010f

    invoke-virtual {v7, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v7

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 172
    iput-boolean v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    .line 173
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    if-eqz v7, :cond_3

    .line 174
    iput-boolean v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z

    .line 175
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->updateAllViews()V

    .line 176
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->loadReviews()V

    .line 200
    :goto_0
    new-instance v5, Lcom/itim/explorer/io/LoadPOI;

    new-instance v7, Lcom/itim/explorer/ui/POIDetailActivity$3;

    invoke-direct {v7, p0}, Lcom/itim/explorer/ui/POIDetailActivity$3;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-direct {v5, v7}, Lcom/itim/explorer/io/LoadPOI;-><init>(Lcom/itim/explorer/interfaces/ILoad;)V

    .line 225
    .local v5, "loadPoi":Lcom/itim/explorer/io/LoadPOI;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "extra_method"

    const/4 v10, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v7, "extra_map_poi_hash"

    iget-object v10, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v10}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 229
    .local v2, "extras":Landroid/os/Bundle;
    const-string v7, "extra_map_location"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 230
    .local v6, "location":Landroid/location/Location;
    const-string v7, "extra_map_location"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    new-array v7, v9, [Landroid/os/Bundle;

    aput-object v0, v7, v8

    invoke-virtual {v5, v7}, Lcom/itim/explorer/io/LoadPOI;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    sget-object v7, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v7}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    .line 235
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 236
    .local v3, "fbsession":Lcom/facebook/Session;
    if-nez v3, :cond_2

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v7, v8, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v3

    .line 241
    :cond_0
    if-nez v3, :cond_1

    .line 242
    new-instance v3, Lcom/facebook/Session;

    .end local v3    # "fbsession":Lcom/facebook/Session;
    invoke-direct {v3, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v3    # "fbsession":Lcom/facebook/Session;
    :cond_1
    invoke-static {v3}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 245
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    sget-object v8, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v7, v8}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    new-instance v7, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v7, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v7, v8}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 251
    :cond_2
    return-void

    .line 179
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "fbsession":Lcom/facebook/Session;
    .end local v5    # "loadPoi":Lcom/itim/explorer/io/LoadPOI;
    .end local v6    # "location":Landroid/location/Location;
    :cond_3
    iput-boolean v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z

    .line 180
    new-instance v7, Lcom/itim/explorer/io/model/POI;

    invoke-direct {v7}, Lcom/itim/explorer/io/model/POI;-><init>()V

    iput-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    .line 181
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, "data":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 183
    .local v4, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const/4 v7, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 193
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 194
    :cond_5
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->finish()V

    .line 198
    :goto_3
    iput-boolean v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z

    goto/16 :goto_0

    .line 183
    :sswitch_0
    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v7, v8

    goto :goto_1

    :sswitch_1
    const-string v11, "nhanha"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v7, v9

    goto :goto_1

    .line 185
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 186
    goto :goto_2

    .line 188
    :pswitch_1
    const-string v7, "Hash"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    goto :goto_2

    .line 197
    :cond_6
    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7, v4}, Lcom/itim/explorer/io/model/POI;->setHash(Ljava/lang/String;)V

    goto :goto_3

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e639d60 -> :sswitch_1
        0x310888 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 466
    const/4 v0, 0x2

    const v1, 0x7f0e0120

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 475
    return v3
.end method

.method public onDismissDialogReport()V
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isReporting:Z

    .line 1195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1176
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 1177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Main screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v1, "Button"

    const-string v2, "Menu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1182
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1184
    .restart local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Screen"

    const-string v2, "Main screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string v1, "Button"

    const-string v2, "Back"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const-string v1, "Press hardbutton"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1188
    .end local v0    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 517
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 482
    :sswitch_0
    const-string v3, "POI - back by actionbar"

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 483
    iget-boolean v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mStartFromLink:Z

    if-eqz v3, :cond_0

    .line 484
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/itim/explorer/ui/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->finish()V

    .line 486
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 494
    :sswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Screen"

    const-string v5, "POI Details screen"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 497
    const-string v2, "POI"

    const-string v4, "null"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "Share location"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    move v2, v3

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    const-string v4, "POI"

    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v4, "Share location"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0121

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v8}, Lcom/itim/explorer/io/model/POI;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v3, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://nhanha.coccoc.com/poi/details/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 531
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onPause()V

    .line 533
    return-void
.end method

.method public onPoiAction(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 639
    :pswitch_0
    const-string v5, "POI - Bookmark tap"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-static {v5, v6}, Lcom/itim/explorer/util/Util;->bookmarkPOI(Landroid/content/Context;Lcom/itim/explorer/io/model/POI;)V

    .line 641
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->updateBookmarkView()V

    goto :goto_0

    .line 655
    :pswitch_1
    const/4 v2, 0x0

    .line 656
    .local v2, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/itim/explorer/ui/DirectionActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "extra_screen_title"

    const v6, 0x7f0e0111

    invoke-virtual {p0, v6}, Lcom/itim/explorer/ui/POIDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v5, "extra_map_type"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string v5, "extra_map_poi"

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 662
    const-string v5, "load_des_mode"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v5, "extra_direction_to"

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/GPS;->getLatitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/POI;->getGps()Lcom/itim/explorer/io/model/GPS;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itim/explorer/io/model/GPS;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 665
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Screen"

    const-string v6, "Direction screen"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v5, "Go to navigation"

    invoke-static {v5, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 678
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    goto :goto_0

    .line 682
    .end local v1    # "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, "phones":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 684
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 685
    .local v3, "listView":Landroid/widget/ListView;
    new-instance v5, Lcom/itim/explorer/ui/POIDetailActivity$8;

    invoke-direct {v5, p0, v4}, Lcom/itim/explorer/ui/POIDetailActivity$8;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 709
    new-instance v5, Lcom/itim/explorer/ui/POIDetailActivity$9;

    invoke-direct {v5, p0}, Lcom/itim/explorer/ui/POIDetailActivity$9;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 718
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, "dialog":Landroid/app/Dialog;
    const v5, 0x7f0e011e

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 720
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 721
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 723
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_0
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/itim/explorer/ui/POIDetailActivity;->makePhoneCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x7f0b0111
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPoiInfo(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 631
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 582
    :pswitch_1
    const-string v5, "POI - address"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 583
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/itim/explorer/ui/MapActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    .local v3, "mapIntent":Landroid/content/Intent;
    const-string v5, "extra_screen_title"

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoiTitle:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v5, "extra_map_poi"

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 586
    const-string v5, "extra_map_type"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v3}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 589
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V

    goto :goto_0

    .line 592
    .end local v3    # "mapIntent":Landroid/content/Intent;
    :pswitch_2
    const-string v5, "POI - email"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "message/rfc822"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v5, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v7}, Lcom/itim/explorer/io/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :try_start_0
    const-string v5, "Send mail..."

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 598
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "There are no email clients installed."

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 606
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    :pswitch_3
    const-string v5, "POI - Website"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 607
    iget-object v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v5}, Lcom/itim/explorer/io/model/POI;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "url":Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 610
    :goto_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityOut(Landroid/app/Activity;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 612
    :catch_1
    move-exception v0

    .line 613
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "There are no browser installed."

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 608
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 619
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_4
    const-string v5, "POI - Tap picture"

    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 620
    iget-boolean v5, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mCanSeePhoto:Z

    if-eqz v5, :cond_0

    .line 621
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/itim/explorer/ui/POIPictureActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "arg_picture"

    iget-object v6, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v6}, Lcom/itim/explorer/io/model/POI;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v2}, Lcom/itim/explorer/ui/POIDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    invoke-static {p0}, Lcom/itim/explorer/util/UIUtil;->transitionActivityIn(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x7f0b011d
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 955
    if-nez p3, :cond_0

    .line 976
    :goto_0
    return-void

    .line 957
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 958
    .local v0, "fbsession":Lcom/facebook/Session;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 959
    .local v1, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Screen"

    const-string v3, "POI Details screen"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v2, "Number"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const-string v2, "FaceBook State"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v2, "Rating bar change"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 965
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 967
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 968
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 972
    :cond_1
    sget-object v2, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 973
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v2, v3}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public onReportProblem(ILjava/lang/String;)V
    .locals 4
    .param p1, "selectedProblem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1013
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Number"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v1, "POI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v3}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v1, "POI - Report problem"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1016
    new-instance v1, Lcom/itim/explorer/ui/POIDetailActivity$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/itim/explorer/ui/POIDetailActivity$13;-><init>(Lcom/itim/explorer/ui/POIDetailActivity;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/itim/explorer/ui/POIDetailActivity$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1034
    return-void
.end method

.method public onReportProblem(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 733
    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isReporting:Z

    if-eqz v2, :cond_0

    .line 747
    :goto_0
    return-void

    .line 734
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isReporting:Z

    .line 735
    const-string v2, "POI - Report problem"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReportProblem:Lcom/itim/explorer/ui/ReportProblemDialog;

    if-nez v2, :cond_1

    .line 737
    new-instance v2, Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-direct {v2}, Lcom/itim/explorer/ui/ReportProblemDialog;-><init>()V

    iput-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReportProblem:Lcom/itim/explorer/ui/ReportProblemDialog;

    .line 738
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReportProblem:Lcom/itim/explorer/ui/ReportProblemDialog;

    invoke-virtual {v2, p0}, Lcom/itim/explorer/ui/ReportProblemDialog;->setListener(Lcom/itim/explorer/interfaces/POIDetailActivityListener;)V

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 741
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_report"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 743
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    .line 744
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 746
    :cond_2
    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mDlReportProblem:Lcom/itim/explorer/ui/ReportProblemDialog;

    const-string v3, "dialog_report"

    invoke-virtual {v2, v0, v3}, Lcom/itim/explorer/ui/ReportProblemDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 522
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onResume()V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    .line 524
    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "170500206486453"

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public onReview(FLjava/lang/String;Z)V
    .locals 3
    .param p1, "rate"    # F
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "postToFacebook"    # Z

    .prologue
    .line 981
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v1, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 982
    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 983
    iput-object p2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mComment:Ljava/lang/String;

    .line 984
    if-eqz p3, :cond_2

    .line 985
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 986
    .local v0, "session":Lcom/facebook/Session;
    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    iput-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->facebookRequest:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    .line 987
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->publishStory()V

    .line 998
    .end local v0    # "session":Lcom/facebook/Session;
    :goto_0
    return-void

    .line 990
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 994
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p0, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0

    .line 997
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/itim/explorer/ui/POIDetailActivity;->postReview(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 567
    invoke-super {p0, p1}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 568
    const-string v1, "pendingPublishReauthorization"

    iget-boolean v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->pendingPublishReauthorization:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 570
    .local v0, "session":Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 571
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 537
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStart()V

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->isOpeningMap:Z

    .line 539
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 540
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 541
    const-string v1, "8GNN869PHKBHWM4K38NJ"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v0, "flurryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "POI"

    iget-object v2, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v2}, Lcom/itim/explorer/io/model/POI;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "Is Bookmarked"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itim/explorer/ui/POIDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mPoi:Lcom/itim/explorer/io/model/POI;

    invoke-virtual {v4}, Lcom/itim/explorer/io/model/POI;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/itim/explorer/util/Util;->isPOISaved(Landroid/content/Context;IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "Is Reviewed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itim/explorer/ui/POIDetailActivity;->mRbReview:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "POI Details screen"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 548
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->onStop()V

    .line 553
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/itim/explorer/ui/POIDetailActivity;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 554
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 555
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 556
    return-void
.end method
