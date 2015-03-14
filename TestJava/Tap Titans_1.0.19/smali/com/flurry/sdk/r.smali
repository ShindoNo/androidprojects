.class public Lcom/flurry/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/r$b;,
        Lcom/flurry/sdk/r$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:I


# instance fields
.field a:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field b:Lcom/flurry/sdk/y;

.field c:Lcom/flurry/sdk/ag;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/flurry/sdk/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/flurry/sdk/r;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->f:Z

    .line 57
    iput-object p1, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 58
    new-instance v0, Lcom/flurry/sdk/ag;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ag;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/sdk/r;->c:Lcom/flurry/sdk/ag;

    .line 59
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/y;

    .line 60
    return-void
.end method

.method private a(Lcom/flurry/sdk/a;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 840
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v3

    .line 841
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v5, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 842
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v4, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 844
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 845
    const-string v0, "event"

    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string v0, "url"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v0, "response"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v7, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/sdk/q;

    const-string v1, "sendUrlStatusResult"

    iget-object v6, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget v6, v6, Lcom/flurry/sdk/q;->e:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v0, p0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 851
    return-void
.end method

.method private a(Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V
    .locals 7

    .prologue
    const/4 v3, 0x5

    .line 790
    if-lt p3, v3, :cond_2

    .line 791
    sget-object v0, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    if-eqz p5, :cond_0

    .line 794
    invoke-direct {p0, p1, p2, p5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;I)V

    .line 796
    :cond_0
    if-eqz p4, :cond_1

    .line 797
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/flurry/sdk/r$b;->a(Z)V

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 802
    :cond_2
    new-instance v6, Lcom/flurry/sdk/ei;

    invoke-direct {v6}, Lcom/flurry/sdk/ei;-><init>()V

    .line 803
    invoke-virtual {v6, p2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 804
    new-instance v0, Lcom/flurry/sdk/r$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/r$7;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/a;Lcom/flurry/sdk/r$b;I)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 833
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/r;Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 692
    if-nez p4, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 697
    :cond_2
    invoke-interface {p4, v1}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_3
    const/4 v0, 0x5

    if-lt p3, v0, :cond_4

    .line 702
    invoke-interface {p4, v1}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_4
    invoke-static {p2}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const-string v0, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 712
    new-instance v6, Lcom/flurry/sdk/ei;

    invoke-direct {v6}, Lcom/flurry/sdk/ei;-><init>()V

    .line 713
    invoke-virtual {v6, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ei;->a(Z)V

    .line 715
    new-instance v0, Lcom/flurry/sdk/r$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/r$6;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/r$a;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 751
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    goto :goto_0

    .line 752
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v4, v0}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    invoke-interface {p4, v4}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "market://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 757
    invoke-interface {p4, v4}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_7
    invoke-interface {p4, v1}, Lcom/flurry/sdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 185
    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v2, "banner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 188
    goto :goto_0

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/a;)I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 75
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/u;->c()Lcom/flurry/sdk/an;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/an;->c(Ljava/lang/String;)I

    move-result v0

    .line 78
    return v0
.end method

.method a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 542
    .line 543
    invoke-static {p1}, Lcom/flurry/sdk/fb;->b(Landroid/content/Intent;)Z

    move-result v0

    .line 544
    if-eqz v0, :cond_1

    .line 545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 552
    :goto_0
    if-eqz v0, :cond_0

    .line 553
    const-string v1, "adSpaceName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    :cond_0
    return-object v0

    .line 547
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const-string v1, "targetIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 626
    const-string v0, ".*?(%\\{\\w+\\}).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 627
    invoke-virtual {v6, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    move-object v4, p4

    .line 629
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/flurry/sdk/r;->c:Lcom/flurry/sdk/ag;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/ag;->a(Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 635
    :cond_0
    return-object v4
.end method

.method public a()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/r;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->f:Z

    .line 70
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 6

    .prologue
    .line 508
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {p3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 444
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iget-boolean v0, p0, Lcom/flurry/sdk/r;->f:Z

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Google Play url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    const-string v0, "market://details?id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 459
    :cond_3
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Google Play url scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 662
    if-nez p1, :cond_0

    .line 663
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v2, "Cannot process redirect, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/flurry/sdk/am;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v1, v5}, Lcom/flurry/sdk/am;->g(Z)V

    .line 671
    instance-of v0, p1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 672
    check-cast v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setVideoMoreInfoInProgress(Lcom/flurry/sdk/am;)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 680
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V
    .locals 8

    .prologue
    .line 562
    if-nez p1, :cond_0

    .line 563
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v2, "Unable to launch url, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v7, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v0, Lcom/flurry/sdk/r$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/r$4;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Landroid/content/Context;ZZ)V

    invoke-virtual {v7, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    goto :goto_0
.end method

.method a(Lcom/flurry/sdk/a;I)V
    .locals 11

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;)I

    move-result v0

    sput v0, Lcom/flurry/sdk/r;->e:I

    .line 304
    sget v0, Lcom/flurry/sdk/r;->e:I

    if-le p2, v0, :cond_0

    .line 305
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v2, "Maximum depth for event/action loop exceeded when performing next AdUnit:"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v2

    .line 311
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 312
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    iget-object v1, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v4, "delay"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 314
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget v1, v1, Lcom/flurry/sdk/q;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/r;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;I)Z

    move-result v5

    .line 316
    const-wide/16 v6, 0x1e

    .line 317
    if-eqz v8, :cond_1

    .line 319
    :try_start_0
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 329
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/flurry/sdk/u;->c(Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 331
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lcom/flurry/sdk/l;->a(J)V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const/4 v1, 0x6

    sget-object v4, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caught NumberFormatException with delay parameter in nextAdUnit:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v10, "delay"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v0, v6

    goto :goto_1

    .line 332
    :cond_2
    if-eqz v4, :cond_3

    .line 334
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v6

    new-instance v0, Lcom/flurry/sdk/r$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/r$1;-><init>(Lcom/flurry/sdk/r;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/l;Z)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 345
    :cond_3
    const/4 v0, 0x1

    if-ne v5, v0, :cond_4

    .line 347
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/r$2;-><init>(Lcom/flurry/sdk/r;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 358
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$3;

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/r$3;-><init>(Lcom/flurry/sdk/r;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    .line 88
    :cond_0
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAction:action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",triggering event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    .line 93
    const/16 v2, 0xa

    if-le p3, v2, :cond_1

    .line 94
    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",triggered by:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v2, "directOpen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->c(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v2, "processRedirect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->d(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 108
    :cond_4
    const-string v2, "verifyUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V

    goto :goto_0

    .line 110
    :cond_5
    const-string v2, "launchPackage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->e(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 112
    :cond_6
    const-string v2, "sendUrlAsync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->f(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 114
    :cond_7
    const-string v2, "sendAdLogs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 115
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->g(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 116
    :cond_8
    const-string v2, "logEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 117
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->h(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 118
    :cond_9
    const-string v2, "nextFrame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 119
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->i(Lcom/flurry/sdk/a;)V

    goto :goto_0

    .line 120
    :cond_a
    const-string v2, "nextAdUnit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 121
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;I)V

    goto :goto_0

    .line 122
    :cond_b
    const-string v2, "checkCap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/r;->c(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V

    goto/16 :goto_0

    .line 124
    :cond_c
    const-string v2, "updateViewCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 125
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/r;->j(Lcom/flurry/sdk/a;)V

    goto/16 :goto_0

    .line 129
    :cond_d
    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",triggered by:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Lcom/flurry/sdk/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 772
    .line 774
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url after is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;Lcom/flurry/sdk/r$b;)V

    .line 776
    return-void
.end method

.method a(Lcom/flurry/sdk/a;Ljava/lang/String;Lcom/flurry/sdk/r$b;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 786
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V

    .line 787
    return-void
.end method

.method a(Ljava/lang/String;Lcom/flurry/sdk/r$a;)V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;ILcom/flurry/sdk/r$a;)V

    .line 689
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 519
    if-nez p1, :cond_1

    .line 520
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v3, "Cannot launch activity, null context"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/r;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 531
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v4, "Cannot launch Activity"

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;I)Z
    .locals 2

    .prologue
    .line 859
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 860
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 880
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V
    .locals 7

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v2, "Cannot process redirect, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 646
    :cond_0
    new-instance v0, Lcom/flurry/sdk/r$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/r$5;-><init>(Lcom/flurry/sdk/r;Landroid/content/Context;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;ZLjava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;Lcom/flurry/sdk/r$a;)V

    goto :goto_0
.end method

.method b(Lcom/flurry/sdk/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 135
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v1

    .line 136
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 137
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v3, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 138
    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v5, "url"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v5, "market://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v5, "true"

    iget-object v6, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v7, "native"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 146
    if-eqz v5, :cond_1

    .line 147
    const/4 v5, 0x2

    sget-object v6, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v7, "Explictly instructed to use native browser"

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0, v3}, Lcom/flurry/sdk/r;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    iget-object v5, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v5, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/e;)V

    .line 159
    iget-object v2, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 162
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const-string v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v3, "is_mraid_ad"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {p0, v1, v2, v4}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 169
    :cond_3
    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v3, "Can\'t start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser"

    invoke-static {v8, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v1, v0, v4}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 177
    :cond_4
    sget-object v0, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v2, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V
    .locals 7

    .prologue
    .line 245
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v3

    .line 246
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v5, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 247
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v4, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 249
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "urlVerified"

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 254
    new-instance v0, Lcom/flurry/sdk/q;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget v6, v6, Lcom/flurry/sdk/q;->e:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, p0, v1}, Lcom/flurry/sdk/ae;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 257
    :cond_0
    return-void

    .line 252
    :cond_1
    const-string v1, "urlNotVerified"

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/a;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 779
    .line 781
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url after is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;ILcom/flurry/sdk/r$b;I)V

    .line 783
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 464
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    invoke-static {p1, p2}, Lcom/flurry/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_2

    .line 470
    invoke-virtual {p0, p1, v1, p3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 472
    :cond_2
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Play is not installed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 868
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 870
    if-nez p1, :cond_0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 874
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c(Lcom/flurry/sdk/a;)V
    .locals 7

    .prologue
    .line 195
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 196
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    const/4 v1, -0x1

    .line 202
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;I)V

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v3

    .line 204
    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught NumberFormatException with count parameter in deleteAds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method c(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 371
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v3

    .line 372
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v5, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 373
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v4, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 375
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/y;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)Lcom/flurry/sdk/x;

    move-result-object v2

    .line 381
    const-string v1, "capNotExhausted"

    .line 384
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/y;

    invoke-virtual {v2}, Lcom/flurry/sdk/x;->h()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/flurry/sdk/y;->a(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding expired frequency cap info for idHash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v2, v6}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/y;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/y;->b(Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x0

    .line 393
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/flurry/sdk/x;->c()I

    move-result v6

    invoke-virtual {v2}, Lcom/flurry/sdk/x;->e()I

    move-result v2

    if-lt v6, v2, :cond_1

    .line 394
    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frequency cap exhausted for idHash="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "capExhausted"

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 399
    new-instance v0, Lcom/flurry/sdk/q;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v6, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget v6, v6, Lcom/flurry/sdk/q;->e:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, p0, v1}, Lcom/flurry/sdk/ae;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 404
    :cond_2
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 478
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    invoke-static {p1, p2}, Lcom/flurry/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_2

    .line 484
    invoke-virtual {p0, p1, v1, p3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 486
    :cond_2
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot launch App: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method d(Lcom/flurry/sdk/a;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 217
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v1

    .line 218
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 219
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v4, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 221
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    iget-object v3, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v6, "native"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    const-string v3, "false"

    iget-object v6, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v7, "native"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 229
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    invoke-virtual {p0, v2, v4, p1, v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x3

    sget-object v6, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling processRedirectURL for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and launching in webView: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 235
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 237
    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    const-string v2, "Cannot launch url, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    .line 497
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 498
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method e(Lcom/flurry/sdk/a;)V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v1

    .line 261
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 263
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {p0, v1, v0, v2}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 267
    :cond_0
    return-void
.end method

.method f(Lcom/flurry/sdk/a;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v0, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    .line 271
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 273
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method g(Lcom/flurry/sdk/a;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->C()V

    .line 283
    return-void
.end method

.method h(Lcom/flurry/sdk/a;)V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 288
    :goto_0
    iget-object v1, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v2, "__sendToServer"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v2, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    iget-object v3, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v3, v3, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/e;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/sdk/e;

    .line 292
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i(Lcom/flurry/sdk/a;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method j(Lcom/flurry/sdk/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 407
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/y;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)Lcom/flurry/sdk/x;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/flurry/sdk/x;->d()V

    .line 415
    sget-object v1, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewCount:idHash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newCap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",prevCap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",views="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/flurry/sdk/x;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->e()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 421
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 422
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v0}, Lcom/flurry/sdk/x;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->e()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 425
    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlurryAdAction: !! rendering a capped object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for adspace: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->d(Ljava/lang/String;)V

    .line 439
    :cond_0
    return-void

    .line 430
    :cond_1
    sget-object v2, Lcom/flurry/sdk/r;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryAdAction: hit cap for object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cache cleared for adspace: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
