.class Lcom/flurry/sdk/fe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fe;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fe;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fe;->a(Lcom/flurry/sdk/fe;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    monitor-exit v1

    .line 176
    :goto_0
    return-object v3

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fe;->b(Lcom/flurry/sdk/fe;)V

    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fe;->c(Lcom/flurry/sdk/fe;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    invoke-static {v0}, Lcom/flurry/sdk/fe;->d(Lcom/flurry/sdk/fe;)V

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/fe$1;->a:Lcom/flurry/sdk/fe;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/flurry/sdk/fe;->a(Lcom/flurry/sdk/fe;I)I

    .line 175
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/flurry/sdk/fe$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
