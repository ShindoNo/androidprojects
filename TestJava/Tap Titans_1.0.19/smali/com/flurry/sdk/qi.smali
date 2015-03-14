.class public final Lcom/flurry/sdk/qi;
.super Lcom/flurry/sdk/qh;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/se;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/qh;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/qi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/se;",
            ")",
            "Lcom/flurry/sdk/qi;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/flurry/sdk/qi;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/flurry/sdk/qh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->g(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/flurry/sdk/qh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->h(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 35
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/se;->f(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/qi;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/sdk/qi;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic c(Ljava/lang/Object;)Lcom/flurry/sdk/qh;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->i(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/se;->h(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/qi;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/sdk/qi;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->i(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/lang/Object;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->h(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/lang/Object;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qi;->g(Ljava/lang/Object;)Lcom/flurry/sdk/qi;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/flurry/sdk/qi;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    iget-object v3, p0, Lcom/flurry/sdk/qi;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lcom/flurry/sdk/qi;
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/se;->f(Ljava/lang/Object;)Lcom/flurry/sdk/se;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/qi;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/sdk/qi;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Lcom/flurry/sdk/qi;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/flurry/sdk/qi;

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    iget-object v3, p0, Lcom/flurry/sdk/qi;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/sdk/qi;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/qi;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/qi;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
