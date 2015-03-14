.class public Lcom/applovin/adview/AppLovinInterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/applovin/impl/adview/u;


# static fields
.field public static final KEY_WRAPPER_ID:Ljava/lang/String; = "com.applovin.interstitial.wrapper_id"

.field public static volatile lastKnownWrapper:Lcom/applovin/impl/adview/ad;


# instance fields
.field private volatile A:Ljava/util/UUID;

.field private a:Lcom/applovin/adview/AppLovinAdView;

.field private b:Lcom/applovin/impl/adview/ad;

.field private volatile c:Z

.field private d:Lcom/applovin/sdk/AppLovinLogger;

.field private e:Lcom/applovin/impl/sdk/bd;

.field private f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private volatile g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:Z

.field private r:Landroid/os/Handler;

.field private s:Landroid/widget/FrameLayout;

.field private t:Lcom/applovin/impl/adview/AppLovinVideoView;

.field private u:Lcom/applovin/impl/adview/s;

.field private v:Landroid/view/View;

.field private w:Lcom/applovin/impl/adview/s;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-static {}, Lcom/applovin/impl/sdk/cb;->a()Lcom/applovin/impl/sdk/AppLovinAdInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    return-void
.end method

.method private static a(Landroid/view/Display;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/AppLovinVideoView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/sdk/AppLovinAdInternal;)Lcom/applovin/impl/sdk/AppLovinAdInternal;
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    return-object p1
.end method

