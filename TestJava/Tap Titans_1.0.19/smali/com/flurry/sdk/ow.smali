.class public Lcom/flurry/sdk/ow;
.super Lcom/flurry/sdk/of;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/of;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/of;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/of;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/ow;->o:Lcom/flurry/sdk/se;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/ow;->o:Lcom/flurry/sdk/se;

    invoke-virtual {p3, v0, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 89
    invoke-virtual {p3, v0, p0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 93
    :goto_0
    invoke-virtual {v0}, Lcom/flurry/sdk/jh;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ow;->j:Lcom/flurry/sdk/os;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/ow;->j:Lcom/flurry/sdk/os;

    .line 97
    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p3, p2, p0}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/of;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/ow;

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UnwrappingBeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/jh;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    move-result-object p1

    .line 38
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ow;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ow;-><init>(Lcom/flurry/sdk/of;Lcom/flurry/sdk/jh;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ow;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-ne v1, p1, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ow;->b(Ljava/lang/Object;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ow;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/ow;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ow;->i:Lcom/flurry/sdk/jh;

    .line 60
    if-nez v0, :cond_4

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/flurry/sdk/ow;->j:Lcom/flurry/sdk/os;

    .line 63
    invoke-virtual {v3, v2}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    invoke-virtual {p0, v3, v2, p3}, Lcom/flurry/sdk/ow;->a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 70
    :cond_4
    invoke-virtual {v0}, Lcom/flurry/sdk/jh;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 71
    iget-object v2, p0, Lcom/flurry/sdk/ow;->g:Lcom/flurry/sdk/ij;

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/flurry/sdk/ow;->n:Lcom/flurry/sdk/jw;

    if-nez v2, :cond_6

    .line 75
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0

    .line 77
    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/ow;->n:Lcom/flurry/sdk/jw;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    goto :goto_0
.end method
