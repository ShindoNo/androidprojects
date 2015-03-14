.class public Lcom/flurry/sdk/po;
.super Lcom/flurry/sdk/pv$a;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pv$a",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/sdk/se;

.field protected c:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/flurry/sdk/os;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lcom/flurry/sdk/pv$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V

    .line 74
    iput-object p1, p0, Lcom/flurry/sdk/po;->b:Lcom/flurry/sdk/se;

    .line 75
    iput-boolean p2, p0, Lcom/flurry/sdk/po;->a:Z

    .line 76
    invoke-static {}, Lcom/flurry/sdk/os;->a()Lcom/flurry/sdk/os;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/po;->d:Lcom/flurry/sdk/os;

    .line 77
    iput-object p5, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    .line 78
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/os;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/po;->f:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 275
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 276
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/po;->d:Lcom/flurry/sdk/os;

    .line 278
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method protected final a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/po;->f:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 261
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/po;->d:Lcom/flurry/sdk/os;

    .line 264
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/pc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/flurry/sdk/po;

    iget-object v1, p0, Lcom/flurry/sdk/po;->b:Lcom/flurry/sdk/se;

    iget-boolean v2, p0, Lcom/flurry/sdk/po;->a:Z

    iget-object v4, p0, Lcom/flurry/sdk/po;->f:Lcom/flurry/sdk/ip;

    iget-object v5, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/po;-><init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/flurry/sdk/po;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/po;->b:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/po;->f:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    .line 251
    :cond_0
    return-void
.end method

.method public a([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 90
    array-length v3, p1

    .line 91
    if-nez v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/po;->c:Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/po;->a([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/po;->e:Lcom/flurry/sdk/jw;

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/po;->b([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x0

    .line 103
    const/4 v1, 0x0

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/po;->d:Lcom/flurry/sdk/os;

    .line 106
    :goto_1
    if-ge v2, v3, :cond_0

    .line 107
    aget-object v1, p1, v2

    .line 108
    if-nez v1, :cond_4

    .line 109
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 106
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 114
    if-nez v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/po;->b:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/po;->b:Lcom/flurry/sdk/se;

    invoke-virtual {p3, v0, v5}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p3}, Lcom/flurry/sdk/po;->a(Lcom/flurry/sdk/os;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 123
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    throw v0

    .line 120
    :cond_6
    :try_start_1
    invoke-virtual {p0, v4, v5, p3}, Lcom/flurry/sdk/po;->a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 134
    :goto_4
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 137
    :cond_7
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_8

    .line 138
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 140
    :cond_8
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/je;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 127
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public a([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 148
    array-length v3, p1

    .line 149
    iget-object v4, p0, Lcom/flurry/sdk/po;->e:Lcom/flurry/sdk/jw;

    .line 151
    const/4 v0, 0x0

    .line 152
    const/4 v1, 0x0

    move v2, v0

    .line 154
    :goto_0
    if-ge v2, v3, :cond_4

    .line 155
    :try_start_0
    aget-object v1, p1, v2

    .line 156
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 154
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 160
    :cond_0
    if-nez v4, :cond_1

    .line 161
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    throw v0

    .line 163
    :cond_1
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v4}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    .line 170
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 173
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 174
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 176
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/je;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 178
    :cond_4
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/po;->a([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public b([Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 183
    array-length v3, p1

    .line 184
    iget-object v4, p0, Lcom/flurry/sdk/po;->e:Lcom/flurry/sdk/jw;

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/flurry/sdk/po;->d:Lcom/flurry/sdk/os;

    .line 189
    :goto_0
    if-ge v2, v3, :cond_4

    .line 190
    aget-object v1, p1, v2

    .line 191
    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 189
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 196
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 197
    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0, v5, v6, p3}, Lcom/flurry/sdk/po;->a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 200
    :cond_1
    invoke-virtual {v0, v1, p2, p3, v4}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    throw v0

    .line 206
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 209
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 210
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 212
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/je;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 214
    :cond_4
    return-void

    .line 204
    :catch_1
    move-exception v0

    goto :goto_2
.end method
