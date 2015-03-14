.class public Lcom/flurry/android/impl/ads/FlurryAdModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ae;
.implements Lcom/flurry/sdk/du;
.implements Lcom/flurry/sdk/eq;


# static fields
.field private static L:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/lang/String;


# instance fields
.field private A:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field private B:Lcom/flurry/sdk/e;

.field private C:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field private final D:Lcom/flurry/sdk/k;

.field private final E:Lcom/flurry/sdk/ak;

.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/android/FlurryAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/CharSequence;

.field private final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Lcom/flurry/sdk/ac;

.field private O:Lcom/flurry/sdk/s;

.field private P:Lcom/flurry/sdk/r;

.field private Q:Lcom/flurry/sdk/u;

.field private R:Lcom/flurry/sdk/t;

.field volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:J

.field f:Lcom/flurry/sdk/y;

.field g:Lcom/flurry/sdk/ap;

.field public h:Lcom/flurry/android/ICustomAdNetworkHandler;

.field i:I

.field volatile j:Ljava/util/Map;
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

.field volatile k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ci;",
            ">;"
        }
    .end annotation
.end field

.field volatile l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/am;",
            ">;"
        }
    .end annotation
.end field

.field volatile m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile n:Z

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;

.field private t:Ljava/io/File;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private volatile x:Ljava/lang/String;

.field private volatile y:Ljava/lang/String;

