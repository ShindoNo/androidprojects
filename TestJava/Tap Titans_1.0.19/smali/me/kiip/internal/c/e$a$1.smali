.class Lme/kiip/internal/c/e$a$1;
.super Ljava/io/FilterOutputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/c/e$a;-><init>(Lme/kiip/internal/c/e;Lme/kiip/internal/d/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/c/e;

.field final synthetic b:Lme/kiip/internal/d/c$a;

.field final synthetic c:Lme/kiip/internal/c/e$a;


# direct methods
.method constructor <init>(Lme/kiip/internal/c/e$a;Ljava/io/OutputStream;Lme/kiip/internal/c/e;Lme/kiip/internal/d/c$a;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lme/kiip/internal/c/e$a$1;->c:Lme/kiip/internal/c/e$a;

    iput-object p3, p0, Lme/kiip/internal/c/e$a$1;->a:Lme/kiip/internal/c/e;

    iput-object p4, p0, Lme/kiip/internal/c/e$a$1;->b:Lme/kiip/internal/d/c$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->c:Lme/kiip/internal/c/e$a;

    iget-object v1, v0, Lme/kiip/internal/c/e$a;->a:Lme/kiip/internal/c/e;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->c:Lme/kiip/internal/c/e$a;

    invoke-static {v0}, Lme/kiip/internal/c/e$a;->a(Lme/kiip/internal/c/e$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    monitor-exit v1

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->c:Lme/kiip/internal/c/e$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lme/kiip/internal/c/e$a;->a(Lme/kiip/internal/c/e$a;Z)Z

    .line 419
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->c:Lme/kiip/internal/c/e$a;

    iget-object v0, v0, Lme/kiip/internal/c/e$a;->a:Lme/kiip/internal/c/e;

    invoke-static {v0}, Lme/kiip/internal/c/e;->b(Lme/kiip/internal/c/e;)I

    .line 420
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 422
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->b:Lme/kiip/internal/d/c$a;

    invoke-virtual {v0}, Lme/kiip/internal/d/c$a;->a()V

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lme/kiip/internal/c/e$a$1;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 429
    return-void
.end method
