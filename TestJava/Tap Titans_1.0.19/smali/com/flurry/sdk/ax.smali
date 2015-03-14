.class public Lcom/flurry/sdk/ax;
.super Lcom/flurry/sdk/as;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/aw;

.field protected final b:Ljava/lang/String;

.field protected c:Lcom/flurry/sdk/aw$c;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/aw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/flurry/sdk/as;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/aw;

    .line 20
    iput-object p2, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected f()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    invoke-virtual {v0}, Lcom/flurry/sdk/aw$c;->a()Ljava/io/OutputStream;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/aw;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cache key specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/aw;

    iget-object v1, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aw;->b(Ljava/lang/String;)Lcom/flurry/sdk/aw$c;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    if-nez v0, :cond_3

    .line 39
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open writer for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    invoke-virtual {v0}, Lcom/flurry/sdk/aw$c;->a()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ax;->c:Lcom/flurry/sdk/aw$c;

    .line 49
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/aw;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/ax;->a:Lcom/flurry/sdk/aw;

    iget-object v1, p0, Lcom/flurry/sdk/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aw;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method
