.class public Lcom/flurry/sdk/ng;
.super Lcom/flurry/sdk/ns;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ne;",
            "Lcom/flurry/sdk/ip;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ns;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method private final f(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ng;->e(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/flurry/sdk/ng;->a(Lcom/flurry/sdk/iw;Ljava/lang/String;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    if-eq v0, v2, :cond_0

    .line 91
    sget-object v0, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    const-string v1, "expected closing END_ARRAY after type information and deserialized value"

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ng;->f(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ng;->f(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ng;->f(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ng;->f(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/ng;->b:Lcom/flurry/sdk/ne;

    instance-of v0, v0, Lcom/flurry/sdk/nt;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/ng;->e:Lcom/flurry/sdk/se;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/ng;->b:Lcom/flurry/sdk/ne;

    check-cast v0, Lcom/flurry/sdk/nt;

    invoke-virtual {v0}, Lcom/flurry/sdk/nt;->a()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/ng;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/ng;->b:Lcom/flurry/sdk/ne;

    instance-of v0, v0, Lcom/flurry/sdk/nt;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/ng;->e:Lcom/flurry/sdk/se;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/ng;->b:Lcom/flurry/sdk/ne;

    check-cast v0, Lcom/flurry/sdk/nt;

    invoke-virtual {v0}, Lcom/flurry/sdk/nt;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/ng;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    goto :goto_0
.end method
