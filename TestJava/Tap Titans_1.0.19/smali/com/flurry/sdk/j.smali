.class public final Lcom/flurry/sdk/j;
.super Lcom/flurry/sdk/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/j$1;,
        Lcom/flurry/sdk/j$e;,
        Lcom/flurry/sdk/j$b;,
        Lcom/flurry/sdk/j$a;,
        Lcom/flurry/sdk/j$d;,
        Lcom/flurry/sdk/j$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/sdk/j$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/flurry/sdk/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/flurry/sdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/flurry/sdk/j;->f()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/j;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ah;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V

    .line 36
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 147
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 162
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 156
    const-string v3, "t"

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/flurry/sdk/l;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 194
    :cond_1
    :goto_0
    return-object v0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    .line 174
    if-nez v0, :cond_3

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_3
    invoke-static {p1}, Lcom/flurry/sdk/j;->b(Landroid/view/ViewGroup;)Lcom/flurry/sdk/j$c;

    move-result-object v2

    .line 179
    if-nez v2, :cond_4

    .line 180
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/j$c;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x6

    sget-object v2, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to render banner ad for holder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for adSpaceName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/sdk/l;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/sdk/l;->d()V

    .line 123
    invoke-virtual {v1}, Lcom/flurry/sdk/l;->removeAllViews()V

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    if-eqz v0, :cond_2

    .line 127
    iget-object v2, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->initLayout()V

    .line 134
    invoke-direct {p0, p2, v1}, Lcom/flurry/sdk/j;->a(Landroid/view/ViewGroup;Lcom/flurry/sdk/l;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "banner ad holder layout params = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " {width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "} for banner ad with adSpaceName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    invoke-direct {p0, p2}, Lcom/flurry/sdk/j;->a(Landroid/view/ViewGroup;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/view/ViewGroup;)Lcom/flurry/sdk/j$c;
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/flurry/sdk/j;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/j$c;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/sdk/j$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    const-class v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/flurry/sdk/j$d;

    invoke-direct {v2}, Lcom/flurry/sdk/j$d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-class v1, Landroid/widget/AbsoluteLayout;

    new-instance v2, Lcom/flurry/sdk/j$a;

    invoke-direct {v2}, Lcom/flurry/sdk/j$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-class v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/sdk/j$b;

    invoke-direct {v2}, Lcom/flurry/sdk/j$b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-class v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/flurry/sdk/j$e;

    invoke-direct {v2}, Lcom/flurry/sdk/j$e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 40
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

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

    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    sget-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to render banner ad for adspace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v7

    .line 48
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v4

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/j;->d()Lcom/flurry/sdk/e;

    move-result-object v5

    .line 51
    if-nez v4, :cond_2

    .line 52
    sget-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to render banner ad, adUnit is null for adspace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    :cond_3
    sget-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to render banner ad, no adFrames for adspace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 63
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/flurry/sdk/cc;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    .line 70
    invoke-virtual {v7}, Lcom/flurry/android/impl/ads/FlurryAdModule;->q()Lcom/flurry/android/ICustomAdNetworkHandler;

    move-result-object v3

    .line 71
    invoke-virtual {v7}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/sdk/k;

    move-result-object v8

    .line 72
    if-ne v1, v9, :cond_7

    if-eqz v3, :cond_7

    .line 73
    invoke-interface {v3, p1, v0, v2}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/i;->setPlatformModule(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/i;->setAdLog(Lcom/flurry/sdk/e;)V

    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/i;->setAdFrameIndex(I)V

    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/i;->setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 84
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    if-nez v0, :cond_8

    .line 85
    sget-object v0, Lcom/flurry/sdk/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create view for ad network: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v0, "errorCode"

    sget-object v3, Lcom/flurry/sdk/b;->p:Lcom/flurry/sdk/b;

    invoke-virtual {v3}, Lcom/flurry/sdk/b;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-ne v1, v9, :cond_6

    .line 96
    const-string v0, "binding_3rd_party"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_6
    new-instance v0, Lcom/flurry/sdk/q;

    const-string v1, "renderFailed"

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    invoke-virtual {v7}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    goto/16 :goto_0

    .line 81
    :cond_7
    invoke-interface {v8, p1, v7, v5, v4}, Lcom/flurry/sdk/k;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/sdk/i;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/i;

    goto :goto_1

    .line 102
    :cond_8
    invoke-direct {p0, p1, p2, v7}, Lcom/flurry/sdk/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    goto/16 :goto_0
.end method
