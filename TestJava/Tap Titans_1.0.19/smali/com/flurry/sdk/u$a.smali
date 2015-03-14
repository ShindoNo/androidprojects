.class Lcom/flurry/sdk/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ap$b;
.implements Lcom/flurry/sdk/ey$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u;

.field private final b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/u$b;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/android/FlurryAdSize;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field private j:Lcom/flurry/sdk/ah;

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/u;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-object p1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/flurry/sdk/u$a;->q:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Lcom/flurry/sdk/ci;)V
    .locals 3

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/flurry/sdk/ci;->e()Ljava/lang/String;

    move-result-object v0

    .line 682
    new-instance v1, Lcom/flurry/sdk/ei;

    invoke-direct {v1}, Lcom/flurry/sdk/ei;-><init>()V

    .line 683
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 684
    new-instance v2, Lcom/flurry/sdk/ev;

    invoke-direct {v2}, Lcom/flurry/sdk/ev;-><init>()V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/eu;)V

    .line 685
    new-instance v2, Lcom/flurry/sdk/u$a$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/flurry/sdk/u$a$2;-><init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Lcom/flurry/sdk/ci;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 720
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v5

    .line 1054
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1055
    const-string v1, "prepared"

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/u$a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    .locals 8

    .prologue
    .line 1070
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V

    .line 1072
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v5

    .line 1074
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1076
    const-string v0, "preRender"

    const-string v1, "true"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v0, "errorCode"

    if-nez p2, :cond_0

    sget-object p2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/b;

    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v1, "renderFailed"

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/u$a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    monitor-exit p0

    return-void

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 957
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-render: HTTP get for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 958
    new-instance v0, Lcom/flurry/sdk/ei;

    invoke-direct {v0}, Lcom/flurry/sdk/ei;-><init>()V

    .line 959
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)V

    .line 960
    new-instance v1, Lcom/flurry/sdk/ev;

    invoke-direct {v1}, Lcom/flurry/sdk/ev;-><init>()V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/eu;)V

    .line 961
    new-instance v1, Lcom/flurry/sdk/u$a$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/u$a$4;-><init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei$a;)V

    .line 994
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    monitor-exit p0

    return-void

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/b;)V
    .locals 2

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 823
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u$a;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/u$a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/u$a;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/u$b;)V
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    if-nez p1, :cond_0

    .line 140
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    .line 143
    :cond_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->a(Lcom/flurry/sdk/ey$a;)V

    .line 149
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$b;)V

    .line 150
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done adding listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 151
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->b(Lcom/flurry/sdk/ey$a;)Z

    .line 154
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/sdk/ap$b;)Z

    .line 155
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done removing listeners for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
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
    .line 1156
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v7

    new-instance v0, Lcom/flurry/sdk/u$a$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/u$a$11;-><init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V

    invoke-virtual {v7, v0}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    monitor-exit p0

    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/u$a;->g:Z

    if-eqz v0, :cond_0

    .line 1145
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/u$a$10;-><init>(Lcom/flurry/sdk/u$a;Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    :cond_0
    monitor-exit p0

    return-void

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;)Lcom/flurry/sdk/e;

    move-result-object v5

    .line 1062
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1064
    const-string v1, "unfilled"

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/u$a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/flurry/sdk/b;)V
    .locals 5

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V

    .line 1085
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1086
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onRenderFailed, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    if-eqz v0, :cond_0

    .line 1088
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/u$a$6;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/u$a$6;-><init>(Lcom/flurry/sdk/u$a;Lcom/flurry/android/FlurryAdListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    :cond_0
    monitor-exit p0

    return-void

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->j()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->k()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->l()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->q()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->o()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/u$a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/u$a;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_0
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->p()V

    return-void
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/u$a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/u$a;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_0
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->t()V

    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/u$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 467
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/u$a;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/u$a;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 469
    sget-object v0, Lcom/flurry/sdk/b;->m:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/u$a;->n:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/u$a;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->m()V

    .line 476
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/flurry/sdk/u$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private declared-synchronized k()V
    .locals 4

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/u$a;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/u$a;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 483
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v0}, Lcom/flurry/sdk/ah;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/b;->o:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    .line 521
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 677
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 528
    if-nez v0, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V

    goto :goto_0

    .line 539
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v2

    .line 541
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 543
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 545
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 547
    :cond_4
    sget-object v1, Lcom/flurry/sdk/b;->f:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    goto :goto_0

    .line 552
    :cond_5
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 553
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 556
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a(Ljava/lang/Boolean;)V

    .line 557
    sget-object v0, Lcom/flurry/sdk/u$b;->c:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 558
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->g()V

    goto :goto_0

    .line 562
    :cond_7
    iget-object v4, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v4}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v4

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v4

    .line 563
    if-eqz v4, :cond_6

    .line 564
    invoke-virtual {v4}, Lcom/flurry/sdk/ci;->c()Z

    move-result v5

    if-nez v5, :cond_6

    .line 566
    invoke-virtual {v4}, Lcom/flurry/sdk/ci;->d()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 586
    :cond_8
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/flurry/sdk/u$a;->o:J

    .line 589
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 593
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 594
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->p()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 595
    const/4 v5, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pre-caching required for ad, AdUnitCachedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skip time limit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v5, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 599
    cmp-long v5, v3, v9

    if-lez v5, :cond_9

    iget-wide v5, p0, Lcom/flurry/sdk/u$a;->n:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_9

    .line 600
    const/4 v5, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting skip timer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/flurry/sdk/u$a;->n:J

    .line 606
    :cond_9
    sget-object v5, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 608
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pre-caching completed, ad may proceed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 664
    sget-object v0, Lcom/flurry/sdk/u$b;->f:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 665
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$19;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$19;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 572
    :cond_b
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 573
    cmp-long v0, v2, v9

    if-lez v0, :cond_c

    iget-wide v5, p0, Lcom/flurry/sdk/u$a;->o:J

    cmp-long v0, v5, v9

    if-nez v0, :cond_c

    .line 575
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting VAST resolve timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/flurry/sdk/u$a;->o:J

    .line 580
    :cond_c
    invoke-direct {p0, v1, v4}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Lcom/flurry/sdk/ci;)V

    goto/16 :goto_0

    .line 610
    :cond_d
    sget-object v5, Lcom/flurry/sdk/ap$a;->b:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 611
    cmp-long v0, v3, v9

    if-nez v0, :cond_e

    .line 613
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->m()V

    goto/16 :goto_1

    .line 616
    :cond_e
    cmp-long v0, v3, v9

    if-lez v0, :cond_3

    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/flurry/sdk/u$a;->n:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_f

    .line 619
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Skip timer expired"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->m()V

    goto/16 :goto_1

    .line 624
    :cond_f
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Waiting for skip timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :cond_10
    cmp-long v1, v3, v9

    if-nez v1, :cond_11

    .line 632
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->m()V

    goto/16 :goto_1

    .line 637
    :cond_11
    iget v1, p0, Lcom/flurry/sdk/u$a;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/sdk/u$a;->k:I

    if-le v1, v11, :cond_12

    .line 639
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Too many precaching attempts, precaching failed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/flurry/sdk/b;->h:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/b;)V

    goto/16 :goto_0

    .line 643
    :cond_12
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I

    move-result v0

    .line 644
    if-lez v0, :cond_13

    .line 645
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " asset(s), attempt #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/flurry/sdk/u$a;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_13
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No assets to cache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 656
    :cond_14
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pre-caching not required for ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 672
    :cond_15
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->O()Lcom/flurry/sdk/e;

    .line 673
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V

    .line 675
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/flurry/sdk/u$a;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->r()V

    return-void
