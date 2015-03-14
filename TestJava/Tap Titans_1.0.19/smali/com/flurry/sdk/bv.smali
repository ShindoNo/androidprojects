.class public Lcom/flurry/sdk/bv;
.super Lcom/flurry/sdk/ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bv$1;,
        Lcom/flurry/sdk/bv$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lcom/inmobi/monetization/IMInterstitial;

.field private f:Lcom/flurry/sdk/bv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bv;->b:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/flurry/sdk/bv;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bv;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ba;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 35
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bv;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/flurry/sdk/bv;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/bv;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private a(Lcom/inmobi/monetization/IMInterstitial;Lcom/flurry/sdk/bv$a;)V
    .locals 3

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bv;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/flurry/sdk/bv;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bv;->b:Ljava/lang/String;

    const-string v2, "InMobi set listener failed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/sdk/bv;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static g()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    const-class v0, Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 87
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 88
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v6, "setIMInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "setImInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    :cond_0
    :goto_1
    return-object v0

    .line 87
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    new-instance v1, Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {p0}, Lcom/flurry/sdk/bv;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/sdk/bv;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/bv;->e:Lcom/inmobi/monetization/IMInterstitial;

    .line 62
    new-instance v0, Lcom/flurry/sdk/bv$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/bv$a;-><init>(Lcom/flurry/sdk/bv;Lcom/flurry/sdk/bv$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/bv;->f:Lcom/flurry/sdk/bv$a;

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/bv;->e:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v1, p0, Lcom/flurry/sdk/bv;->f:Lcom/flurry/sdk/bv$a;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/bv;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/flurry/sdk/bv$a;)V

    .line 65
    iget-object v0, p0, Lcom/flurry/sdk/bv;->e:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 66
    return-void
.end method
