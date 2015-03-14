.class final Lme/kiip/internal/c/e$a;
.super Ljava/net/CacheRequest;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/c/e;

.field private final b:Lme/kiip/internal/d/c$a;

.field private c:Ljava/io/OutputStream;

.field private d:Z

.field private e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/e;Lme/kiip/internal/d/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iput-object p1, p0, Lme/kiip/internal/c/e$a;->a:Lme/kiip/internal/c/e;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 410
    iput-object p2, p0, Lme/kiip/internal/c/e$a;->b:Lme/kiip/internal/d/c$a;

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lme/kiip/internal/d/c$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$a;->c:Ljava/io/OutputStream;

    .line 412
    new-instance v0, Lme/kiip/internal/c/e$a$1;

    iget-object v1, p0, Lme/kiip/internal/c/e$a;->c:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lme/kiip/internal/c/e$a$1;-><init>(Lme/kiip/internal/c/e$a;Ljava/io/OutputStream;Lme/kiip/internal/c/e;Lme/kiip/internal/d/c$a;)V

    iput-object v0, p0, Lme/kiip/internal/c/e$a;->e:Ljava/io/OutputStream;

    .line 431
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/e$a;)Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lme/kiip/internal/c/e$a;->d:Z

    return v0
.end method

.method static synthetic a(Lme/kiip/internal/c/e$a;Z)Z
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lme/kiip/internal/c/e$a;->d:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lme/kiip/internal/c/e$a;->a:Lme/kiip/internal/c/e;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-boolean v0, p0, Lme/kiip/internal/c/e$a;->d:Z

    if-eqz v0, :cond_0

    .line 436
    monitor-exit v1

    .line 446
    :goto_0
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/c/e$a;->d:Z

    .line 439
    iget-object v0, p0, Lme/kiip/internal/c/e$a;->a:Lme/kiip/internal/c/e;

    invoke-static {v0}, Lme/kiip/internal/c/e;->c(Lme/kiip/internal/c/e;)I

    .line 440
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    iget-object v0, p0, Lme/kiip/internal/c/e$a;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    .line 443
    :try_start_1
    iget-object v0, p0, Lme/kiip/internal/c/e$a;->b:Lme/kiip/internal/d/c$a;

    invoke-virtual {v0}, Lme/kiip/internal/d/c$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lme/kiip/internal/c/e$a;->e:Ljava/io/OutputStream;

    return-object v0
.end method
