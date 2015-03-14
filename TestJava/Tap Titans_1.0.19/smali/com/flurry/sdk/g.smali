.class public Lcom/flurry/sdk/g;
.super Lcom/flurry/sdk/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/flurry/sdk/ad;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/g$a;,
        Lcom/flurry/sdk/g$b;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Z

.field private H:Z

.field a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/flurry/sdk/f;

.field private e:Z

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/widget/Button;

.field private h:I

.field private i:Z

.field private j:Landroid/webkit/WebViewClient;

.field private k:Landroid/webkit/WebChromeClient;

.field private l:Landroid/view/View;

.field private m:I

.field private n:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/widget/FrameLayout;

.field private q:I

.field private r:Landroid/app/Dialog;

.field private s:Landroid/widget/FrameLayout;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

.field private z:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/i;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;)V

    .line 84
    const-class v0, Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    .line 140
    iput-boolean v2, p0, Lcom/flurry/sdk/g;->F:Z

    .line 144
    iput-boolean v2, p0, Lcom/flurry/sdk/g;->G:Z

    .line 146
    iput-boolean v1, p0, Lcom/flurry/sdk/g;->H:Z

    .line 752
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->setClickable(Z)V

    .line 754
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/g;->setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 755
    invoke-virtual {p0, p5}, Lcom/flurry/sdk/g;->setAdFrameIndex(I)V

    .line 757
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 759
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/g;->h:I

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    .line 764
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->v:Z

    .line 765
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/g;->B:Z

    .line 766
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->B:Z

    if-eqz v0, :cond_1

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->D:Ljava/util/Map;

    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->C:Ljava/util/Map;

    .line 769
    iget-object v0, p0, Lcom/flurry/sdk/g;->D:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/flurry/sdk/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lcom/flurry/sdk/g;->C:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->E:Ljava/util/List;

    .line 777
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 765
    goto :goto_0

    .line 775
    :cond_3
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "adunit is Null"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic A(Lcom/flurry/sdk/g;)Lcom/flurry/sdk/f;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    return-object v0
.end method

.method private A()Z
    .locals 4

    .prologue
    .line 1770
    const/4 v0, 0x3

    const-string v1, "viewAttached"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fViewAttachedToActivity ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/g;->F:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1771
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->F:Z

    return v0
.end method

.method private B()V
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    .line 1797
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/g;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/flurry/sdk/g;->m:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/sdk/g;->o:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/sdk/g;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/sdk/g;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/sdk/g;->p:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1667
    const-string v0, "\'{\"adComponents\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-static {v0}, Lcom/flurry/sdk/cf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1671
    invoke-static {v2, v0}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1673
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1674
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1675
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 1676
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v3, v2, :cond_1

    .line 1685
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/fb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1693
    :cond_2
    const-string v0, "]}\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 1700
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 1701
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1702
    iget-object v4, p0, Lcom/flurry/sdk/g;->C:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1705
    :cond_1
    return-object v2
.end method

.method private a(II)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1349
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1356
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v5, v1, :cond_2

    .line 1363
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->removeView(Landroid/view/View;)V

    .line 1366
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/g;->q:I

    .line 1368
    iget-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    .line 1369
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    .line 1370
    iget-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1371
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1372
    iget-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-nez v1, :cond_4

    .line 1379
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    .line 1381
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/ch;->a(Landroid/view/Window;)V

    .line 1382
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    new-instance v2, Lcom/flurry/sdk/g$4;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/g$4;-><init>(Lcom/flurry/sdk/g;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1394
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1395
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1401
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/cb;->a()I

    move-result v1

    invoke-static {v0, v1, v6}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;IZ)Z

    .line 1403
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1775
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 1776
    if-eqz p1, :cond_1

    .line 1777
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    .line 1778
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1779
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1780
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1781
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1782
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1783
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "Context is null, cannot create progress dialog."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/a;)V
    .locals 3

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/flurry/sdk/g;->E:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v2, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/flurry/sdk/g;->E:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1342
    :cond_0
    return-void
.end method

