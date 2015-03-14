.class public final Lcom/flurry/sdk/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/flurry/sdk/gz;

.field protected final c:Z

.field protected final d:Lcom/flurry/sdk/sf;

.field protected e:[B

.field protected f:[B

.field protected g:[C

.field protected h:[C

.field protected i:[C


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sf;Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    .line 63
    iput-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    .line 70
    iput-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    .line 77
    iput-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    .line 85
    iput-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    .line 95
    iput-object p1, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    .line 96
    iput-object p2, p0, Lcom/flurry/sdk/ib;->a:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lcom/flurry/sdk/ib;->c:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/ib;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/gz;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/ib;->b:Lcom/flurry/sdk/gz;

    .line 103
    return-void
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    if-eq p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$a;->a:Lcom/flurry/sdk/sf$a;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$a;[B)V

    .line 191
    :cond_1
    return-void
.end method

.method public final a([C)V
    .locals 2

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    if-eq p1, v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->a:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;[C)V

    .line 216
    :cond_1
    return-void
.end method

.method public final a(I)[C
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->d:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    return-object v0
.end method

.method public final b()Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/ib;->b:Lcom/flurry/sdk/gz;

    return-object v0
.end method

.method public final b([B)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    if-eq p1, v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$a;->b:Lcom/flurry/sdk/sf$a;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$a;[B)V

    .line 205
    :cond_1
    return-void
.end method

.method public final b([C)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    if-eq p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->b:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;[C)V

    .line 227
    :cond_1
    return-void
.end method

.method public final c([C)V
    .locals 2

    .prologue
    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    if-eq p1, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->i:[C

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->d:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;[C)V

    .line 238
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/flurry/sdk/ib;->c:Z

    return v0
.end method

.method public final d()Lcom/flurry/sdk/sm;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/flurry/sdk/sm;

    iget-object v1, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/sm;-><init>(Lcom/flurry/sdk/sf;)V

    return-object v0
.end method

.method public final e()[B
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$a;->a:Lcom/flurry/sdk/sf$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/ib;->e:[B

    return-object v0
.end method

.method public final f()[B
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$a;->b:Lcom/flurry/sdk/sf$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/ib;->f:[B

    return-object v0
.end method

.method public final g()[C
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->a:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/ib;->g:[C

    return-object v0
.end method

.method public final h()[C
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ib;->d:Lcom/flurry/sdk/sf;

    sget-object v1, Lcom/flurry/sdk/sf$b;->b:Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sf;->a(Lcom/flurry/sdk/sf$b;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/ib;->h:[C

    return-object v0
.end method
