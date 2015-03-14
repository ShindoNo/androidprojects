.class Lcom/flurry/sdk/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/t;

.field private final b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/t$b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/flurry/sdk/t$a;->b:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    iput-object v0, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    .line 107
    invoke-virtual {p0}, Lcom/flurry/sdk/t$a;->a()V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/t$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/t$a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/flurry/sdk/t$a;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/t$a;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/t$a;->b(Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/t$a;Lcom/flurry/sdk/t$b;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$b;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/t$a;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/t$a;->a(Ljava/util/List;I)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/t$b;)V
    .locals 4

    .prologue
    .line 130
    monitor-enter p0

    if-nez p1, :cond_0

    .line 131
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    .line 134
    :cond_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/flurry/sdk/t$a;->d:Ljava/util/List;

    .line 118
    sget-object v0, Lcom/flurry/sdk/t$b;->d:Lcom/flurry/sdk/t$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$b;)V

    .line 119
    invoke-direct {p0}, Lcom/flurry/sdk/t$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 5

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$b;->d:Lcom/flurry/sdk/t$b;

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 367
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 372
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v4, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v4}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/flurry/sdk/ck;->a(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ci;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 378
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/t$a;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 381
    invoke-virtual {p0}, Lcom/flurry/sdk/t$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 12

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$b;->b:Lcom/flurry/sdk/t$b;

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$b;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/ez;->i()I

    move-result v0

    .line 185
    invoke-static {v0}, Lcom/flurry/sdk/ez;->c(I)Landroid/util/Pair;

    move-result-object v1

    .line 186
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 187
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 189
    invoke-static {}, Lcom/flurry/sdk/ez;->j()Landroid/util/Pair;

    move-result-object v2

    .line 191
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    if-eqz p2, :cond_a

    .line 196
    sget-object v2, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p2, v2}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p2, v2}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 199
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->a(I)I

    move-result v0

    .line 201
    :cond_2
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-lez v2, :cond_a

    .line 203
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ez;->a(I)I

    move-result v1

    move v2, v0

    move v3, v1

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->E()Ljava/util/List;

    move-result-object v6

    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->F()Ljava/util/List;

    move-result-object v7

    .line 212
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    const-string v0, "FLURRY_VIEWER"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->V()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x0

    .line 221
    if-eqz p4, :cond_9

    .line 222
    invoke-virtual/range {p4 .. p4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->s()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 223
    invoke-virtual/range {p4 .. p4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->t()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 229
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v10}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v10}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/FlurryAdModule;->X()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v6

    iget-object v9, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v9}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/android/impl/ads/FlurryAdModule;->n()Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v6

    iget-object v9, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v9}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/android/impl/ads/FlurryAdModule;->Y()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v6

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v6

    iget-object v9, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v9}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/flurry/android/impl/ads/FlurryAdModule;->h()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v6

    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->d(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->c(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->b(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/ez;->d()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(F)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->d(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->e(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->f(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->g(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->T()Lcom/flurry/sdk/es$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/es$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/dn;->a()Lcom/flurry/sdk/dn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/dn;->k()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->h(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v3}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->i(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->e(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->b(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->d(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->d(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v2}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->e(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;

    move-result-object v3

    .line 261
    if-eqz p3, :cond_8

    .line 262
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a(Ljava/lang/Boolean;)V

    .line 267
    :goto_4
    if-eqz p2, :cond_4

    .line 268
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;->b()Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/android/FlurryAdSize;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;)V

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->s()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a(Ljava/util/Map;)V

    .line 275
    :cond_5
    if-eqz v1, :cond_6

    .line 276
    invoke-virtual {v3, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->b(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :cond_6
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/t$b;->c:Lcom/flurry/sdk/t$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$b;)V

    .line 288
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got ad request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->d(Lcom/flurry/sdk/t;)Lcom/flurry/sdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v1}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->w()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;

    const-class v5, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;

    new-instance v6, Lcom/flurry/sdk/t$a$2;

    invoke-direct {v6, p0}, Lcom/flurry/sdk/t$a$2;-><init>(Lcom/flurry/sdk/t$a;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/w;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/flurry/sdk/gt;Ljava/lang/Class;Ljava/lang/Class;Lcom/flurry/sdk/w$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 264
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const/4 v1, 0x5

    :try_start_5
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad request failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/flurry/sdk/t$a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_9
    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_a
    move v2, v0

    move v3, v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/flurry/sdk/t$a;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/flurry/sdk/t$a;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ej;->a()Lcom/flurry/sdk/ej;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ej;->a(Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$b;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/t$a;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 7

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    iget-object v1, p0, Lcom/flurry/sdk/t$a;->c:Lcom/flurry/sdk/t$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/t$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestAds: request pending"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is no network connectivity (requestAds will fail)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->j()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is no API key (requestAds will fail)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->W()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->d()V

    .line 163
    sget-object v0, Lcom/flurry/sdk/t$b;->b:Lcom/flurry/sdk/t$b;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$b;)V

    .line 164
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v6

    new-instance v0, Lcom/flurry/sdk/t$a$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/t$a$1;-><init>(Lcom/flurry/sdk/t$a;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
