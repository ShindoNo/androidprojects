.class public Lcom/flurry/sdk/gj;
.super Lcom/flurry/sdk/gh;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;


# instance fields
.field protected c:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gh;-><init>(Lcom/flurry/sdk/gn;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/gj;->a(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/gj;

    .line 48
    return-void
.end method

.method private b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->k:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$h;

    .line 137
    iget v1, v0, Lcom/flurry/sdk/gn$h;->A:I

    if-eq p1, v1, :cond_0

    .line 138
    new-instance v1, Lcom/flurry/sdk/fi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect length for fixed binary: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/flurry/sdk/gn$h;->A:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/gj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->e()V

    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    .line 65
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/gv;)Lcom/flurry/sdk/gv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->i:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gc;->a(Lcom/flurry/sdk/gv;)Lcom/flurry/sdk/gv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->j:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gc;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->k:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$h;

    .line 160
    iget-object v1, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    iget v0, v0, Lcom/flurry/sdk/gn$h;->A:I

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gc;->a(I)V

    .line 161
    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gj;->b(I)V

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gc;->a(I)V

    .line 154
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->c:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->b()V

    .line 72
    return-void
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p3}, Lcom/flurry/sdk/gj;->b(I)V

    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/gc;->b([BII)V

    .line 148
    return-void
.end method

.method public c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->d:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->c()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->e:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->d()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->g:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->f()F

    move-result v0

    return v0
.end method

.method public g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->h:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 101
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->i:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->i:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->i()V

    .line 120
    return-void
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->j:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->j()V

    .line 132
    return-void
.end method

.method public k()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->l:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$h;

    .line 167
    iget-object v1, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v1}, Lcom/flurry/sdk/gc;->k()I

    move-result v1

    .line 168
    if-ltz v1, :cond_0

    iget v2, v0, Lcom/flurry/sdk/gn$h;->A:I

    if-lt v1, v2, :cond_1

    .line 169
    :cond_0
    new-instance v2, Lcom/flurry/sdk/fi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enumeration out of range: max is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/flurry/sdk/gn$h;->A:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but received "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    return v1
.end method

.method public m()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->n:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->m()J

    move-result-wide v0

    .line 180
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v3, Lcom/flurry/sdk/gn;->o:Lcom/flurry/sdk/gn;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 183
    :cond_0
    return-wide v0
.end method

.method public n()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->b()V

    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->n()J

    move-result-wide v0

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v3, Lcom/flurry/sdk/gn;->o:Lcom/flurry/sdk/gn;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 193
    :cond_0
    return-wide v0
.end method

.method public o()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 198
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->n:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->o()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 200
    :goto_1
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->f()V

    move-wide v0, v2

    goto :goto_1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->o()J

    move-result-wide v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->o:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 205
    return-wide v4
.end method

.method public p()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->p:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->p()J

    move-result-wide v0

    .line 212
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v3, Lcom/flurry/sdk/gn;->q:Lcom/flurry/sdk/gn;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 215
    :cond_0
    return-wide v0
.end method

.method public q()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->b()V

    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->q()J

    move-result-wide v0

    .line 222
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v3, Lcom/flurry/sdk/gn;->q:Lcom/flurry/sdk/gn;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 225
    :cond_0
    return-wide v0
.end method

.method public r()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->p:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->r()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 232
    :goto_1
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->f()V

    move-wide v0, v2

    goto :goto_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->r()J

    move-result-wide v0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->q:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 237
    return-wide v4
.end method

.method public s()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    sget-object v1, Lcom/flurry/sdk/gn;->m:Lcom/flurry/sdk/gn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gn;)Lcom/flurry/sdk/gn;

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$a;

    .line 244
    iget-object v1, p0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gc;

    invoke-virtual {v1}, Lcom/flurry/sdk/gc;->s()I

    move-result v1

    .line 245
    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gn$a;->a(I)Lcom/flurry/sdk/gn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gm;->c(Lcom/flurry/sdk/gn;)V

    .line 246
    return v1
.end method
