.class public abstract Lcom/flurry/sdk/lq;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lq$f;,
        Lcom/flurry/sdk/lq$a;,
        Lcom/flurry/sdk/lq$c;,
        Lcom/flurry/sdk/lq$d;,
        Lcom/flurry/sdk/lq$e;,
        Lcom/flurry/sdk/lq$b;,
        Lcom/flurry/sdk/lq$g;,
        Lcom/flurry/sdk/lq$h;,
        Lcom/flurry/sdk/lq$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/lz",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method

.method public static d()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/lq",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Lcom/flurry/sdk/lq$i;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$i;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/flurry/sdk/lq$h;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$h;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/flurry/sdk/lq$g;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/flurry/sdk/lq$b;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/flurry/sdk/lq$e;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/flurry/sdk/lq$d;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/flurry/sdk/lq$c;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/flurry/sdk/lq$f;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/flurry/sdk/lq$a;

    invoke-direct {v1}, Lcom/flurry/sdk/lq$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lcom/flurry/sdk/lq;->a(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/lq;->q:Ljava/lang/Class;

    const-string v1, "not a valid textual representation"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hj;->g:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_4

    .line 72
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->z()Ljava/lang/Object;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/lq;->q:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/flurry/sdk/lq;->a(Ljava/lang/Object;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/lq;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Object;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/iw;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to convert embedded Object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lq;->q:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method

.method protected abstract a(Ljava/lang/String;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iw;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method