.end method

.method static synthetic m(Lcom/flurry/sdk/u$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 5

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 729
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 734
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching required for incomplete ad unit, skipping ad group -- adspace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 744
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v1, "precachingAdGroupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/u$a;->k:I

    .line 748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->n:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized n()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 754
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->c:Lcom/flurry/sdk/u$b;

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 758
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 768
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->f()Ljava/util/List;

    move-result-object v0

    .line 769
    const-string v4, "unfilled"

    .line 770
    const-string v5, "nextAdUnit"

    .line 773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;

    .line 774
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->b()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 775
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 777
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->c()Ljava/util/List;

    move-result-object v0

    .line 779
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 780
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 783
    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 785
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 790
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    move v2, v0

    .line 794
    goto :goto_1

    .line 800
    :cond_4
    if-ne v2, v3, :cond_5

    .line 802
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 804
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    sget-object v1, Lcom/flurry/sdk/b;->n:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 810
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 811
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private declared-synchronized o()V
    .locals 6

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->f:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 868
    :goto_0
    monitor-exit p0

    return-void

    .line 838
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparing ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 841
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 843
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 847
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 854
    :goto_1
    if-nez v1, :cond_2

    .line 855
    sget-object v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/b;

    invoke-direct {p0, v2, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 850
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0, v3, v5}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    goto :goto_1

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)Lcom/flurry/sdk/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    .line 861
    sget-object v0, Lcom/flurry/sdk/u$b;->g:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 862
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$3;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized p()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 872
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->g:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 954
    :goto_0
    monitor-exit p0

    return-void

    .line 877
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    if-nez v0, :cond_1

    .line 878
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 882
    :cond_1
    const/4 v0, 0x3

    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pre-rendering ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v0}, Lcom/flurry/sdk/ah;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v1

    .line 885
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v2

    .line 886
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V

    goto :goto_0

    .line 892
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 893
    iget-object v4, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v4}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_4

    .line 895
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    :cond_5
    sget-object v0, Lcom/flurry/sdk/b;->g:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    goto :goto_0

    .line 904
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    .line 905
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 906
    const/4 v3, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Precaching required for ad, copying assets"

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/sdk/ap$a;

    move-result-object v0

    .line 910
    sget-object v3, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 911
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v3, "precachingAdAssetsAvailable"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 914
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 915
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not copy required ad assets"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v2, "precachingAdAssetCopyFailed"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 917
    sget-object v0, Lcom/flurry/sdk/b;->i:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    goto/16 :goto_0

    .line 921
    :cond_7
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad assets incomplete"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v2, "precachingAdAssetsIncomplete"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 923
    sget-object v0, Lcom/flurry/sdk/b;->j:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    goto/16 :goto_0

    .line 926
    :cond_8
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 927
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Precaching optional for ad, copying assets"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    .line 935
    :cond_9
    invoke-direct {p0, v1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 937
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 938
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 939
    if-ne v2, v6, :cond_b

    .line 940
    const/4 v2, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Binding is HTML_URL, pre-render required"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 943
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    .line 944
    const/4 v4, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting pre-render timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/u$a;->p:J

    .line 948
    :cond_a
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 951
    :cond_b
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->t()V

    .line 952
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/u$a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized q()V
    .locals 4

    .prologue
    .line 999
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->i:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    :goto_0
    monitor-exit p0

    return-void

    .line 1003
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v0}, Lcom/flurry/sdk/ah;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v0

    .line 1006
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v1

    .line 1007
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precaching optional for ad, copying assets before display"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Lcom/flurry/sdk/ap;->a()Lcom/flurry/sdk/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ap;->d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    .line 1014
    :cond_1
    sget-object v0, Lcom/flurry/sdk/u$b;->j:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 1015
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$5;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()V
    .locals 5

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->j:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    :goto_0
    monitor-exit p0

    return-void

    .line 1030
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1031
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1034
    if-nez v0, :cond_1

    .line 1035
    sget-object v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/sdk/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1039
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v2}, Lcom/flurry/sdk/ah;->c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    .line 1041
    iget-object v3, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v3}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v3, v0, v2, v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/ah;)V

    .line 1042
    iget-object v2, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/ah;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1044
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->v()V

    .line 1046
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized s()V
    .locals 5

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V

    .line 1100
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1101
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing onRendered, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/u$a$7;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/u$a$7;-><init>(Lcom/flurry/sdk/u$a;Lcom/flurry/android/FlurryAdListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :cond_0
    monitor-exit p0

    return-void

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()V
    .locals 5

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->h:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 1115
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1116
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing spaceDidReceiveAd, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    if-eqz v0, :cond_0

    .line 1118
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/u$a$8;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/u$a$8;-><init>(Lcom/flurry/sdk/u$a;Lcom/flurry/android/FlurryAdListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    :cond_0
    monitor-exit p0

    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized u()V
    .locals 5

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V

    .line 1130
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1131
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing spaceDidFailToReceiveAd, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1132
    if-eqz v0, :cond_0

    .line 1133
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/u$a$9;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/u$a$9;-><init>(Lcom/flurry/sdk/u$a;Lcom/flurry/android/FlurryAdListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    :cond_0
    monitor-exit p0

    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 6

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Lcom/flurry/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :cond_0
    monitor-exit p0

    return-void

    .line 1175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 121
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/u$a;->g:Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/u$a;->k:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->l:J

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->m:J

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->n:J

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->o:J

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->p:J

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V
    .locals 6

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is no network connectivity (ad will not fetch)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    .line 234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    .line 235
    iput-object p3, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    .line 236
    iput-boolean p4, p0, Lcom/flurry/sdk/u$a;->g:Z

    .line 238
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    .line 242
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lcom/flurry/sdk/u$b;->b:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 245
    const-wide/16 v0, 0x3a98

    .line 246
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 247
    const/4 v2, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting ad request timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->l:J

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Lcom/flurry/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    goto/16 :goto_0

    .line 254
    :cond_4
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 255
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$16;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/ey;)V
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->b:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$1;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$12;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_2
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$13;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$13;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_3
    sget-object v0, Lcom/flurry/sdk/u$b;->g:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$14;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$14;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V
    .locals 4

    .prologue
    .line 196
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected asset status change for asset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ar;->g:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$15;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/view/ViewGroup;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 275
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/u$b;->h:Lcom/flurry/sdk/u$b;

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 280
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/es;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    const/4 v1, 0x5

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There is no network connectivity (ad will not display)"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/flurry/sdk/b;->c:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/sdk/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    if-nez v1, :cond_3

    .line 288
    sget-object v1, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/sdk/b;)V

    goto :goto_0

    .line 293
    :cond_3
    if-nez p1, :cond_4

    .line 294
    sget-object v1, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/b;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/u$a;->b(Lcom/flurry/sdk/b;)V

    goto :goto_0

    .line 298
    :cond_4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/u$a;->d:Ljava/lang/ref/WeakReference;

    .line 299
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    .line 304
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ac()Lcom/flurry/android/FlurryAdListener;

    move-result-object v2

    .line 305
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Firing shouldDisplayAd, listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    if-eqz v2, :cond_5

    .line 309
    :try_start_3
    iget-object v3, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    instance-of v1, v1, Lcom/flurry/sdk/j;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 315
    :goto_2
    if-eqz v1, :cond_0

    .line 319
    if-eqz p2, :cond_5

    :try_start_4
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->j:Lcom/flurry/sdk/ah;

    instance-of v0, v0, Lcom/flurry/sdk/j;

    if-eqz v0, :cond_5

    .line 320
    const/high16 v0, 0x16000000

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 324
    :cond_5
    sget-object v0, Lcom/flurry/sdk/u$b;->i:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 325
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$17;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$17;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 309
    :cond_6
    :try_start_5
    sget-object v1, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v1

    .line 312
    const/4 v2, 0x6

    :try_start_6
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdListener.shouldDisplayAd"

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v0

    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-le v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 440
    :goto_0
    monitor-exit p0

    return v0

    .line 368
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 369
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->s()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 371
    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    :cond_3
    move v0, v2

    .line 377
    goto :goto_0

    .line 381
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    const/4 v1, 0x0

    .line 386
    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t()Ljava/util/Map;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_5

    .line 391
    const-string v4, "GROUP_ID"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    const-string v1, "GROUP_ID"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_5
    if-nez v1, :cond_7

    .line 404
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v2

    .line 406
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 408
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    invoke-virtual {v0, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a(Ljava/util/List;)V

    .line 410
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 414
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->a(Ljava/util/Map;)V

    .line 416
    :cond_6
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 428
    :goto_1
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 429
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$18;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$18;-><init>(Lcom/flurry/sdk/u$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    move v0, v3

    .line 436
    goto/16 :goto_0

    .line 422
    :cond_7
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move v0, v2

    .line 440
    goto/16 :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 267
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->b(Lcom/flurry/sdk/u;)Lcom/flurry/sdk/an;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/an;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 268
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->c(Lcom/flurry/sdk/u;)Lcom/flurry/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/m;->a(Ljava/lang/String;)Lcom/flurry/sdk/l;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->d()V

    .line 339
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->removeAllViews()V

    .line 341
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->c(Lcom/flurry/sdk/u;)Lcom/flurry/sdk/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/l;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->g(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/flurry/sdk/u$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->h:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->b:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 446
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    .line 448
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_0
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 9

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/u$b;->c:Lcom/flurry/sdk/u$b;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->c:Lcom/flurry/sdk/u$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 517
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 496
    iget-object v3, p0, Lcom/flurry/sdk/u$a;->f:Lcom/flurry/android/FlurryAdSize;

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    .line 499
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An auction is required, but there is no ad unit!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/flurry/sdk/u$a;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 503
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$b;)V

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 508
    invoke-virtual {v5}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->o()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 509
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    .line 510
    const/4 v4, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting CSRTB auction timeout for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/flurry/sdk/u$a;->m:J

    .line 514
    :cond_2
    iput-object v5, p0, Lcom/flurry/sdk/u$a;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 515
    iget-object v0, p0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->e()Lcom/flurry/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/t;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
