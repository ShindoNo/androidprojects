.class public Lcom/applovin/impl/sdk/bv;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/applovin/impl/sdk/bv;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/bv;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/bv;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bv;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bv;->b:Ljava/lang/Object;

    return-void
.end method

.method static a()Lcom/applovin/impl/sdk/bv;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bv;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bx;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/bv;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/bx;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/bx;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/bx;-><init>(Lcom/applovin/impl/sdk/bv;Ljava/lang/String;JLcom/applovin/impl/sdk/bw;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bv;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/bv;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
