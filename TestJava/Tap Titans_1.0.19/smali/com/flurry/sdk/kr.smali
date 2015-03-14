.class public Lcom/flurry/sdk/kr;
.super Lcom/flurry/sdk/iw;
.source "SourceFile"


# instance fields
.field protected c:Lcom/flurry/sdk/hg;

.field protected final d:Lcom/flurry/sdk/iz;

.field protected final e:Lcom/flurry/sdk/jc;

.field protected f:Lcom/flurry/sdk/qt;

.field protected g:Lcom/flurry/sdk/rb;

.field protected h:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jc;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flurry/sdk/iw;-><init>(Lcom/flurry/sdk/iv;)V

    .line 69
    iput-object p2, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    .line 70
    iput-object p3, p0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/iz;

    .line 71
    iput-object p4, p0, Lcom/flurry/sdk/kr;->e:Lcom/flurry/sdk/jc;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/je;
    .locals 4
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

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kr;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 3
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

    .prologue
    .line 233
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 3
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

    .prologue
    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/kr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/sdk/je;
    .locals 3
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

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/mh;->a(Lcom/flurry/sdk/hg;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/mh;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/kr;->e:Lcom/flurry/sdk/jc;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No \'injectableValues\' configured, can not inject value with id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kr;->e:Lcom/flurry/sdk/jc;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/flurry/sdk/jc;->a(Ljava/lang/Object;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->i()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/flurry/sdk/rb;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/kr;->g:Lcom/flurry/sdk/rb;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/rb;->b()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/kr;->g:Lcom/flurry/sdk/rb;

    invoke-virtual {v1}, Lcom/flurry/sdk/rb;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/kr;->g:Lcom/flurry/sdk/rb;

    .line 134
    :cond_1
    return-void
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/jd;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
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

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->f()Lcom/flurry/sdk/ra;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_2

    .line 193
    iget-object v2, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    .line 194
    iput-object p1, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    move-object v1, v0

    .line 196
    :goto_0
    if-eqz v1, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v1}, Lcom/flurry/sdk/ra;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ix;

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/flurry/sdk/ix;->a(Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jd;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 204
    iput-object v2, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    .line 207
    :goto_1
    return v0

    .line 201
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/flurry/sdk/ra;->a()Lcom/flurry/sdk/ra;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 204
    :cond_1
    iput-object v2, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    throw v0
.end method

.method public b()Lcom/flurry/sdk/iz;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/iz;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/sdk/je;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/je;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    invoke-virtual {v0}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/kr;->a(Ljava/lang/Class;Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 3
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

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from String value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;
    .locals 3
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

    .prologue
    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from number value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/hg;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/kr;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]...["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    :cond_0
    return-object p1
.end method

.method public d()Lcom/flurry/sdk/hg;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    return-object v0
.end method

.method public final g()Lcom/flurry/sdk/rb;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/kr;->g:Lcom/flurry/sdk/rb;

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/flurry/sdk/rb;

    invoke-direct {v0}, Lcom/flurry/sdk/rb;-><init>()V

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/sdk/kr;->g:Lcom/flurry/sdk/rb;

    goto :goto_0
.end method

.method public final h()Lcom/flurry/sdk/qt;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/flurry/sdk/kr;->f:Lcom/flurry/sdk/qt;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/flurry/sdk/qt;

    invoke-direct {v0}, Lcom/flurry/sdk/qt;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kr;->f:Lcom/flurry/sdk/qt;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kr;->f:Lcom/flurry/sdk/qt;

    return-object v0
.end method

.method protected i()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/sdk/kr;->h:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->n()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/sdk/kr;->h:Ljava/text/DateFormat;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kr;->h:Ljava/text/DateFormat;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Lcom/flurry/sdk/hg;

    invoke-virtual {v0}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kr;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v0, "[N/A]"

    goto :goto_0
.end method
