.class public Lcom/flurry/sdk/lu;
.super Lcom/flurry/sdk/ll;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ll",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/se;

.field protected final b:Z

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/flurry/sdk/jv;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qf;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ll;-><init>(Ljava/lang/Class;)V

    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/lu;->a:Lcom/flurry/sdk/se;

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/qf;->g()Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lu;->c:Ljava/lang/Class;

    .line 55
    iget-object v0, p0, Lcom/flurry/sdk/lu;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/lu;->b:Z

    .line 56
    iput-object p2, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    .line 57
    iput-object p3, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/jv;

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/flurry/sdk/iv$a;->q:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-object v0

    .line 169
    :cond_0
    sget-object v1, Lcom/flurry/sdk/iv$a;->o:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/lu;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lu;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/lu;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    .line 182
    sget-object v2, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_3

    move-object v1, v0

    .line 192
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/sdk/lu;->b:Z

    if-eqz v0, :cond_5

    .line 193
    new-array v0, v3, [Ljava/lang/Object;

    .line 197
    :goto_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/jv;

    if-nez v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    iget-object v1, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/jv;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/lu;->c:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lu;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lu;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/lu;->d(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->g()Lcom/flurry/sdk/rb;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/flurry/sdk/rb;->a()[Ljava/lang/Object;

    move-result-object v0

    .line 95
    iget-object v6, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/jv;

    move-object v2, v0

    move v0, v1

    .line 97
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v3

    sget-object v4, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    if-eq v3, v4, :cond_3

    .line 101
    sget-object v4, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v3, v4, :cond_1

    .line 102
    const/4 v3, 0x0

    .line 108
    :goto_2
    array-length v4, v2

    if-lt v0, v4, :cond_5

    .line 109
    invoke-virtual {v5, v2}, Lcom/flurry/sdk/rb;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v4, v1

    .line 112
    :goto_3
    add-int/lit8 v0, v4, 0x1

    aput-object v3, v2, v4

    goto :goto_1

    .line 103
    :cond_1
    if-nez v6, :cond_2

    .line 104
    iget-object v3, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    invoke-virtual {v3, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    invoke-virtual {v3, p1, p2, v6}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 117
    :cond_3
    iget-boolean v1, p0, Lcom/flurry/sdk/lu;->b:Z

    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {v5, v2, v0}, Lcom/flurry/sdk/rb;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 122
    :goto_4
    invoke-virtual {p2, v5}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/rb;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/lu;->c:Ljava/lang/Class;

    invoke-virtual {v5, v2, v0, v1}, Lcom/flurry/sdk/rb;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_5
    move v4, v0

    goto :goto_3
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jv;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[Ljava/lang/Byte;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->c()Lcom/flurry/sdk/gx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hg;->a(Lcom/flurry/sdk/gx;)[B

    move-result-object v1

    .line 149
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Byte;

    .line 150
    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 151
    aget-byte v4, v1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v2
.end method

.method public d()Lcom/flurry/sdk/jd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Lcom/flurry/sdk/jd;

    return-object v0
.end method
