.class public Lcom/flurry/sdk/si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/si$b;,
        Lcom/flurry/sdk/si$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/sdk/hp;

.field protected b:Lcom/flurry/sdk/hp;

.field protected c:Z

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/flurry/sdk/si$a;

    invoke-direct {v0}, Lcom/flurry/sdk/si$a;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    .line 32
    new-instance v0, Lcom/flurry/sdk/si$b;

    invoke-direct {v0}, Lcom/flurry/sdk/si$b;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/si;->c:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/si;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 82
    return-void
.end method

.method public a(Lcom/flurry/sdk/hc;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    invoke-interface {v0}, Lcom/flurry/sdk/hp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lcom/flurry/sdk/si;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/si;->d:I

    .line 145
    :cond_0
    if-lez p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 150
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 151
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 88
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    invoke-interface {v0}, Lcom/flurry/sdk/hp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/flurry/sdk/si;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/si;->d:I

    .line 92
    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/hc;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    invoke-interface {v0}, Lcom/flurry/sdk/hp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget v0, p0, Lcom/flurry/sdk/si;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/si;->d:I

    .line 194
    :cond_0
    if-lez p2, :cond_1

    .line 195
    iget-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 199
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 200
    return-void

    .line 197
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    goto :goto_0
.end method

.method public c(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 135
    iget-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 136
    return-void
.end method

.method public d(Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/flurry/sdk/si;->c:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->c(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    goto :goto_0
.end method

.method public e(Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    invoke-interface {v0}, Lcom/flurry/sdk/hp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/flurry/sdk/si;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/si;->d:I

    .line 160
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 161
    return-void
.end method

.method public f(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(C)V

    .line 184
    iget-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 185
    return-void
.end method

.method public g(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/si;->a:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 168
    return-void
.end method

.method public h(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/si;->b:Lcom/flurry/sdk/hp;

    iget v1, p0, Lcom/flurry/sdk/si;->d:I

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/hp;->a(Lcom/flurry/sdk/hc;I)V

    .line 99
    return-void
.end method
