.class public Lcom/itim/explorer/util/AdvUtil;
.super Ljava/lang/Object;
.source "AdvUtil.java"


# static fields
.field public static final ADV_ON:Z = true

.field private static idBanner:I

.field private static idIcon:I

.field private static idMarker:I

.field private static urlBanner:Ljava/lang/String;

.field private static urlIcon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f020064

    sput v0, Lcom/itim/explorer/util/AdvUtil;->idBanner:I

    .line 17
    const v0, 0x7f020067

    sput v0, Lcom/itim/explorer/util/AdvUtil;->idIcon:I

    .line 18
    const v0, 0x7f020065

    sput v0, Lcom/itim/explorer/util/AdvUtil;->idMarker:I

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/itim/explorer/util/AdvUtil;->urlBanner:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/itim/explorer/util/AdvUtil;->urlIcon:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/itim/explorer/util/Util;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBannerID(I)I
    .locals 1
    .param p0, "category"    # I

    .prologue
    .line 25
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    sget v0, Lcom/itim/explorer/util/AdvUtil;->idBanner:I

    .line 26
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getBannerLink(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app.adjust.io/lw0w0t?campaign=VN_Nha_Nha_Campaign-November_Android&adgroup=VN_Nha_Nha_Campaign-November_Banner_Android&creative=VN_Nha_Nha_Banner_PandaonMotorcycle_allsizes_jpg_Android&install_callback=http%3A%2F%2Fnhanha.coccoc.com%2Ffoodpanda_install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/itim/explorer/util/AdvUtil;->addAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconID(Lcom/itim/explorer/io/model/POI;)I
    .locals 1
    .param p0, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getAdv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/itim/explorer/util/AdvUtil;->idIcon:I

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getIconLink(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app.adjust.io/lw0w0t?campaign=VN_Nha_Nha_Campaign-November_Android&adgroup=VN_Nha_Nha_Campaign-November_FoodpandaPin_Android&creative=VN_Nha_Nha_FoodpandaPin_Panda_jpg_Android&install_callback=http%3A%2F%2Fnhanha.coccoc.com%2Ffoodpanda_install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/itim/explorer/util/AdvUtil;->addAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMarkerID(Lcom/itim/explorer/io/model/POI;)I
    .locals 1
    .param p0, "poi"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/itim/explorer/io/model/POI;->getAdv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/itim/explorer/util/AdvUtil;->idMarker:I

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static goToLink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onBannerClick(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "Advertisement - Click on banner"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/itim/explorer/util/AdvUtil;->getBannerLink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itim/explorer/util/AdvUtil;->goToLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static onIconClick(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v0, "Advertisement - Click on event"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/itim/explorer/util/AdvUtil;->getIconLink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itim/explorer/util/AdvUtil;->goToLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method
