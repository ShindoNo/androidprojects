.class public Lcom/flurry/sdk/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/au;

.field private c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/an;->c:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/an;->d:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/flurry/sdk/au;

    invoke-direct {v0}, Lcom/flurry/sdk/au;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
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
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/an;->b(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no valid ad units in cache for current orientation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)Ljava/util/List;

    move-result-object v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/an;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/an;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x3

    sget-object v3, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no valid ad units in cache for other orientation for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    move-object v1, v2

    .line 165
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    if-eqz v0, :cond_7

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 168
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p3, :cond_7

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 170
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/flurry/sdk/fb;->a(J)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 171
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found combinable ad unit for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_4
    :try_start_1
    sget-object v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    goto/16 :goto_0

    .line 173
    :cond_5
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/flurry/sdk/fb;->a(J)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 175
    :cond_6
    iget-object v4, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v4, p1, v1, v0}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    .line 176
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed invalid or expired ad unit for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 182
    :cond_7
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    new-instance v11, Lcom/flurry/sdk/ds;

    invoke-direct {v11}, Lcom/flurry/sdk/ds;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-object v10, v0

    .line 37
    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    new-instance v1, Lcom/flurry/sdk/x;

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->h()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->l()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->i()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->j()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->k()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/x;-><init>(Ljava/lang/String;JJIII)V

    .line 39
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/x;)V

    .line 42
    :cond_1
    invoke-virtual {v10}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v11, v1, v10}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 48
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Lcom/flurry/sdk/ds;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v11, v1}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 51
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/an;->c:I

    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/an;->d:Ljava/util/Map;

    iget v1, p0, Lcom/flurry/sdk/an;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/List;)Z
    .locals 2
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
    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdSpaceLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/an;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 96
    :goto_0
    monitor-exit p0

    return v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/an;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid ad units in cache for current orientation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    :goto_0
    monitor-exit p0

    return-object v0

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/an;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 114
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 116
    iget-object v4, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v4, p1, v2, v0}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    .line 117
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed invalid ad unit -- adspace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/flurry/sdk/fb;->a(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 124
    iget-object v4, p0, Lcom/flurry/sdk/an;->b:Lcom/flurry/sdk/au;

    invoke-virtual {v4, p1, v2, v0}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    .line 125
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed expired ad unit -- adspace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/an;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found valid ad units for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 133
    goto/16 :goto_0

    .line 136
    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/an;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid ad units for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method
