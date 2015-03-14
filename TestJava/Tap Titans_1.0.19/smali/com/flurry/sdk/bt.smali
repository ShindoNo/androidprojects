.class public final Lcom/flurry/sdk/bt;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bt$1;,
        Lcom/flurry/sdk/bt$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/inmobi/monetization/IMBanner;

.field private d:Lcom/inmobi/monetization/IMBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/sdk/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/AdCreative;)V

    .line 37
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bt;->setFocusable(Z)V

    .line 41
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAdListener()Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/bt;->d:Lcom/inmobi/monetization/IMBannerListener;

    return-object v0
.end method

.method getAdView()Lcom/inmobi/monetization/IMBanner;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    return-object v0
.end method

.method public initLayout()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x3f000000

    const/4 v5, 0x3

    .line 63
    sget-object v0, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    const-string v1, "InMobi initLayout"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v3

    .line 65
    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v1

    .line 67
    invoke-static {}, Lcom/flurry/sdk/ez;->h()I

    move-result v0

    .line 68
    invoke-static {}, Lcom/flurry/sdk/ez;->g()I

    move-result v2

    .line 70
    if-lez v3, :cond_0

    if-le v3, v2, :cond_3

    .line 71
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    if-le v1, v0, :cond_4

    .line 73
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4}, Lcom/flurry/sdk/bu;->a(Landroid/graphics/Point;)I

    move-result v2

    .line 76
    if-eq v7, v2, :cond_5

    .line 78
    new-instance v1, Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {p0}, Lcom/flurry/sdk/bt;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    .line 80
    const/16 v1, 0x140

    .line 81
    const/16 v0, 0x32

    .line 82
    invoke-static {v2}, Lcom/flurry/sdk/bu;->a(I)Landroid/graphics/Point;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 85
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 88
    :cond_2
    sget-object v2, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Determined InMobi AdSize as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/flurry/sdk/ez;->c()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 92
    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 93
    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 94
    iget-object v2, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/IMBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Lcom/flurry/sdk/bt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/bt$a;-><init>(Lcom/flurry/sdk/bt;Lcom/flurry/sdk/bt$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/bt;->d:Lcom/inmobi/monetization/IMBannerListener;

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    iget-object v1, p0, Lcom/flurry/sdk/bt;->d:Lcom/inmobi/monetization/IMBannerListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 99
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bt;->setGravity(I)V

    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bt;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0, v7}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    .line 112
    :goto_2
    return-void

    :cond_3
    move v2, v3

    .line 70
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 71
    goto/16 :goto_1

    .line 108
    :cond_5
    sget-object v0, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find InMobi AdSize that matches size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    const-string v1, "Could not load InMobi Ad"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bt;->a:Ljava/lang/String;

    const-string v2, "InMobi onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->destroy()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bt;->c:Lcom/inmobi/monetization/IMBanner;

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onDestroy()V

    .line 162
    return-void
.end method
