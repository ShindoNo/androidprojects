.class public abstract Lcom/flurry/sdk/oz;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pt",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/of;


# instance fields
.field protected final b:[Lcom/flurry/sdk/of;

.field protected final c:[Lcom/flurry/sdk/of;

.field protected final d:Lcom/flurry/sdk/oc;

.field protected final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/sdk/of;

    sput-object v0, Lcom/flurry/sdk/oz;->a:[Lcom/flurry/sdk/of;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/oz;)V
    .locals 6

    .prologue
    .line 100
    iget-object v1, p1, Lcom/flurry/sdk/oz;->k:Ljava/lang/Class;

    iget-object v2, p1, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    iget-object v3, p1, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    iget-object v4, p1, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    iget-object v5, p1, Lcom/flurry/sdk/oz;->e:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/oz;-><init>(Ljava/lang/Class;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/se;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/flurry/sdk/pt;-><init>(Lcom/flurry/sdk/se;)V

    .line 76
    iput-object p2, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    .line 77
    iput-object p3, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    .line 78
    iput-object p4, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    .line 79
    iput-object p5, p0, Lcom/flurry/sdk/oz;->e:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/sdk/of;",
            "[",
            "Lcom/flurry/sdk/of;",
            "Lcom/flurry/sdk/oc;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p2, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    .line 90
    iput-object p3, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    .line 91
    iput-object p4, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    .line 92
    iput-object p5, p0, Lcom/flurry/sdk/oz;->e:Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    if-nez v1, :cond_1

    move v2, v0

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    array-length v4, v1

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_6

    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    aget-object v5, v0, v3

    .line 284
    invoke-virtual {v5}, Lcom/flurry/sdk/of;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    array-length v1, v1

    move v2, v1

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v5}, Lcom/flurry/sdk/of;->f()Lcom/flurry/sdk/se;

    move-result-object v0

    .line 294
    if-nez v0, :cond_4

    .line 295
    invoke-virtual {v5}, Lcom/flurry/sdk/of;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jt;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/flurry/sdk/se;->u()Z

    move-result v1

    if-nez v1, :cond_4

    .line 301
    invoke-virtual {v0}, Lcom/flurry/sdk/se;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->h()I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    :cond_3
    invoke-virtual {v5, v0}, Lcom/flurry/sdk/of;->a(Lcom/flurry/sdk/se;)V

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {p1, v0, v5}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Lcom/flurry/sdk/se;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 312
    invoke-virtual {v0}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jw;

    .line 313
    if-eqz v0, :cond_5

    .line 315
    instance-of v6, v1, Lcom/flurry/sdk/pc;

    if-eqz v6, :cond_5

    .line 318
    check-cast v1, Lcom/flurry/sdk/pc;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/pc;->b(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;

    move-result-object v1

    .line 323
    :cond_5
    invoke-virtual {v5, v1}, Lcom/flurry/sdk/of;->a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;

    move-result-object v0

    .line 324
    iget-object v5, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    aput-object v0, v5, v3

    .line 326
    if-ge v3, v2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    aget-object v0, v0, v3

    .line 328
    if-eqz v0, :cond_0

    .line 329
    iget-object v5, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/of;->a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;

    move-result-object v0

    aput-object v0, v5, v3

    goto :goto_2

    .line 335
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    if-eqz v0, :cond_7

    .line 336
    iget-object v0, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/oc;->a(Lcom/flurry/sdk/jt;)V

    .line 338
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/oz;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oz;->c(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 127
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->e(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oz;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method protected b(Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/oe;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/flurry/sdk/oz;->e:Ljava/lang/Object;

    .line 230
    invoke-virtual {p1}, Lcom/flurry/sdk/jt;->b()Lcom/flurry/sdk/ok;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/flurry/sdk/je;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not resolve BeanPropertyFilter with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'; no FilterProvider configured"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ok;->a(Ljava/lang/Object;)Lcom/flurry/sdk/oe;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method protected b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    .line 145
    :goto_0
    const/4 v2, 0x0

    .line 147
    :try_start_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 148
    aget-object v3, v0, v2

    .line 149
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v3, p1, p2, p3}, Lcom/flurry/sdk/of;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    goto :goto_0

    .line 153
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/sdk/oc;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_3
    :goto_2
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    array-length v3, v0

    if-ne v2, v3, :cond_4

    const-string v0, "[anySetter]"

    .line 158
    :goto_3
    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/flurry/sdk/oz;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_4
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 159
    :catch_1
    move-exception v1

    .line 164
    new-instance v1, Lcom/flurry/sdk/je;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    .line 165
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string v0, "[anySetter]"

    .line 166
    :goto_4
    new-instance v2, Lcom/flurry/sdk/je$a;

    invoke-direct {v2, p1, v0}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/je$a;)V

    .line 167
    throw v1

    .line 165
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected c(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/oz;->c:[Lcom/flurry/sdk/of;

    .line 191
    :goto_0
    invoke-virtual {p0, p3}, Lcom/flurry/sdk/oz;->b(Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/oe;

    move-result-object v1

    .line 193
    if-nez v1, :cond_2

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oz;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oz;->b:[Lcom/flurry/sdk/of;

    goto :goto_0

    .line 198
    :cond_2
    const/4 v2, 0x0

    .line 200
    :try_start_0
    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 201
    aget-object v4, v0, v2

    .line 202
    if-eqz v4, :cond_3

    .line 203
    invoke-interface {v1, p1, p2, p3, v4}, Lcom/flurry/sdk/oe;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/of;)V

    .line 200
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/flurry/sdk/oz;->d:Lcom/flurry/sdk/oc;

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/sdk/oc;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .line 210
    array-length v3, v0

    if-ne v2, v3, :cond_5

    const-string v0, "[anySetter]"

    .line 211
    :goto_3
    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/flurry/sdk/oz;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_5
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 212
    :catch_1
    move-exception v1

    .line 213
    new-instance v1, Lcom/flurry/sdk/je;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, v3}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    .line 214
    array-length v3, v0

    if-ne v2, v3, :cond_6

    const-string v0, "[anySetter]"

    .line 215
    :goto_4
    new-instance v2, Lcom/flurry/sdk/je$a;

    invoke-direct {v2, p1, v0}, Lcom/flurry/sdk/je$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/je$a;)V

    .line 216
    throw v1

    .line 214
    :cond_6
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/flurry/sdk/of;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
