.class Lcom/flurry/sdk/u$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ei$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field final synthetic c:Lcom/flurry/sdk/u$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    iput-object p2, p0, Lcom/flurry/sdk/u$a$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/u$a$4;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 961
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/u$a$4;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 964
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v0

    .line 965
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerender: HTTP status code is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/u$a$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v1, p0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    monitor-enter v1

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    invoke-static {v0, p2}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$a;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$4$1;-><init>(Lcom/flurry/sdk/u$a$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 992
    :goto_0
    return-void

    .line 971
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 985
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$4$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$4$2;-><init>(Lcom/flurry/sdk/u$a$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
