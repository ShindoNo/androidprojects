.class public abstract Lcom/flurry/sdk/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/iv;

.field protected final b:I


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/iv;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    .line 35
    iget v0, p1, Lcom/flurry/sdk/iv;->i:I

    iput v0, p0, Lcom/flurry/sdk/iw;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/iv;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    return-object v0
.end method

.method public abstract a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/je;
.end method

.method public abstract a(Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/je;
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/hj;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/je;
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/iv;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/rb;)V
.end method

.method public abstract a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/jd;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/jd",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/iv$a;)Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/sdk/iw;->b:I

    invoke-virtual {p1}, Lcom/flurry/sdk/iv$a;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/iz;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/flurry/sdk/iw;->d()Lcom/flurry/sdk/hg;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/flurry/sdk/gx;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->g()Lcom/flurry/sdk/gx;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/flurry/sdk/hg;
.end method

.method public final e()Lcom/flurry/sdk/rp;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->h()Lcom/flurry/sdk/rp;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/flurry/sdk/qp;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/iw;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->m()Lcom/flurry/sdk/qp;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/flurry/sdk/rb;
.end method

.method public abstract h()Lcom/flurry/sdk/qt;
.end method
