.class public Lcom/itim/explorer/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final ACTION_CLEAR:Ljava/lang/String; = "ACTION_CLEAR"

.field public static final ACTION_CLEAR_LIST:Ljava/lang/String; = "ACTION_CLEAR_LIST"

.field public static final ACTION_CLEAR_MAP:Ljava/lang/String; = "ACTION_CLEAR_MAP"

.field public static final ACTION_DISMISS_DIALOG:Ljava/lang/String; = "ACTION_DISMISS_DIALOG"

.field public static final ACTION_FINISH_ALL_ACTIVITY:Ljava/lang/String; = "ACTION_FINISH_ALL_ACTIVITY"

.field public static final ACTION_LOGOUT_FACEBOOK:Ljava/lang/String; = "ACTION_LOGOUT_FACEBOOK"

.field public static final ACTION_REPORT_REVIEW_FAILED:Ljava/lang/String; = "ACTION_REPORT_REVIEW_FAILED"

.field public static final ACTION_REPORT_REVIEW_SUCCESSFUL:Ljava/lang/String; = "ACTION_REPORT_REVIEW_SUCCESSFUL"

.field public static final APP_FILE_PATH:Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "explorer.db"

.field public static final FACEBOOK_APP_ID:Ljava/lang/String; = "170500206486453"

.field public static final FACEBOOK_APP_SECRET:Ljava/lang/String; = "f74758c74c0ce7a4ae46bb7e3ea54fd0"

.field public static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_VIETNAM:Ljava/lang/String; = "vi"

.field public static final LIST_VIEW_MODE_HISTORY:Ljava/lang/String; = "LIST_VIEW_MODE_HISTORY"

.field public static final LIST_VIEW_MODE_NONE:Ljava/lang/String; = "LIST_VIEW_MODE_NONE"

.field public static final PREF_SESSION:Ljava/lang/String; = "PREF_SESSION"

.field public static final SECRET_KEY:Ljava/lang/String; = "b3154acf3a3a1919e716a"

.field public static final URL_BASE:Ljava/lang/String; = "http://nhanha.coccoc.com/"

.field public static final URL_CHECK_IN:Ljava/lang/String; = "http://nhanha.coccoc.com/api/getcheckins/"

.field public static final URL_GET_DIRECTION:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/directions/json?"

.field public static final URL_GET_POIS:Ljava/lang/String; = "http://nhanha.coccoc.com/api/search"

.field public static final URL_POI_ADDED_POIS:Ljava/lang/String; = "http://nhanha.coccoc.com/api/poi_added"

.field public static final URL_POI_ADD_POI:Ljava/lang/String; = "http://nhanha.coccoc.com/api/poi_add"

.field public static final URL_POI_COUNT_REVIEW:Ljava/lang/String; = "http://nhanha.coccoc.com/api/review_count?h="

.field public static final URL_POI_DETAIL:Ljava/lang/String; = "http://nhanha.coccoc.com/poi/details/"

.field public static final URL_POI_IMAGE_NO_IMAGE:Ljava/lang/String; = "http://poipic.coccoc.vn/poi/previews/"

.field public static final URL_POI_RATING:Ljava/lang/String; = "http://nhanha.coccoc.com/poi/rating/"

.field public static final URL_POI_REPORT_POI:Ljava/lang/String; = "http://nhanha.coccoc.com/api/problem_report"

.field public static final URL_REVIEW_GET:Ljava/lang/String; = "http://nhanha.coccoc.com/api/review_get/"

.field public static final URL_REVIEW_POST:Ljava/lang/String; = "http://nhanha.coccoc.com/api/review_add/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Explore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itim/explorer/Config;->APP_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
