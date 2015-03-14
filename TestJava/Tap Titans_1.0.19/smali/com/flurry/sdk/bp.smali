.class public final Lcom/flurry/sdk/bp;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bp$1;,
        Lcom/flurry/sdk/bp$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/google/android/gms/ads/AdView;

.field private f:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/bp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/AdCreative;)V

    .line 37
    const-string v0, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bp;->b:Ljava/lang/String;

    .line 38
    const-string v0, "com.flurry.gms.ads.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bp;->c:Ljava/lang/String;

    .line 39
    const-string v0, "com.flurry.gms.ads.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bp;->d:Z

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bp;->setFocusable(Z)V

    .line 41
    return-void
.end method

.method private a(II)Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x2d8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-lt p2, v0, :cond_0

    .line 63
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 72
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/16 v0, 0x1d4

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_1

    .line 65
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 66
    :cond_1
    const/16 v0, 0x140

    if-lt p1, v0, :cond_2

    const/16 v0, 0x32

    if-lt p2, v0, :cond_2

    .line 67
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 68
    :cond_2
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_3

    const/16 v0, 0xfa

    if-lt p2, v0, :cond_3

    .line 69
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v2, "Could not find GMS AdSize that matches size"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;II)Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/flurry/sdk/ez;->h()I

    move-result v0

    .line 149
    invoke-static {}, Lcom/flurry/sdk/ez;->g()I

    move-result v1

    .line 151
    if-lez p2, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    move p2, v1

    .line 152
    :cond_1
    if-lez p3, :cond_2

    if-le p3, v0, :cond_3

    :cond_2
    move p3, v0

    .line 154
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/bp;->a(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/bp;->f:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method getAdView()Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 78
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v2, "GMS AdView initLayout."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/flurry/sdk/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/flurry/sdk/bp;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/flurry/sdk/bp;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v2

    .line 82
    invoke-direct {p0, v0, v1, v2}, Lcom/flurry/sdk/bp;->a(Landroid/content/Context;II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    .line 83
    if-nez v3, :cond_0

    .line 84
    const/4 v0, 0x6

    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find GMS AdSize that matches {width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", height "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Determined GMS AdSize as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that best matches {width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", height = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/flurry/sdk/bp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flurry/sdk/bp$a;-><init>(Lcom/flurry/sdk/bp;Lcom/flurry/sdk/bp$1;)V

    iput-object v1, p0, Lcom/flurry/sdk/bp;->f:Lcom/google/android/gms/ads/AdListener;

    .line 93
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    .line 94
    iget-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 95
    iget-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/flurry/sdk/bp;->f:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 98
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/bp;->setGravity(I)V

    .line 99
    iget-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/bp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 104
    iget-boolean v1, p0, Lcom/flurry/sdk/bp;->d:Z

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v2, "GMS AdView set to Test Mode."

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 108
    iget-object v1, p0, Lcom/flurry/sdk/bp;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/flurry/sdk/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    const-string v2, "GMS AdView onDestroy."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/bp;->e:Lcom/google/android/gms/ads/AdView;

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/flurry/android/AdNetworkView;->onDestroy()V

    .line 165
    return-void
.end method
