.class Lcom/flurry/sdk/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/w;->a(Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/Class;Lcom/flurry/sdk/w$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ei$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/flurry/sdk/w$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/flurry/sdk/w;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/w;Ljava/lang/Class;Lcom/flurry/sdk/w$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/w$1;->d:Lcom/flurry/sdk/w;

    iput-object p2, p0, Lcom/flurry/sdk/w$1;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/flurry/sdk/w$1;->b:Lcom/flurry/sdk/w$a;

    iput-object p4, p0, Lcom/flurry/sdk/w$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/w$1;->a(Lcom/flurry/sdk/ei;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei",
            "<[B[B>;[B)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x6

    .line 45
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v2

    .line 47
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 49
    const-string v1, "FM-Checksum"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/flurry/sdk/w$1;->d:Lcom/flurry/sdk/w;

    invoke-virtual {v3, p2}, Lcom/flurry/sdk/w;->a([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x4

    invoke-static {}, Lcom/flurry/sdk/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Request successful, decoding"

    invoke-static {v1, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/w$1;->a:Ljava/lang/Class;

    invoke-static {p2, v1}, Lcom/flurry/sdk/v;->a([BLjava/lang/Class;)Lcom/flurry/sdk/gt;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/w$1;->b:Lcom/flurry/sdk/w$a;

    invoke-interface {v1, v2, v0}, Lcom/flurry/sdk/w$a;->a(ILcom/flurry/sdk/gt;)V

    .line 71
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-static {}, Lcom/flurry/sdk/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error decoding response"

    invoke-static {v5, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Response was received, but checksum failed."

    invoke-static {v5, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/w$1;->b:Lcom/flurry/sdk/w$a;

    invoke-interface {v1, v2, v0}, Lcom/flurry/sdk/w$a;->a(ILcom/flurry/sdk/gt;)V

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/w;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/w$1;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