.field private z:Lcom/flurry/sdk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    .line 85
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    .line 86
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    .line 92
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->F:Ljava/lang/ref/WeakReference;

    .line 164
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    .line 165
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    .line 166
    new-instance v0, Lcom/flurry/sdk/u;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/u;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    .line 167
    new-instance v0, Lcom/flurry/sdk/t;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/t;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/sdk/t;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->m:Ljava/util/List;

    .line 174
    iput-boolean v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Z

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string v1, "playVideo"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "open"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "expand"

    const-string v2, "doExpand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "collapse"

    const-string v2, "doCollapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "notifyUser"

    aput-object v2, v1, v4

    const-string v2, "nextFrame"

    aput-object v2, v1, v5

    const-string v2, "closeAd"

    aput-object v2, v1, v6

    const-string v2, "expandAd"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "collapseAd"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "verifyURL"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/Set;

    .line 190
    new-instance v0, Lcom/flurry/sdk/r;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/r;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    .line 191
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->p:Ljava/util/List;

    .line 197
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->u:Ljava/lang/String;

    .line 198
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->v:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Ljava/util/Map;

    .line 202
    new-instance v0, Lcom/flurry/sdk/o;

    invoke-direct {v0}, Lcom/flurry/sdk/o;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Lcom/flurry/sdk/k;

    .line 203
    new-instance v0, Lcom/flurry/sdk/p;

    invoke-direct {v0}, Lcom/flurry/sdk/p;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->E:Lcom/flurry/sdk/ak;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    .line 209
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/e;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    .line 905
    invoke-static {p1}, Lcom/flurry/sdk/cd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 906
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "List of adLogs is empty"

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 933
    :goto_0
    return-object v0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "ApiKey is null."

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->E()Ljava/util/List;

    move-result-object v0

    .line 920
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->b(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->a(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/dn;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->b(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;

    move-result-object v0

    .line 931
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->af()V

    return-void
.end method

.method private declared-synchronized ad()V
    .locals 6

    .prologue
    .line 898
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ag()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 900
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->O:Lcom/flurry/sdk/s;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/sdk/dn;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/flurry/sdk/s;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ae()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 969
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Saving AdLog data."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    const/4 v0, 0x0

    .line 972
    const/4 v1, 0x0

    .line 974
    :try_start_1
    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    invoke-static {v3}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 975
    if-nez v3, :cond_0

    .line 986
    :try_start_2
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 987
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 989
    :goto_0
    monitor-exit p0

    return-void

    .line 979
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 980
    :try_start_4
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 982
    :try_start_5
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ag()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/flurry/sdk/d;->a(Ljava/util/List;Ljava/io/DataOutput;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 986
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 987
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 983
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 984
    :goto_1
    :try_start_7
    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v4, "Error saving AdLog data."

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 986
    :try_start_8
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 987
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 986
    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 987
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 986
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    .line 983
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private declared-synchronized af()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 993
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Loading AdLog data."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    const/4 v4, 0x0

    .line 1001
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1004
    :try_start_3
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-static {v1}, Lcom/flurry/sdk/d;->a(Ljava/io/DataInput;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1005
    const/4 v0, 0x1

    .line 1009
    :try_start_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1010
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1013
    :goto_0
    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "Deleting AdLog file."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1020
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1006
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1007
    :goto_2
    :try_start_5
    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v5, "Error loading AdLog data."

    invoke-static {v3, v5, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1009
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1010
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v4

    .line 1011
    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1010
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 993
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1018
    :cond_1
    const/4 v0, 0x3

    :try_start_7
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "AdLogs cache file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1009
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_3

    .line 1006
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private declared-synchronized ag()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1802
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1803
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1805
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/e;

    .line 1807
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1808
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1812
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method static synthetic b(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/t;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/sdk/t;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/u;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ae()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ad()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 2

    .prologue
    .line 252
    const-class v1, Lcom/flurry/android/impl/ads/FlurryAdModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/FlurryAdModule;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;-><init>()V

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 255
    :cond_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/FlurryAdModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 508
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 509
    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    .line 867
    return-void
.end method

.method public B()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->z()Ljava/util/Map;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->N:Lcom/flurry/sdk/ac;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->N:Lcom/flurry/sdk/ac;

    invoke-virtual {v1}, Lcom/flurry/sdk/ac;->a()Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    const-string v2, "appCloudUserId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    :cond_0
    return-object v0
.end method

.method public declared-synchronized C()V
    .locals 1

    .prologue
    .line 885
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$5;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$5;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    monitor-exit p0

    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/postAdLog.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 940
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->l()Ljava/util/Map;

    move-result-object v0

    .line 941
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 942
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;->a(Ljava/nio/ByteBuffer;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dr;

    iget v0, v0, Lcom/flurry/sdk/dr;->d:I

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;

    move-result-object v0

    .line 944
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :cond_0
    return-object v2
.end method

.method public F()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/x;

    .line 953
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->b(J)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->b(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->c(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->d(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;

    move-result-object v0

    .line 962
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 965
    :cond_0
    return-object v1
.end method

.method public declared-synchronized G()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1023
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Saving FreqCap data."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    const/4 v0, 0x0

    .line 1028
    const/4 v1, 0x0

    .line 1030
    :try_start_1
    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    invoke-static {v3}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 1031
    if-nez v3, :cond_0

    .line 1049
    :try_start_2
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1050
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1052
    :goto_0
    monitor-exit p0

    return-void

    .line 1035
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1036
    :try_start_4
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1038
    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->c()Ljava/util/List;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/x;

    .line 1041
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1042
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(Ljava/io/DataOutput;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 1046
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1047
    :goto_2
    :try_start_6
    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v4, "Error saving FreqCap data."

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1049
    :try_start_7
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1050
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1045
    :cond_1
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1049
    :try_start_9
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1050
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1049
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1050
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1049
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 1046
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method declared-synchronized H()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1055
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Loading FreqCap data."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    const/4 v4, 0x0

    .line 1063
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1067
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    .line 1068
    if-nez v0, :cond_1

    .line 1075
    const/4 v0, 0x1

    .line 1079
    :try_start_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1080
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1083
    :goto_1
    if-nez v0, :cond_0

    .line 1084
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "Deleting FreqCap file."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1090
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 1072
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    new-instance v2, Lcom/flurry/sdk/x;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/x;-><init>(Ljava/io/DataInput;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/x;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1077
    :goto_3
    :try_start_6
    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v5, "Error loading FreqCap data."

    invoke-static {v3, v5, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1079
    :try_start_7
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1080
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v4

    .line 1081
    goto :goto_1

    .line 1079
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1080
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1055
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1088
    :cond_2
    const/4 v0, 0x3

    :try_start_8
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "FreqCap file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 1079
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 1076
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public declared-synchronized I()V
    .locals 1

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    monitor-exit p0

    return-void

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized J()V
    .locals 1

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    monitor-exit p0

    return-void

    .line 1135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized K()V
    .locals 1

    .prologue
    .line 1139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    monitor-exit p0

    return-void

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized L()V
    .locals 1

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    monitor-exit p0

    return-void

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized M()V
    .locals 4

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    :goto_0
    monitor-exit p0

    return-void

    .line 1151
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "Saving CachedAsset data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    const/4 v2, 0x0

    .line 1155
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 1156
    if-nez v0, :cond_1

    .line 1165
    :try_start_3
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1160
    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1161
    :try_start_5
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1165
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1163
    :goto_1
    :try_start_7
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Error saving CachedAsset data."

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1165
    :try_start_8
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1162
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method declared-synchronized N()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1174
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Loading CachedAsset data."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v3, 0x0

    .line 1177
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    const/4 v4, 0x0

    .line 1181
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1182
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1183
    const/4 v0, 0x1

    .line 1187
    :try_start_4
    invoke-static {v4}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1188
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1191
    :goto_1
    if-nez v0, :cond_0

    .line 1192
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "Deleting CachedAsset file."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1184
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1185
    :goto_2
    :try_start_5
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v5, "Error loading CachedAsset data."

    invoke-static {v2, v5, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1187
    :try_start_6
    invoke-static {v4}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1188
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 1189
    goto :goto_1

    .line 1187
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v4}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 1188
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1196
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "CachedAsset file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1187
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1184
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public O()Lcom/flurry/sdk/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1216
    invoke-virtual {p0, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v0

    .line 1217
    const-string v1, "unfilled"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/e;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/sdk/e;

    move-result-object v0

    return-object v0
.end method

.method public P()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->z:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public Q()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->A:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    return-object v0
.end method

.method public R()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public S()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    return-object v0
.end method

.method public T()Lcom/flurry/sdk/es$a;
    .locals 1

    .prologue
    .line 1732
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->e()Lcom/flurry/sdk/es$a;

    move-result-object v0

    return-object v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public V()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public W()Lcom/flurry/sdk/y;
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    return-object v0
.end method

.method public X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1748
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->p:Ljava/util/List;

    return-object v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Z

    return v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->u:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "targetIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)Lcom/flurry/sdk/ah;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 1696
    if-nez p2, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-object v0

    .line 1700
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    .line 1701
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1705
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 1706
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1707
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/e;

    .line 1709
    if-nez v0, :cond_3

    .line 1710
    invoke-virtual {p0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v5

    .line 1713
    :goto_1
    new-instance v0, Lcom/flurry/sdk/q;

    const-string v1, "filled"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 1716
    const-string v0, "takeover"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1717
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "prepareAd: first frame of AdUnit is a takeover"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1718
    new-instance v0, Lcom/flurry/sdk/ai;

    invoke-direct {v0, p0, p2, v5}, Lcom/flurry/sdk/ai;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V

    goto :goto_0

    .line 1720
    :cond_2
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "prepareAd: first frame of AdUnit is a banner"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1721
    new-instance v0, Lcom/flurry/sdk/j;

    invoke-direct {v0, p0, p2, v5}, Lcom/flurry/sdk/j;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V

    goto :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_1
.end method

.method declared-synchronized a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/sdk/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/c;"
        }
    .end annotation

    .prologue
    .line 1221
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/c;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->o()J

    move-result-wide v3

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/c;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ci;
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    monitor-exit v1

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/e;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/sdk/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/e;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/e;"
        }
    .end annotation

    .prologue
    .line 1202
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1204
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1205
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAdState added adLog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/sdk/c;

    move-result-object v0

    .line 1210
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/c;)V

    .line 1211
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    monitor-exit p0

    return-object p1

    .line 1211
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1202
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/flurry/sdk/e;
    .locals 6

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/e;

    .line 559
    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/flurry/sdk/e;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->h()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->o()J

    move-result-wide v4

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/e;-><init>(JLjava/lang/String;J)V

    .line 561
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x7fff

    if-ge v1, v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :cond_0
    monitor-exit p0

    return-object v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/sdk/l;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/u;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Lcom/flurry/sdk/q;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
            "Lcom/flurry/sdk/q;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->f()Ljava/util/List;

    move-result-object v0

    .line 1261
    iget-object v3, p2, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    .line 1264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;

    .line 1265
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->c()Ljava/util/List;

    move-result-object v0

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1270
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1274
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 1276
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1277
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1279
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1280
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1281
    iget-object v7, p2, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1284
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/fb;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 1288
    :cond_2
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-direct {v1, v0, v6, p2}, Lcom/flurry/sdk/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/q;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1293
    :cond_3
    return-object v2
.end method

.method public declared-synchronized a(JJ)V
    .locals 4

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    :goto_0
    monitor-exit p0

    return-void

    .line 1113
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    .line 1115
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v3, "Precaching: initing from FlurryAdModule"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/flurry/sdk/ap;->a(JJ)V

    .line 1119
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ap;->c()V

    .line 1120
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/io/File;

    .line 1122
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$8;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$8;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 431
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 433
    const/4 v1, 0x0

    .line 434
    const/4 v4, -0x1

    .line 435
    instance-of v5, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v5, :cond_5

    move-object v1, v0

    .line 436
    check-cast v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 437
    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v5

    .line 438
    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getAdUnityView()Lcom/flurry/sdk/g;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_4

    .line 440
    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v1

    move-object v4, v5

    .line 443
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_0

    if-lez v1, :cond_2

    .line 448
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v1, :cond_1

    .line 450
    check-cast p1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 451
    invoke-virtual {p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getResult()Lcom/flurry/sdk/n$e;

    move-result-object v1

    sget-object v4, Lcom/flurry/sdk/n$e;->b:Lcom/flurry/sdk/n$e;

    if-eq v1, v4, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    .line 454
    :cond_1
    if-eqz v2, :cond_2

    .line 455
    check-cast v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getAdUnityView()Lcom/flurry/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->a()V

    .line 459
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 451
    goto :goto_1

    :cond_4
    move v1, v4

    move-object v4, v5

    goto :goto_0

    :cond_5
    move v6, v4

    move-object v4, v1

    move v1, v6

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 462
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p0, p1, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 475
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Firing onApplicationExit, listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/impl/ads/FlurryAdModule$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule$4;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/flurry/sdk/du$a;)V
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/u;->a(Landroid/app/Activity;Lcom/flurry/sdk/du$a;)V

    .line 1685
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/ah;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1769
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    .line 1770
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 1771
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1772
    const-string v1, "takeover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->K()V

    .line 1777
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/e;

    .line 1779
    new-instance v0, Lcom/flurry/sdk/q;

    const-string v1, "requested"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Lcom/flurry/sdk/ah;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {p0, v0, v1, v6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 1781
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 392
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    .line 393
    const/4 v0, 0x1

    iget v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    if-ne v0, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 395
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onAdOpened, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule$2;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 405
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/android/FlurryAdListener;)V
    .locals 1

    .prologue
    .line 634
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->F:Ljava/lang/ref/WeakReference;

    .line 635
    return-void
.end method

.method public a(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->h:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 639
    return-void
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->A:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 1234
    return-void
.end method

.method public a(Lcom/flurry/sdk/dj;)V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->C()V

    .line 389
    return-void
.end method

.method public a(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/flurry/sdk/ac;

    invoke-direct {v0}, Lcom/flurry/sdk/ac;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->N:Lcom/flurry/sdk/ac;

    .line 299
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->O:Lcom/flurry/sdk/s;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/flurry/sdk/s;

    invoke-direct {v0}, Lcom/flurry/sdk/s;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->O:Lcom/flurry/sdk/s;

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->c:J

    .line 304
    invoke-virtual {p1}, Lcom/flurry/sdk/dj;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->d:J

    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    .line 307
    invoke-static {p2}, Lcom/flurry/sdk/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public a(Lcom/flurry/sdk/e;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->z:Lcom/flurry/sdk/e;

    .line 1226
    return-void
.end method

.method public a(Lcom/flurry/sdk/fc;)V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x3

    .line 1298
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent:event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 1302
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Lcom/flurry/sdk/q;)Ljava/util/List;

    move-result-object v9

    .line 1305
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1307
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v4, p1}, Lcom/flurry/sdk/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/q;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1314
    :cond_1
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "sendUrlStatusResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "sendUrlStatusResult event"

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v0, Lcom/flurry/sdk/a;

    const-string v1, "logEvent"

    iget-object v2, p1, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lcom/flurry/sdk/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/q;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_2
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1324
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1325
    if-eqz v0, :cond_5

    .line 1326
    sget-object v1, Lcom/flurry/sdk/co;->q:Lcom/flurry/sdk/co;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/co;)Ljava/util/List;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_5

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1329
    if-eqz v0, :cond_3

    .line 1330
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1333
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1334
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_1

    .line 1344
    :cond_5
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1346
    iget-object v0, p1, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v1, "binding_3rd_party"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1349
    if-eqz v0, :cond_32

    move v1, v3

    .line 1353
    :goto_2
    iget-object v0, p1, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    move v1, v3

    .line 1358
    :cond_6
    iget-object v0, p1, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    const-string v2, "preRender"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    if-eq v1, v3, :cond_a

    .line 1360
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1361
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing renderFailed, listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1362
    if-eqz v0, :cond_7

    .line 1363
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$9;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Lcom/flurry/sdk/q;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 1397
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1398
    if-eqz v0, :cond_c

    .line 1399
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->g()Ljava/util/List;

    move-result-object v0

    .line 1400
    if-eqz v0, :cond_c

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1402
    if-eqz v0, :cond_8

    .line 1403
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1406
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1407
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_4

    .line 1375
    :cond_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 1376
    const-string v2, "nextAdUnit"

    iget-object v0, v0, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v7

    .line 1382
    :goto_5
    if-eqz v0, :cond_7

    .line 1383
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1384
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing spaceDidFailToReceiveAd, listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1385
    if-eqz v0, :cond_7

    .line 1386
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$10;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Lcom/flurry/sdk/q;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1416
    :cond_c
    invoke-virtual {p0, v8}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/app/Activity;)V

    .line 1419
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d(Ljava/lang/String;)V

    .line 1422
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->f(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 1425
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()V

    .line 1428
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$11;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$11;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/q;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 1437
    :cond_d
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1438
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1439
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onAdClicked, listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1440
    if-eqz v0, :cond_e

    .line 1441
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$13;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Lcom/flurry/sdk/q;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 1450
    :cond_e
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/flurry/sdk/ci;

    .line 1451
    if-eqz v6, :cond_11

    .line 1453
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v10

    .line 1454
    sget-object v0, Lcom/flurry/sdk/cp;->b:Lcom/flurry/sdk/cp;

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/cp;)Ljava/lang/String;

    move-result-object v2

    .line 1455
    if-eqz v2, :cond_f

    .line 1456
    invoke-virtual {v10, v3}, Lcom/flurry/sdk/am;->g(Z)V

    .line 1457
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p1, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;)V

    .line 1460
    :cond_f
    invoke-virtual {v10}, Lcom/flurry/sdk/am;->f()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1461
    invoke-virtual {v10, v3}, Lcom/flurry/sdk/am;->e(Z)V

    .line 1464
    sget-object v0, Lcom/flurry/sdk/cp;->c:Lcom/flurry/sdk/cp;

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/cp;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    if-eqz v1, :cond_11

    .line 1466
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClickThrough Tracking URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 1469
    const-string v4, "logEvent"

    iget-object v5, v0, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1470
    iget-object v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v4, v0, v1}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_6

    .line 1481
    :cond_11
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1483
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1484
    if-eqz v0, :cond_14

    .line 1485
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->h()Ljava/util/List;

    move-result-object v0

    .line 1486
    if-eqz v0, :cond_14

    .line 1487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1488
    if-eqz v0, :cond_12

    .line 1489
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Impression Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1492
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1493
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_7

    .line 1501
    :cond_14
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 1502
    invoke-virtual {v0, v3}, Lcom/flurry/sdk/am;->a(Z)V

    .line 1505
    :cond_15
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoFirstQuartile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1507
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1508
    if-eqz v0, :cond_18

    .line 1509
    sget-object v1, Lcom/flurry/sdk/co;->e:Lcom/flurry/sdk/co;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/co;)Ljava/util/List;

    move-result-object v0

    .line 1510
    if-eqz v0, :cond_18

    .line 1511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1512
    if-eqz v0, :cond_16

    .line 1513
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First Quartile Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1516
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1517
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_8

    .line 1525
    :cond_18
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 1526
    invoke-virtual {v0, v3}, Lcom/flurry/sdk/am;->b(Z)V

    .line 1529
    :cond_19
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoMidpoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1531
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1532
    if-eqz v0, :cond_1c

    .line 1533
    sget-object v1, Lcom/flurry/sdk/co;->d:Lcom/flurry/sdk/co;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/co;)Ljava/util/List;

    move-result-object v0

    .line 1534
    if-eqz v0, :cond_1c

    .line 1535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1536
    if-eqz v0, :cond_1a

    .line 1537
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Midpoint Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1539
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1540
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1541
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_9

    .line 1550
    :cond_1c
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 1551
    invoke-virtual {v0, v3}, Lcom/flurry/sdk/am;->c(Z)V

    .line 1554
    :cond_1d
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoThirdQuartile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1556
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1557
    if-eqz v0, :cond_20

    .line 1558
    sget-object v1, Lcom/flurry/sdk/co;->f:Lcom/flurry/sdk/co;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/co;)Ljava/util/List;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_20

    .line 1560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1561
    if-eqz v0, :cond_1e

    .line 1562
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Third Quartile Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1565
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1566
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_a

    .line 1574
    :cond_20
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)Lcom/flurry/sdk/am;

    move-result-object v0

    .line 1575
    invoke-virtual {v0, v3}, Lcom/flurry/sdk/am;->d(Z)V

    .line 1578
    :cond_21
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1579
    iget-object v0, p1, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1580
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "Ad unit is rewardable, onVideoCompleted listener will fire"

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1582
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onVideoCompleted, listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1583
    if-eqz v0, :cond_22

    .line 1584
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$14;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Lcom/flurry/sdk/q;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 1596
    :cond_22
    :goto_b
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    .line 1597
    if-eqz v0, :cond_26

    .line 1598
    sget-object v1, Lcom/flurry/sdk/co;->g:Lcom/flurry/sdk/co;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/co;)Ljava/util/List;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_26

    .line 1600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1601
    if-eqz v0, :cond_23

    .line 1602
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Complete Tracking URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v1, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 1605
    const-string v5, "logEvent"

    iget-object v6, v1, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1606
    iget-object v5, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/a;Ljava/lang/String;)V

    goto :goto_c

    .line 1592
    :cond_25
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "Ad unit is not rewardable, onVideoCompleted listener will not fire"

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1616
    :cond_26
    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "userConfirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1619
    :cond_27
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 1620
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/Set;

    iget-object v0, v0, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1626
    :goto_d
    if-nez v3, :cond_29

    .line 1627
    new-instance v0, Lcom/flurry/sdk/a;

    const-string v1, "closeAd"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/flurry/sdk/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/q;)V

    invoke-interface {v9, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1632
    :cond_29
    if-eqz v3, :cond_2a

    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/flurry/sdk/q;->a:Ljava/lang/String;

    const-string v1, "userConfirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1634
    :cond_2a
    invoke-virtual {p1}, Lcom/flurry/sdk/q;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()V

    .line 1640
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$15;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/q;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 1654
    :cond_2b
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v8

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/sdk/a;

    .line 1655
    iget-object v0, v2, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    const-string v3, "logEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1657
    iget-object v0, v2, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1660
    :goto_f
    iget-object v0, v2, Lcom/flurry/sdk/a;->a:Ljava/lang/String;

    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1661
    iget-object v0, v2, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1663
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1664
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1666
    iget-object v6, v2, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1669
    :cond_2c
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/flurry/sdk/ad;->a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V

    move-object v1, v3

    goto :goto_e

    .line 1673
    :cond_2d
    if-nez v1, :cond_2e

    .line 1674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1675
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v1, Lcom/flurry/sdk/a;

    const-string v2, "logEvent"

    invoke-direct {v1, v2, v0, p1}, Lcom/flurry/sdk/a;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/q;)V

    .line 1677
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v1, p0, v0}, Lcom/flurry/sdk/ad;->a(Lcom/flurry/sdk/a;Lcom/flurry/sdk/ae;I)V

    .line 1678
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_2e
    return-void

    :cond_2f
    move-object v3, v1

    goto :goto_f

    :cond_30
    move v3, v7

    goto/16 :goto_d

    :cond_31
    move v0, v3

    goto/16 :goto_5

    :cond_32
    move v1, v7

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 673
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    monitor-exit v1

    .line 675
    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 643
    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Ljava/lang/CharSequence;

    .line 646
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/u;->d(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule$6;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 1100
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule$7;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    monitor-exit p0

    return-void

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Lcom/flurry/sdk/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 652
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 832
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 833
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 834
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 836
    :cond_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v2, "User cookie keys and values may not be null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Z

    .line 770
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->v:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/flurry/android/FlurryAdListener;
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/ci;
    .locals 2

    .prologue
    .line 591
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    monitor-enter v1

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ci;

    monitor-exit v1

    return-object v0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/flurry/sdk/k;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Lcom/flurry/sdk/k;

    return-object v0
.end method

.method b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adSpaceName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 408
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    .line 409
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 411
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onAdClosed, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/impl/ads/FlurryAdModule$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule$3;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 1251
    return-void
.end method

.method public b(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()V

    .line 314
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dz;->c()V

    .line 316
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->d()V

    .line 318
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$17;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$17;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 325
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$18;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$18;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 331
    return-void
.end method

.method public b(Lcom/flurry/sdk/e;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Lcom/flurry/sdk/e;

    .line 1243
    return-void
.end method

.method public b(Lcom/flurry/sdk/fc;)V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 855
    :goto_0
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    .line 856
    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    invoke-virtual {v0}, Lcom/flurry/sdk/u;->b()V

    .line 859
    :cond_1
    return-void

    .line 852
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/flurry/sdk/ak;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->E:Lcom/flurry/sdk/ak;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/flurry/sdk/am;
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/am;

    .line 612
    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/flurry/sdk/am;

    invoke-direct {v0}, Lcom/flurry/sdk/am;-><init>()V

    .line 614
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_0
    monitor-exit v1

    .line 618
    return-object v0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dz;->d()V

    .line 341
    invoke-static {}, Lcom/flurry/sdk/dv;->a()Lcom/flurry/sdk/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$19;

    invoke-direct {v0, p0, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule$19;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/fc;)V

    .line 352
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    invoke-virtual {v0}, Lcom/flurry/sdk/u;->a()V

    .line 354
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->b()V

    .line 356
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$20;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$20;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 364
    :cond_1
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$21;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$21;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 371
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$22;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$22;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 378
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$23;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$23;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 384
    return-void
.end method

.method public d()Lcom/flurry/sdk/u;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Lcom/flurry/sdk/u;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 628
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lcom/flurry/sdk/t;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/sdk/t;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public declared-synchronized f()V
    .locals 2

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->c()Lcom/flurry/sdk/dj;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flurry Session wasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/flurry/sdk/dv;->a()Lcom/flurry/sdk/dv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/du;)V

    .line 272
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/io/File;

    .line 275
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Ljava/io/File;

    .line 277
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/sdk/r;

    invoke-virtual {v0}, Lcom/flurry/sdk/r;->a()V

    .line 279
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$1;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 286
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$12;

    invoke-direct {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule$12;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    .line 766
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()V

    .line 1788
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule$16;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/fc;)V

    .line 1794
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->c:J

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cx;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_0
    return-object v1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dn;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 537
    .line 539
    invoke-static {}, Lcom/flurry/sdk/dz;->a()Lcom/flurry/sdk/dz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/dz;->f()Landroid/location/Location;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v1, v0

    .line 542
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    .line 545
    :goto_0
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;->a(F)Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;->b(F)Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized o()J
    .locals 4

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->d:J

    sub-long/2addr v0, v2

    .line 551
    iget-wide v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    .line 553
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 551
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 657
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "========== PRINT COUNTERS =========="

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    monitor-enter v2

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 661
    const/4 v4, 0x3

    sget-object v5, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/lang/String;

    const-string v1, "========== END PRINT COUNTERS =========="

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public q()Lcom/flurry/android/ICustomAdNetworkHandler;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->h:Lcom/flurry/android/ICustomAdNetworkHandler;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 704
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    if-nez v1, :cond_0

    .line 708
    const-string v1, ""

    .line 709
    :cond_0
    if-nez v0, :cond_1

    .line 710
    const-string v0, ""

    .line 711
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 713
    :cond_2
    return-object v2
.end method

.method t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurrycachedasset."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v10/getAds.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    :goto_0
    return-object v0

    .line 779
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    const-string v0, "https://ads.flurry.com/v10/getAds.do"

    goto :goto_0

    .line 782
    :cond_1
    const-string v0, "http://ads.flurry.com/v10/getAds.do"

    goto :goto_0
.end method

.method x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    .line 821
    :goto_0
    return-object v0

    .line 816
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    const-string v0, "https://adlog.flurry.com"

    goto :goto_0

    .line 819
    :cond_1
    const-string v0, "http://adlog.flurry.com"

    goto :goto_0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 844
    return-void
.end method

.method public z()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Ljava/util/Map;

    return-object v0
.end method
