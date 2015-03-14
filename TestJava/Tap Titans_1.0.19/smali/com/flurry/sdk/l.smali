.class public final Lcom/flurry/sdk/l;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/l$1;,
        Lcom/flurry/sdk/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/view/ViewGroup;

.field private e:J

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/flurry/sdk/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/l$a;-><init>(Lcom/flurry/sdk/l;Lcom/flurry/sdk/l$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/l;->f:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcom/flurry/sdk/l;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 31
    iput-object p3, p0, Lcom/flurry/sdk/l;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/flurry/sdk/l;->d:Landroid/view/ViewGroup;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/l;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/sdk/l;->g()V

    return-void
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 96
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getAdSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/l;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget-object v1, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad fullscreen panel is opened: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getAdSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/l;->getCurrentBannerView()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 113
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating banner for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getAdSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/l;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/l;->d:Landroid/view/ViewGroup;

    sget-object v4, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V

    .line 115
    return-void
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/flurry/sdk/l;->f()V

    .line 121
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/l;->f:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getRotationRateInMilliseconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/do;->b(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentBannerView()Lcom/flurry/sdk/i;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    move-object v0, v1

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/l;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    :try_start_0
    check-cast v0, Lcom/flurry/sdk/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->c()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/l;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/l;->e:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->c()V

    .line 50
    iput-wide p1, p0, Lcom/flurry/sdk/l;->e:J

    .line 51
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getRotationRateInMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->c()V

    .line 64
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule banner rotation for adSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getAdSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with fixed rate in milliseconds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getRotationRateInMilliseconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/l;->f:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/flurry/sdk/l;->getRotationRateInMilliseconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/do;->b(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/l;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/flurry/sdk/l;->a()V

    .line 77
    invoke-direct {p0}, Lcom/flurry/sdk/l;->getCurrentBannerView()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/flurry/sdk/i;->onDestroy()V

    .line 81
    :cond_0
    return-void
.end method

.method public getAdSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRotationRateInMilliseconds()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/flurry/sdk/l;->e:J

    return-wide v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/l;->d:Landroid/view/ViewGroup;

    return-object v0
.end method