.method private a(Lcom/flurry/sdk/a;I)V
    .locals 4

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->B:Z

    if-nez v0, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 783
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v1

    .line 784
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentFormat()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/e;)V

    .line 789
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    const-string v1, "frameIndex"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->setAdLog(Lcom/flurry/sdk/e;)V

    .line 801
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/g;->setAdFrameIndex(I)V

    .line 802
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->initLayout()V

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v1, "guid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    if-eqz v0, :cond_0

    .line 809
    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->d(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 810
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    .line 811
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 812
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v0

    .line 813
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v1, v1, Lcom/flurry/sdk/q;->d:Lcom/flurry/sdk/e;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->setAdLog(Lcom/flurry/sdk/e;)V

    .line 814
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 815
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 816
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/e;)V

    .line 818
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->setAdLog(Lcom/flurry/sdk/e;)V

    .line 819
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/g;->setAdFrameIndex(I)V

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->B:Z

    .line 821
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->initLayout()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eventListenerAdded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/flurry/sdk/g;->r()V

    .line 677
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 1016
    if-nez p1, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1021
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1022
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1027
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v6

    iget-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v7

    .line 1029
    invoke-virtual {v7}, Lcom/flurry/sdk/am;->a()I

    move-result v8

    .line 1031
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-nez v0, :cond_1

    .line 1032
    new-instance v0, Lcom/flurry/sdk/z;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/z;-><init>(Landroid/content/Context;JZZZ)V

    .line 1033
    invoke-virtual {v0, v7}, Lcom/flurry/sdk/z;->setVideoState(Lcom/flurry/sdk/am;)V

    .line 1034
    new-instance v2, Lcom/flurry/sdk/f;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getFullScreenTakeover()Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    move-result-object v3

    invoke-direct {v2, v1, p0, v3, v0}, Lcom/flurry/sdk/f;-><init>(Landroid/content/Context;Lcom/flurry/sdk/g;Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/z;)V

    iput-object v2, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->y:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/flurry/sdk/g;->y:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setVideoOrientation()V

    .line 1041
    :cond_2
    const/4 v0, 0x0

    .line 1043
    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Getting video from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_4

    .line 1046
    iget-object v2, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/flurry/sdk/f;->a(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_1
    if-nez v5, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/flurry/sdk/f;->a(Landroid/net/Uri;I)V

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->a()V

    .line 1059
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v9, v2, v3, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v5, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/sdk/g;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/sdk/g;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/g;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/g;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->d(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method private b(II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1407
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1414
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1420
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 1421
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1422
    iget-object v1, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1424
    :cond_2
    iput-object v4, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    .line 1426
    iget v1, p0, Lcom/flurry/sdk/g;->q:I

    invoke-static {v0, v1}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;I)V

    .line 1428
    iget-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 1429
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1433
    :cond_3
    iput-object v4, p0, Lcom/flurry/sdk/g;->s:Landroid/widget/FrameLayout;

    .line 1436
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1437
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->addView(Landroid/view/View;)V

    .line 1440
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1066
    new-instance v0, Lcom/flurry/sdk/ei;

    invoke-direct {v0}, Lcom/flurry/sdk/ei;-><init>()V

    .line 1067
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 1068
    new-instance v1, Lcom/flurry/sdk/ev;

    invoke-direct {v1}, Lcom/flurry/sdk/ev;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/eu;)V

    .line 1069
    new-instance v1, Lcom/flurry/sdk/g$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/g$1;-><init>(Lcom/flurry/sdk/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 1103
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    .line 1104
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/g;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/sdk/g;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/g;Ljava/lang/String;)Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->c(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/flurry/sdk/e;
    .locals 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/flurry/sdk/g;->D:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1710
    const/4 v0, 0x0

    .line 1718
    :cond_0
    :goto_0
    return-object v0

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/e;

    .line 1714
    if-nez v0, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v0

    .line 1716
    iget-object v1, p0, Lcom/flurry/sdk/g;->D:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->i()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/g;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/flurry/sdk/g;->H:Z

    return p1
.end method

.method private d(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/flurry/sdk/g;->C:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1723
    const/4 v0, 0x0

    .line 1726
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/g;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    goto :goto_0
.end method

.method static synthetic d(Lcom/flurry/sdk/g;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/g;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->n()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/g;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->t:Z

    return v0
.end method

.method static synthetic h(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->q()V

    return-void
.end method

.method private declared-synchronized h()Z
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/flurry/sdk/g;->k()V

    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->w()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->setFlurryJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->x()V

    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 554
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "initializeFlurryJsEnv"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    const-string v1, "javascript:(function() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, "var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, "var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, "window.Hogan=Hogan;window.flurryadapter=flurryBridgeCtor(window);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, "window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->y()V

    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 570
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "activateFlurryJsEnv"

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentContent()Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-boolean v1, p0, Lcom/flurry/sdk/g;->B:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v1}, Lcom/flurry/sdk/cf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {v2, v1}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 594
    iget-object v3, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content before {{mustached}} tags replacement = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content after {{mustached}} tags replacement = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, "(function(){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, "if(!window.Hogan){var Hogan={};(function(Hogan,useArrayBuffer){Hogan.Template=function(renderFunc,text,compiler,options){this.r=renderFunc||this.r;this.c=compiler;this.options=options;this.text=text||\"\";this.buf=useArrayBuffer?[]:\"\"};Hogan.Template.prototype={r:function(context,partials,indent){return\"\"},v:hoganEscape,t:coerceToString,render:function render(context,partials,indent){return this.ri([context],partials||{},indent)},ri:function(context,partials,indent){return this.r(context,partials,indent)},rp:function(name,context,partials,indent){var partial=partials[name];if(!partial){return\"\"}if(this.c&&typeof partial==\"string\"){partial=this.c.compile(partial,this.options)}return partial.ri(context,partials,indent)},rs:function(context,partials,section){var tail=context[context.length-1];if(!isArray(tail)){section(context,partials,this);return}for(var i=0;i<tail.length;i++){context.push(tail[i]);section(context,partials,this);context.pop()}},s:function(val,ctx,partials,inverted,start,end,tags){var pass;if(isArray(val)&&val.length===0){return false}if(typeof val==\"function\"){val=this.ls(val,ctx,partials,inverted,start,end,tags)}pass=(val===\"\")||!!val;if(!inverted&&pass&&ctx){ctx.push((typeof val==\"object\")?val:ctx[ctx.length-1])}return pass},d:function(key,ctx,partials,returnFound){var names=key.split(\".\"),val=this.f(names[0],ctx,partials,returnFound),cx=null;if(key===\".\"&&isArray(ctx[ctx.length-2])){return ctx[ctx.length-1]}for(var i=1;i<names.length;i++){if(val&&typeof val==\"object\"&&names[i] in val){cx=val;val=val[names[i]]}else{val=\"\"}}if(returnFound&&!val){return false}if(!returnFound&&typeof val==\"function\"){ctx.push(cx);val=this.lv(val,ctx,partials);ctx.pop()}return val},f:function(key,ctx,partials,returnFound){var val=false,v=null,found=false;for(var i=ctx.length-1;i>=0;i--){v=ctx[i];if(v&&typeof v==\"object\"&&key in v){val=v[key];found=true;break}}if(!found){return(returnFound)?false:\"\"}if(!returnFound&&typeof val==\"function\"){val=this.lv(val,ctx,partials)}return val},ho:function(val,cx,partials,text,tags){var compiler=this.c;var options=this.options;options.delimiters=tags;var text=val.call(cx,text);text=(text==null)?String(text):text.toString();this.b(compiler.compile(text,options).render(cx,partials));return false},b:(useArrayBuffer)?function(s){this.buf.push(s)}:function(s){this.buf+=s},fl:(useArrayBuffer)?function(){var r=this.buf.join(\"\");this.buf=[];return r}:function(){var r=this.buf;this.buf=\"\";return r},ls:function(val,ctx,partials,inverted,start,end,tags){var cx=ctx[ctx.length-1],t=null;if(!inverted&&this.c&&val.length>0){return this.ho(val,cx,partials,this.text.substring(start,end),tags)}t=val.call(cx);if(typeof t==\"function\"){if(inverted){return true}else{if(this.c){return this.ho(t,cx,partials,this.text.substring(start,end),tags)}}}return t},lv:function(val,ctx,partials){var cx=ctx[ctx.length-1];var result=val.call(cx);if(typeof result==\"function\"){result=coerceToString(result.call(cx));if(this.c&&~result.indexOf(\"{\\u007B\")){return this.c.compile(result,this.options).render(cx,partials)}}return coerceToString(result)}};var rAmp=/&/g,rLt=/</g,rGt=/>/g,rApos=/\\\'/g,rQuot=/\\\"/g,hChars=/[&<>\\\"\\\']/;function coerceToString(val){return String((val===null||val===undefined)?\"\":val)}function hoganEscape(str){str=coerceToString(str);return hChars.test(str)?str.replace(rAmp,\"&amp;\").replace(rLt,\"&lt;\").replace(rGt,\"&gt;\").replace(rApos,\"&#39;\").replace(rQuot,\"&quot;\"):str}var isArray=Array.isArray||function(a){return Object.prototype.toString.call(a)===\"[object Array]\"}})(typeof exports!==\"undefined\"?exports:Hogan);(function(Hogan){var rIsWhitespace=/\\S/,rQuot=/\\\"/g,rNewline=/\\n/g,rCr=/\\r/g,rSlash=/\\\\/g,tagTypes={\"#\":1,\"^\":2,\"/\":3,\"!\":4,\">\":5,\"<\":6,\"=\":7,_v:8,\"{\":9,\"&\":10};Hogan.scan=function scan(text,delimiters){var len=text.length,IN_TEXT=0,IN_TAG_TYPE=1,IN_TAG=2,state=IN_TEXT,tagType=null,tag=null,buf=\"\",tokens=[],seenTag=false,i=0,lineStart=0,otag=\"{{\",ctag=\"}}\";function addBuf(){if(buf.length>0){tokens.push(new String(buf));buf=\"\"}}function lineIsWhitespace(){var isAllWhitespace=true;for(var j=lineStart;j<tokens.length;j++){isAllWhitespace=(tokens[j].tag&&tagTypes[tokens[j].tag]<tagTypes._v)||(!tokens[j].tag&&tokens[j].match(rIsWhitespace)===null);if(!isAllWhitespace){return false}}return isAllWhitespace}function filterLine(haveSeenTag,noNewLine){addBuf();if(haveSeenTag&&lineIsWhitespace()){for(var j=lineStart,next;j<tokens.length;j++){if(!tokens[j].tag){if((next=tokens[j+1])&&next.tag==\">\"){next.indent=tokens[j].toString()}tokens.splice(j,1)}}}else{if(!noNewLine){tokens.push({tag:\"\\n\"})}}seenTag=false;lineStart=tokens.length}function changeDelimiters(text,index){var close=\"=\"+ctag,closeIndex=text.indexOf(close,index),delimiters=trim(text.substring(text.indexOf(\"=\",index)+1,closeIndex)).split(\" \");otag=delimiters[0];ctag=delimiters[1];return closeIndex+close.length-1}if(delimiters){delimiters=delimiters.split(\" \");otag=delimiters[0];ctag=delimiters[1]}for(i=0;i<len;i++){if(state==IN_TEXT){if(tagChange(otag,text,i)){--i;addBuf();state=IN_TAG_TYPE}else{if(text.charAt(i)==\"\\n\"){filterLine(seenTag)}else{buf+=text.charAt(i)}}}else{if(state==IN_TAG_TYPE){i+=otag.length-1;tag=tagTypes[text.charAt(i+1)];tagType=tag?text.charAt(i+1):\"_v\";if(tagType==\"=\"){i=changeDelimiters(text,i);state=IN_TEXT}else{if(tag){i++}state=IN_TAG}seenTag=i}else{if(tagChange(ctag,text,i)){tokens.push({tag:tagType,n:trim(buf),otag:otag,ctag:ctag,i:(tagType==\"/\")?seenTag-ctag.length:i+otag.length});buf=\"\";i+=ctag.length-1;state=IN_TEXT;if(tagType==\"{\"){if(ctag==\"}}\"){i++}else{cleanTripleStache(tokens[tokens.length-1])}}}else{buf+=text.charAt(i)}}}}filterLine(seenTag,true);return tokens};function cleanTripleStache(token){if(token.n.substr(token.n.length-1)===\"}\"){token.n=token.n.substring(0,token.n.length-1)}}function trim(s){if(s.trim){return s.trim()}return s.replace(/^\\s*|\\s*$/g,\"\")}function tagChange(tag,text,index){if(text.charAt(index)!=tag.charAt(0)){return false}for(var i=1,l=tag.length;i<l;i++){if(text.charAt(index+i)!=tag.charAt(i)){return false}}return true}function buildTree(tokens,kind,stack,customTags){var instructions=[],opener=null,token=null;while(tokens.length>0){token=tokens.shift();if(token.tag==\"#\"||token.tag==\"^\"||isOpener(token,customTags)){stack.push(token);token.nodes=buildTree(tokens,token.tag,stack,customTags);instructions.push(token)}else{if(token.tag==\"/\"){if(stack.length===0){throw new Error(\"Closing tag without opener: /\"+token.n)}opener=stack.pop();if(token.n!=opener.n&&!isCloser(token.n,opener.n,customTags)){throw new Error(\"Nesting error: \"+opener.n+\" vs. \"+token.n)}opener.end=token.i;return instructions}else{instructions.push(token)}}}if(stack.length>0){throw new Error(\"missing closing tag: \"+stack.pop().n)}return instructions}function isOpener(token,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].o==token.n){token.tag=\"#\";return true}}}function isCloser(close,open,tags){for(var i=0,l=tags.length;i<l;i++){if(tags[i].c==close&&tags[i].o==open){return true}}}Hogan.generate=function(tree,text,options){var code=\'var _=this;_.b(i=i||\"\");\'+walk(tree)+\"return _.fl();\";if(options.asString){return\"function(c,p,i){\"+code+\";}\"}return new Hogan.Template(new Function(\"c\",\"p\",\"i\",code),text,Hogan,options)};function esc(s){return s.replace(rSlash,\"\\\\\\\\\").replace(rQuot,\'\\\\\"\').replace(rNewline,\"\\\\n\").replace(rCr,\"\\\\r\")}function chooseMethod(s){return(~s.indexOf(\".\"))?\"d\":\"f\"}function walk(tree){var code=\"\";for(var i=0,l=tree.length;i<l;i++){var tag=tree[i].tag;if(tag==\"#\"){code+=section(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n),tree[i].i,tree[i].end,tree[i].otag+\" \"+tree[i].ctag)}else{if(tag==\"^\"){code+=invertedSection(tree[i].nodes,tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"<\"||tag==\">\"){code+=partial(tree[i])}else{if(tag==\"{\"||tag==\"&\"){code+=tripleStache(tree[i].n,chooseMethod(tree[i].n))}else{if(tag==\"\\n\"){code+=text(\'\"\\\\n\"\'+(tree.length-1==i?\"\":\" + i\"))}else{if(tag==\"_v\"){code+=variable(tree[i].n,chooseMethod(tree[i].n))}else{if(tag===undefined){code+=text(\'\"\'+esc(tree[i])+\'\"\')}}}}}}}}return code}function section(nodes,id,method,start,end,tags){return\"if(_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,0,\'+start+\",\"+end+\',\"\'+tags+\'\")){_.rs(c,p,function(c,p,_){\'+walk(nodes)+\"});c.pop();}\"}function invertedSection(nodes,id,method){return\"if(!_.s(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,1),c,p,1,0,0,\"\")){\'+walk(nodes)+\"};\"}function partial(tok){return\'_.b(_.rp(\"\'+esc(tok.n)+\'\",c,p,\"\'+(tok.indent||\"\")+\'\"));\'}function tripleStache(id,method){return\"_.b(_.t(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function variable(id,method){return\"_.b(_.v(_.\"+method+\'(\"\'+esc(id)+\'\",c,p,0)));\'}function text(id){return\"_.b(\"+id+\");\"}Hogan.parse=function(tokens,text,options){options=options||{};return buildTree(tokens,\"\",[],options.sectionTags||[])},Hogan.cache={};Hogan.compile=function(text,options){options=options||{};var key=text+\"||\"+!!options.asString;var t=this.cache[key];if(t){return t}t=this.generate(this.parse(this.scan(text,options.delimiters),text,options),text,options);return this.cache[key]=t}})(typeof exports!==\"undefined\"?exports:Hogan);window.Hogan=Hogan;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v2, "if(!window.flurryadapter){var flurryBridgeCtor=function(w){var flurryadapter={};flurryadapter.flurryCallQueue=[];flurryadapter.flurryCallInProgress=false;flurryadapter.callComplete=function(cmd){if(this.flurryCallQueue.length==0){this.flurryCallInProgress=false;return}var adapterCall=this.flurryCallQueue.splice(0,1)[0];this.executeNativeCall(adapterCall);return\"OK\"};flurryadapter.executeCall=function(command){var adapterCall=\"flurry://flurrycall?event=\"+command;var value;for(var i=1;i<arguments.length;i+=2){value=arguments[i+1];if(value==null)continue;adapterCall+=\"&\"+arguments[i]+\"=\"+escape(value)}if(this.flurryCallInProgress)this.flurryCallQueue.push(adapterCall);else this.executeNativeCall(adapterCall)};flurryadapter.executeNativeCall=function(adapterCall){if(adapterCall.length==0)return;this.flurryCallInProgress=true;w.location=adapterCall};return flurryadapter};window.flurryadapter=flurryBridgeCtor(window);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v2, "if(!window.flurryAdapterAvailable){window.flurryAdapterAvailable=true;if(typeof window.FlurryAdapterReady === \'function\'){window.FlurryAdapterReady();} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v0}, Lcom/flurry/sdk/fb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    const-string v2, "var content=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v0, "\';var compiled=window.Hogan.compile(document.body.innerHTML);var rendered=compiled.render(JSON.parse(content));document.body.innerHTML=rendered;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 618
    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->z()V

    return-void
.end method

.method static synthetic m(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->j()V

    return-void
.end method

.method private declared-synchronized m()Z
    .locals 1

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/g;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/flurry/sdk/g;->p()V

    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :cond_0
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->o()V

    return-void
.end method

.method private declared-synchronized o()V
    .locals 1

    .prologue
    .line 636
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic o(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->l()V

    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 640
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "initializeMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interstitial"

    .line 645
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{useCustomClose:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isModal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width:undefined,height:undefined,placementType:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    const-string v2, "javascript:(function() {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v2, "var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"http://flurry.cachefly.net/adSpaceStyles/images/bttn-close-bw.png\";var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED)){addDefaultClose();console.log(\'close button added\');}else {removeDefaultClose(); console.log(\'close button removed\');}};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"\'\"+p+\"\':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);updateDefaultClose();flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();broadcastEvent(EVENTS.READY)}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height,\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.playVideo=function(url){if(disable){return;}try{flurryBridge.executeCall(\"playVideo\",\"url\",url);}catch(e){console.log(e);}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose()}};return mraid};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraid=mraidCtor(window.flurryadapter,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void

    .line 642
    :cond_1
    const-string v0, "inline"

    goto :goto_0
.end method

.method static synthetic p(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->B()V

    return-void
.end method

.method static synthetic q(Lcom/flurry/sdk/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->E:Ljava/util/List;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 660
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "activateMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, "if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 671
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 682
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "no activity present"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 691
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-static {}, Lcom/flurry/sdk/cb;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;IZ)Z

    goto :goto_0
.end method

.method static synthetic r(Lcom/flurry/sdk/g;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/flurry/sdk/g;->H:Z

    return v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 710
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->u()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)I

    move-result v1

    .line 712
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 713
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;IZ)Z

    goto :goto_0
.end method

.method static synthetic s(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/flurry/sdk/g;->u()V

    return-void
.end method

.method private declared-synchronized setFlurryJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/sdk/g;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMraidJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/sdk/g;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic t(Lcom/flurry/sdk/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->l:Landroid/view/View;

    return-object v0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/flurry/sdk/g;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lcom/flurry/sdk/g;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 827
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "closing ad"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 835
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic v(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->p:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic w(Lcom/flurry/sdk/g;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v1, "javascript:(function() { document.getElementById(\'flurry_interstitial_close\').style.display = \'none\'; })()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1451
    return-void
.end method

.method static synthetic x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    return-object v0
.end method

.method private x()V
    .locals 6

    .prologue
    const/4 v2, -0x2

    const/high16 v5, 0x42480000

    const/high16 v3, 0x41200000

    const/4 v4, 0x0

    .line 1454
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/g;->w:Z

    if-nez v0, :cond_0

    .line 1456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->w:Z

    .line 1457
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->g:Landroid/widget/Button;

    .line 1458
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1459
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1460
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1461
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1462
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1463
    mul-float v2, v3, v1

    float-to-int v2, v2

    .line 1464
    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 1465
    invoke-virtual {v0, v4, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1466
    mul-float v2, v5, v1

    float-to-int v2, v2

    .line 1467
    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 1468
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1469
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1470
    iget-object v1, p0, Lcom/flurry/sdk/g;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    iget-object v0, p0, Lcom/flurry/sdk/g;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1472
    iget-object v0, p0, Lcom/flurry/sdk/g;->g:Landroid/widget/Button;

    new-instance v1, Lcom/flurry/sdk/g$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/g$5;-><init>(Lcom/flurry/sdk/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1478
    iget-object v0, p0, Lcom/flurry/sdk/g;->g:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->addView(Landroid/view/View;)V

    .line 1480
    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/flurry/sdk/g;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/flurry/sdk/g;->m:I

    return v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v1, "javascript:if(window.mraid && typeof window.mraid.disable === \'function\'){window.mraid.disable();}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method static synthetic z(Lcom/flurry/sdk/g;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/g;->n:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v1, "javascript:var closeButtonDiv =  document.getElementById(\'flurry_interstitial_close\');if (typeof(element) == \'undefined\' || element == null){var newdiv = document.createElement(\'div\');var divIdName = \'flurry_interstitial_close\';newdiv.setAttribute(\'id\',divIdName);newdiv.innerHTML = \'<a href=\"flurry://flurrycall?event=adWillClose\"><div id=\"rtb_close\"><img src=\"http://cdn.flurry.com/adSpaceStyles.dev/images/bttn-close-bw.png\" alt=\"close advertisement\" /></div></a></div>\';document.body.appendChild(newdiv);}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1498
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1501
    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1503
    return-void
.end method

.method public a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V
    .locals 9

    .prologue
    .line 1108
    iget-object v1, p1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    .line 1109
    iget-object v3, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    .line 1110
    iget-object v4, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    .line 1112
    const/16 v0, 0xa

    if-le p3, v0, :cond_1

    .line 1113
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",triggered by:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v3, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    iget-object v0, v3, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v2, "clicked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, v3, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v2, "noop"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1122
    if-eqz v0, :cond_2

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "\'clicked\' event is a noop"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_2
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performAction(action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",params="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",triggering event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v0, "nextFrame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1132
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1133
    const-string v0, "offset"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    if-eqz v0, :cond_5

    .line 1135
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1136
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1147
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    .line 1330
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;)V

    goto/16 :goto_0

    .line 1137
    :cond_4
    const-string v2, "current"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1141
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 1148
    :cond_6
    const-string v0, "closeAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1149
    invoke-direct {p0}, Lcom/flurry/sdk/g;->u()V

    goto :goto_2

    .line 1150
    :cond_7
    const-string v0, "notifyUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1154
    invoke-direct {p0}, Lcom/flurry/sdk/g;->A()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1155
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "View not attached to any window."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1170
    :cond_8
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1174
    const-string v0, "message"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "confirmDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "cancelDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1176
    const-string v0, "message"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1177
    const-string v1, "confirmDisplay"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1178
    const-string v2, "cancelDisplay"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1185
    :goto_3
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/flurry/sdk/g$3;

    invoke-direct {v4, p0, v3, p3}, Lcom/flurry/sdk/g$3;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/q;I)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/g$2;

    invoke-direct {v2, p0, v3, p3}, Lcom/flurry/sdk/g$2;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/q;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1211
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    .line 1213
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_9

    .line 1214
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->pause()V

    .line 1216
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1180
    :cond_a
    const-string v0, "Are you sure?"

    .line 1181
    const-string v1, "Cancel"

    .line 1182
    const-string v2, "OK"

    goto :goto_3

    .line 1218
    :cond_b
    const-string v0, "loadAdComponents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1219
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 1220
    const-string v2, "min"

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "max"

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1222
    :try_start_1
    const-string v0, "min"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1223
    const-string v0, "max"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1232
    :cond_c
    :goto_4
    const/4 v2, 0x1

    if-ge v2, v1, :cond_d

    .line 1233
    add-int/lit8 v1, v1, -0x1

    .line 1236
    :cond_d
    const/4 v2, 0x1

    if-ge v2, v0, :cond_e

    .line 1237
    add-int/lit8 v0, v0, -0x1

    .line 1240
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1243
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 1244
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/flurry/sdk/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_f

    .line 1246
    iget-object v1, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() {var multiadwraps=document.getElementsByClassName(\'multiAdWrap\');if(multiadwraps.length>0){var template=document.getElementsByClassName(\'multiAdWrap\')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML=\'\';template.innerHTML=compiled.render(JSON.parse("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "));}})();"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v1, "javascript:flurryadapter.callComplete();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1250
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 1251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1252
    const-string v1, "guid"

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string v1, "rendered"

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->c(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto :goto_5

    .line 1224
    :catch_1
    move-exception v0

    .line 1225
    const/4 v1, 0x1

    .line 1226
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 1257
    :cond_10
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1261
    :cond_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1262
    const-string v0, "errorCode"

    sget-object v1, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/b;

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const-string v1, "renderFailed"

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto/16 :goto_2

    .line 1266
    :cond_12
    const-string v0, "doExpand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1267
    invoke-static {}, Lcom/flurry/sdk/ez;->e()I

    move-result v1

    .line 1268
    invoke-static {}, Lcom/flurry/sdk/ez;->f()I

    move-result v0

    .line 1269
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v2, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v3, "width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v2, v2, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1276
    :try_start_2
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v1

    .line 1278
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v7, v0

    move v8, v1

    .line 1288
    :goto_6
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand to width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getHolder()Lcom/flurry/sdk/l;

    move-result-object v0

    .line 1290
    if-eqz v0, :cond_13

    .line 1291
    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1293
    invoke-direct {p0, v8, v7}, Lcom/flurry/sdk/g;->a(II)V

    .line 1295
    :cond_13
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1296
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    .line 1298
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1301
    const-string v1, "url"

    iget-object v2, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v1, "is_mraid_ad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 1281
    :catch_2
    move-exception v0

    .line 1282
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-static {}, Lcom/flurry/sdk/ez;->e()I

    move-result v1

    .line 1284
    invoke-static {}, Lcom/flurry/sdk/ez;->f()I

    move-result v0

    move v7, v0

    move v8, v1

    goto/16 :goto_6

    .line 1305
    :cond_14
    const-string v0, "doCollapse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1307
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1308
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1310
    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    .line 1311
    invoke-static {v1}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v1

    .line 1312
    iget-object v2, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 1314
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    .line 1315
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->initLayout()V

    .line 1317
    :cond_15
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getHolder()Lcom/flurry/sdk/l;

    move-result-object v2

    .line 1318
    if-eqz v2, :cond_3

    .line 1319
    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/g;->b(II)V

    goto/16 :goto_2

    .line 1322
    :cond_16
    const-string v0, "directOpen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1324
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1325
    const-string v0, "noop"

    const-string v1, "true"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v1, "clicked"

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1328
    :cond_17
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V

    goto/16 :goto_2

    :cond_18
    move v7, v0

    move v8, v1

    goto/16 :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            "Lcom/flurry/sdk/e;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1626
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireEvent(event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v7

    new-instance v0, Lcom/flurry/sdk/q;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    invoke-virtual {v7, v0, p0, p6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 1629
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1741
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1512
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1514
    iput-boolean v3, p0, Lcom/flurry/sdk/g;->e:Z

    .line 1515
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/sdk/g;->G:Z

    if-eqz v0, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->G:Z

    .line 1527
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v2, "Alert dialog in foreground. Do nothing and wait for user input."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/flurry/sdk/g;->H:Z

    .line 1534
    return-void

    .line 1529
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/g;->e:Z

    .line 1530
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1538
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1549
    iput-boolean v2, p0, Lcom/flurry/sdk/g;->G:Z

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->pause()V

    .line 1552
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->d()V

    .line 1554
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->e:Z

    .line 1555
    iput-boolean v2, p0, Lcom/flurry/sdk/g;->H:Z

    .line 1556
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1618
    :cond_0
    const/4 v0, 0x0

    .line 1620
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->S()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Z
    .locals 4

    .prologue
    .line 1731
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    .line 1732
    if-nez v0, :cond_0

    .line 1733
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not rotate)"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1736
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/g;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/g;->t()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    return-object v0
.end method

.method public getCurrentBinding()I
    .locals 1

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getCurrentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullScreenTakeover()Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/flurry/sdk/g;->y:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    return-object v0
.end method

.method getHolder()Lcom/flurry/sdk/l;
    .locals 2

    .prologue
    .line 1757
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1758
    instance-of v1, v0, Lcom/flurry/sdk/l;

    if-eqz v1, :cond_0

    .line 1759
    check-cast v0, Lcom/flurry/sdk/l;

    .line 1762
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoView()Lcom/flurry/sdk/f;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    return-object v0
.end method

.method public initLayout()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 844
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initLayout: ad creative layout: {width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentAdFrame()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 853
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->removeAllViews()V

    .line 854
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->setFocusable(Z)V

    .line 855
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/g;->setFocusableInTouchMode(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1006
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1007
    const-string v0, "errorCode"

    sget-object v1, Lcom/flurry/sdk/b;->f:Lcom/flurry/sdk/b;

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string v1, "renderFailed"

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1012
    :goto_0
    return-void

    .line 859
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 875
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    iget-object v0, p0, Lcom/flurry/sdk/g;->A:Ljava/util/List;

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_1

    .line 879
    sget-object v2, Lcom/flurry/sdk/cp;->b:Lcom/flurry/sdk/cp;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/cp;)Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-static {v2}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 881
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v6, v1

    .line 884
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 890
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    .line 891
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 892
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 893
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 894
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 895
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 897
    new-instance v0, Lcom/flurry/sdk/g$a;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/g$a;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    .line 898
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 899
    new-instance v0, Lcom/flurry/sdk/g$b;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/g$b;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->j:Landroid/webkit/WebViewClient;

    .line 900
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/g;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v1, "base://url/"

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 910
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    invoke-direct {p0}, Lcom/flurry/sdk/g;->B()V

    .line 920
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    invoke-direct {p0, v7}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;)V

    .line 932
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/g;->s()V

    goto/16 :goto_0

    .line 949
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_4

    .line 950
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    .line 951
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 952
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 954
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 955
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 957
    new-instance v0, Lcom/flurry/sdk/g$a;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/g$a;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    .line 958
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 959
    new-instance v0, Lcom/flurry/sdk/g$b;

    invoke-direct {v0, p0, v5}, Lcom/flurry/sdk/g$b;-><init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/g;->j:Landroid/webkit/WebViewClient;

    .line 960
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/g;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 964
    iget-object v0, p0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->b(Ljava/lang/String;)V

    .line 981
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    invoke-direct {p0}, Lcom/flurry/sdk/g;->B()V

    .line 990
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 991
    invoke-direct {p0, v7}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;)V

    .line 1002
    :cond_5
    invoke-direct {p0}, Lcom/flurry/sdk/g;->s()V

    goto/16 :goto_0

    .line 965
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v0

    if-nez v0, :cond_8

    .line 967
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 969
    if-nez v2, :cond_7

    .line 970
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 972
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/cf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto :goto_1

    .line 978
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/g;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1560
    invoke-super {p0}, Lcom/flurry/sdk/i;->onAttachedToWindow()V

    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->F:Z

    .line 1562
    return-void
.end method

.method public onDestroy()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 1573
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getCurrentBinding()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->c()V

    .line 1581
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/g;->B()V

    .line 1584
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/flurry/sdk/g;->z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_2

    .line 1589
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->f()V

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    .line 1593
    iget-object v0, p0, Lcom/flurry/sdk/g;->l:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_3

    .line 1594
    iget-object v0, p0, Lcom/flurry/sdk/g;->k:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1597
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/g;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 1598
    invoke-direct {p0, v6, v6}, Lcom/flurry/sdk/g;->b(II)V

    .line 1601
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/g;->removeView(Landroid/view/View;)V

    .line 1602
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1604
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1606
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/g;->f:Landroid/webkit/WebView;

    .line 1610
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1611
    const-string v1, "adClosed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1614
    :cond_7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1566
    invoke-super {p0}, Lcom/flurry/sdk/i;->onDetachedFromWindow()V

    .line 1567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/g;->F:Z

    .line 1568
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1746
    const/4 v1, 0x3

    const-string v2, "listeners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onkey,keycode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/flurry/sdk/g;->c:Landroid/app/ProgressDialog;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/flurry/sdk/g;->a()V

    .line 1750
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullScreenTakeover(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/flurry/sdk/g;->y:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 532
    return-void
.end method

.method public setVideoState(Lcom/flurry/sdk/am;)V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/flurry/sdk/g;->d:Lcom/flurry/sdk/f;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/f;->setVideoState(Lcom/flurry/sdk/am;)V

    .line 1803
    :cond_0
    return-void
.end method
