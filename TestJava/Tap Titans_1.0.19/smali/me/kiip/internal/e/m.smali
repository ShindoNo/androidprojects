.class public final Lme/kiip/internal/e/m;
.super Ljava/lang/Object;
.source "KiipSDK"


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Lme/kiip/internal/e/l;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lme/kiip/internal/e/m;->d:I

    .line 32
    iput v0, p0, Lme/kiip/internal/e/m;->e:I

    .line 33
    iput v0, p0, Lme/kiip/internal/e/m;->f:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lme/kiip/internal/e/m;->i:J

    .line 63
    iput-object p1, p0, Lme/kiip/internal/e/m;->a:Ljava/net/URI;

    .line 64
    iput-object p2, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    .line 66
    new-instance v1, Lme/kiip/internal/e/m$1;

    invoke-direct {v1, p0}, Lme/kiip/internal/e/m$1;-><init>(Lme/kiip/internal/e/m;)V

    .line 82
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lme/kiip/internal/e/l;->e()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p2, v0}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-static {v3, v1}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;Lme/kiip/internal/e/b$a;)V

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const-string v2, "no-cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iput-boolean v5, p0, Lme/kiip/internal/e/m;->c:Z

    goto :goto_1

    .line 91
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    iput-object v3, p0, Lme/kiip/internal/e/m;->q:Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    iput-object v3, p0, Lme/kiip/internal/e/m;->p:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    iput-boolean v5, p0, Lme/kiip/internal/e/m;->h:Z

    goto :goto_1

    .line 97
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lme/kiip/internal/e/m;->i:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v2

    goto :goto_1

    .line 102
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 103
    iput-object v3, p0, Lme/kiip/internal/e/m;->j:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 105
    iput-object v3, p0, Lme/kiip/internal/e/m;->k:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 107
    iput-object v3, p0, Lme/kiip/internal/e/m;->l:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 109
    iput-object v3, p0, Lme/kiip/internal/e/m;->m:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 111
    iput-object v3, p0, Lme/kiip/internal/e/m;->n:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 113
    iput-object v3, p0, Lme/kiip/internal/e/m;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 114
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iput-object v3, p0, Lme/kiip/internal/e/m;->r:Ljava/lang/String;

    goto/16 :goto_1

    .line 118
    :cond_d
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/e/m;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lme/kiip/internal/e/m;->d:I

    return p1
.end method

.method static synthetic a(Lme/kiip/internal/e/m;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lme/kiip/internal/e/m;->c:Z

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/e/m;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lme/kiip/internal/e/m;->e:I

    return p1
.end method

.method static synthetic b(Lme/kiip/internal/e/m;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lme/kiip/internal/e/m;->g:Z

    return p1
.end method

.method static synthetic c(Lme/kiip/internal/e/m;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lme/kiip/internal/e/m;->f:I

    return p1
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .prologue
    .line 209
    iget-wide v0, p0, Lme/kiip/internal/e/m;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-wide p1, p0, Lme/kiip/internal/e/m;->i:J

    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lme/kiip/internal/e/m;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lme/kiip/internal/e/m;->k:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lme/kiip/internal/e/m;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-static {p1}, Lme/kiip/internal/e/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-object v0, p0, Lme/kiip/internal/e/m;->p:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    const-string v3, "Cookie"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :cond_1
    iget-object v3, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v1, v0}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 289
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "chunked"

    iget-object v1, p0, Lme/kiip/internal/e/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lme/kiip/internal/e/m;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lme/kiip/internal/e/m;->l:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 125
    const-string v0, "close"

    iget-object v1, p0, Lme/kiip/internal/e/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lme/kiip/internal/e/l;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lme/kiip/internal/e/m;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lme/kiip/internal/e/m;->m:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lme/kiip/internal/e/m;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lme/kiip/internal/e/m;->n:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lme/kiip/internal/e/m;->c:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lme/kiip/internal/e/m;->d:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lme/kiip/internal/e/m;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lme/kiip/internal/e/m;->o:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lme/kiip/internal/e/m;->e:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lme/kiip/internal/e/m;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lme/kiip/internal/e/m;->q:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lme/kiip/internal/e/m;->f:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lme/kiip/internal/e/m;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lme/kiip/internal/e/m;->h:Z

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lme/kiip/internal/e/m;->i:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lme/kiip/internal/e/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lme/kiip/internal/e/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lme/kiip/internal/e/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lme/kiip/internal/e/m;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lme/kiip/internal/e/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lme/kiip/internal/e/m;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lme/kiip/internal/e/m;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->d(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/m;->b:Lme/kiip/internal/e/l;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "chunked"

    iput-object v0, p0, Lme/kiip/internal/e/m;->j:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lme/kiip/internal/e/m;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/m;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
