.class Lcom/flurry/sdk/ao$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ao;->d(Lcom/flurry/sdk/aq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq;

.field final synthetic b:Lcom/flurry/sdk/ao;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    iput-object p2, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/as;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 420
    iget-object v0, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    invoke-static {v0}, Lcom/flurry/sdk/ao;->b(Lcom/flurry/sdk/ao;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    invoke-static {v0}, Lcom/flurry/sdk/ao;->b(Lcom/flurry/sdk/ao;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v2}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v0, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    iget-object v1, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;)V

    .line 426
    invoke-virtual {p1}, Lcom/flurry/sdk/as;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/flurry/sdk/as;->c()J

    move-result-wide v0

    .line 428
    invoke-static {}, Lcom/flurry/sdk/ao;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Download success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v4}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/aq;->a(J)V

    .line 430
    iget-object v0, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    iget-object v1, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    sget-object v2, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    .line 431
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v1, "precachingDownloadSuccess"

    invoke-virtual {v0, v1, v5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    .line 440
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ao$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ao$4$1;-><init>(Lcom/flurry/sdk/ao$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 446
    return-void

    .line 422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 433
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ao;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Download error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v2}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    iget-object v1, p0, Lcom/flurry/sdk/ao$4;->a:Lcom/flurry/sdk/aq;

    sget-object v2, Lcom/flurry/sdk/ar;->g:Lcom/flurry/sdk/ar;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V

    .line 435
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    const-string v1, "precachingDownloadError"

    invoke-virtual {v0, v1, v5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
