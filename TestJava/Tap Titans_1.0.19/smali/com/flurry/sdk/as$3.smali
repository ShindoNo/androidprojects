.class Lcom/flurry/sdk/as$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/as;->k()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/as;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/as;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/as$3;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-virtual {v0}, Lcom/flurry/sdk/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v0

    .line 197
    invoke-static {}, Lcom/flurry/sdk/as;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloader: HTTP HEAD status code is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v4}, Lcom/flurry/sdk/as;->f(Lcom/flurry/sdk/as;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    iget-object v3, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v3, p1}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as;Lcom/flurry/sdk/ek;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as;J)J

    .line 204
    const-string v0, "Accept-Ranges"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v3}, Lcom/flurry/sdk/as;->d(Lcom/flurry/sdk/as;)J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    const-string v4, "bytes"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/flurry/sdk/as;->b(Lcom/flurry/sdk/as;Z)Z

    .line 207
    iget-object v3, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->d(Lcom/flurry/sdk/as;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->i(Lcom/flurry/sdk/as;)J

    move-result-wide v6

    div-long/2addr v4, v6

    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->d(Lcom/flurry/sdk/as;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->i(Lcom/flurry/sdk/as;)J

    move-result-wide v8

    rem-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as;I)I

    .line 212
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->e(Lcom/flurry/sdk/as;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0}, Lcom/flurry/sdk/as;->d(Lcom/flurry/sdk/as;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v2}, Lcom/flurry/sdk/as;->e(Lcom/flurry/sdk/as;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 213
    invoke-static {}, Lcom/flurry/sdk/as;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader: Size limit exceeded -- limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v2}, Lcom/flurry/sdk/as;->e(Lcom/flurry/sdk/as;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content-length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v2}, Lcom/flurry/sdk/as;->d(Lcom/flurry/sdk/as;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/as$3$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$3$1;-><init>(Lcom/flurry/sdk/as$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 207
    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/as$3;->a:Lcom/flurry/sdk/as;

    invoke-static {v0, v1}, Lcom/flurry/sdk/as;->a(Lcom/flurry/sdk/as;I)I

    goto :goto_2

    .line 224
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/as$3$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$3$2;-><init>(Lcom/flurry/sdk/as$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 233
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/as$3$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/as$3$3;-><init>(Lcom/flurry/sdk/as$3;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