.method private a(F)V
    .locals 5

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bd;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_to_right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(FFF)V

    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private a(FFF)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-static {p3}, Lcom/applovin/impl/sdk/cb;->b(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/applovin/adview/e;

    invoke-direct {v1, p0}, Lcom/applovin/adview/e;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(FFI)V
    .locals 4

    const/high16 v1, 0x3f800000

    div-float v0, p2, p1

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bd;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_to_right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_0
    int-to-float v3, p3

    invoke-static {v1}, Lcom/applovin/impl/sdk/cb;->a(F)F

    move-result v1

    sub-float v1, v3, v1

    invoke-direct {p0, v2, v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(FFF)V

    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/cb;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(I)V

    return-void

    :cond_0
    sub-float v2, v1, v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method private a(ILjava/util/UUID;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Landroid/os/Handler;

    new-instance v2, Lcom/applovin/adview/f;

    invoke-direct {v2, p0, v0, p2}, Lcom/applovin/adview/f;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JLcom/applovin/impl/adview/s;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/adview/q;

    invoke-direct {v1, p0, p3}, Lcom/applovin/adview/q;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/adview/s;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/cb;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    return p1
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/applovin/impl/sdk/l;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:I

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/b;

    invoke-direct {v2, p0}, Lcom/applovin/adview/b;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/i;

    invoke-direct {v2, p0}, Lcom/applovin/adview/i;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/j;

    invoke-direct {v2, p0}, Lcom/applovin/adview/j;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->e()V

    return-void
.end method

.method private c(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method private d(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->h()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    return-void
.end method

.method static synthetic f(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/cb;->a(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(F)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p()V

    return-void
.end method

.method private g()V
    .locals 10

    const/16 v9, 0x35

    const/4 v8, 0x5

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/applovin/impl/adview/t;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/applovin/impl/adview/s;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/t;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0, v7}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    new-instance v1, Lcom/applovin/adview/l;

    invoke-direct {v1, p0}, Lcom/applovin/adview/l;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/s;->a(I)V

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bd;->o()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/bd;->q()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v3

    invoke-virtual {v1, v6, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v4, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->r()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/applovin/impl/sdk/bd;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v4}, Lcom/applovin/impl/sdk/bd;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->r()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v1

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int v5, v0, v1

    add-int/2addr v1, v0

    invoke-direct {v4, v5, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-direct {p0, v8}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v1

    sub-int v1, v2, v1

    invoke-direct {p0, v8}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v6, v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    new-instance v5, Lcom/applovin/adview/m;

    invoke-direct {v5, p0}, Lcom/applovin/adview/m;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCloseStyle()Lcom/applovin/impl/adview/t;

    move-result-object v4

    invoke-static {v1, p0, v4}, Lcom/applovin/impl/adview/s;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/t;)Lcom/applovin/impl/adview/s;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v7}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    new-instance v4, Lcom/applovin/adview/n;

    invoke-direct {v4, p0}, Lcom/applovin/adview/n;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v4}, Lcom/applovin/impl/adview/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v1, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/s;->a(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->bringToFront()V

    return-void
.end method

.method static synthetic g(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->q()V

    return-void
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/o;

    invoke-direct {v0, p0}, Lcom/applovin/adview/o;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    return v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->r()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/p;

    invoke-direct {v0, p0}, Lcom/applovin/adview/p;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/bd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    return-object v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getVideoCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    :goto_0
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getVideoCloseDelay()F

    move-result v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/cb;->c(F)J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/s;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    goto :goto_0
.end method

.method private l()V
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:I

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bd;->g()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v2

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return v0
.end method

.method static synthetic m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    return-object v0
.end method

.method private m()V
    .locals 5

    const/4 v3, -0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/bd;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Ljava/util/UUID;

    return-void
.end method

.method static synthetic n(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->h()V

    return-void
.end method

.method private o()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()V

    return-void
.end method

.method static synthetic p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getCountdownLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(I)V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    return-void
.end method

.method static synthetic q(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    return v0
.end method

.method static synthetic r(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/ad;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    return-object v0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/adview/g;

    invoke-direct {v1, p0}, Lcom/applovin/adview/g;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/adview/h;

    invoke-direct {v1, p0}, Lcom/applovin/adview/h;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdInternal;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->g()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()V

    :goto_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/ad;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    goto :goto_0

    :cond_4
    const-string v0, "AdView was null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private s()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x45000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->bringToFront()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getPoststitialCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdInternal;->getPoststitialCloseDelay()F

    move-result v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/cb;->c(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/s;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 7

    const-wide/high16 v0, 0x4059000000000000L

    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    if-eqz v2, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    const-wide v4, 0x4057c00000000000L

    cmpl-double v2, v0, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/sdk/AppLovinAd;DZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v2

    div-double v2, v3, v5

    mul-double/2addr v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "AppLovinInterstitialActivity"

    const-string v1, "No video view detected on video end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private u()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.applovin.interstitial.sharedpreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ad;->a(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->g()V

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void
.end method

.method public exitWithError(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ad;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; CleanedUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ad;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/applovin/impl/sdk/cb;->a()Lcom/applovin/impl/sdk/AppLovinAdInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Failed to show a video ad due to error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding to Android for handling..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to skip button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to close button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->performClick()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed, but was not eligible for dismissal."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/applovin/impl/adview/ad;->a(Ljava/lang/String;)Lcom/applovin/impl/adview/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ad;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ad;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Lcom/applovin/impl/sdk/bd;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v4}, Lcom/applovin/impl/adview/ad;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/applovin/impl/sdk/bd;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    if-eqz v3, :cond_a

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Landroid/view/Display;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v3, v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_4

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v1, :cond_4

    :cond_3
    if-ne v3, v1, :cond_6

    if-ne v4, v7, :cond_6

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/ad;->f()Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdInternal$AdTarget;

    if-ne v3, v5, :cond_8

    if-eqz v0, :cond_7

    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    :cond_5
    :goto_2
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, v3, p0}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    invoke-virtual {v0, p0}, Lcom/applovin/impl/adview/ad;->a(Lcom/applovin/impl/adview/u;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    :goto_3
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->r()V

    return-void

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_9
    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_a
    const-string v0, "No current ad found."

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapper is null; initialized state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ad;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v0, "Wrapper ID is null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinInterstitialActivity"

    const-string v3, "Unable to destroy video view"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.last_video_position"

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ad;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ad;->a(Z)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    const-string v2, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int v2, v1, v0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()V

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v3, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(FFI)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Fading in close button due to app resume."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/s;

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/s;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Lcom/applovin/impl/adview/s;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    goto :goto_1
.end method
