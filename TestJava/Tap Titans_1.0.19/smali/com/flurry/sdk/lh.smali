.class abstract Lcom/flurry/sdk/lh;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lh$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/flurry/sdk/he;",
        ">",
        "Lcom/flurry/sdk/lw",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lw;-><init>(Ljava/lang/Class;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p3}, Lcom/flurry/sdk/rp;->c()Lcom/flurry/sdk/rt;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 189
    sget-object v2, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    sget-object v2, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v2, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->g()Ljava/lang/String;

    move-result-object v2

    .line 195
    sget-object v0, Lcom/flurry/sdk/lh$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 208
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/rt;->a(Ljava/lang/String;Lcom/flurry/sdk/he;)Lcom/flurry/sdk/he;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;Lcom/flurry/sdk/rt;Lcom/flurry/sdk/he;Lcom/flurry/sdk/he;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    goto :goto_1

    .line 200
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;

    move-result-object v0

    goto :goto_1

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Ljava/lang/String;)Lcom/flurry/sdk/rv;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_2
    return-object v1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jv;->d(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/sdk/rt;Lcom/flurry/sdk/he;Lcom/flurry/sdk/he;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected final b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p3}, Lcom/flurry/sdk/rp;->b()Lcom/flurry/sdk/rg;

    move-result-object v0

    .line 222
    :goto_0
    sget-object v1, Lcom/flurry/sdk/lh$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/rg;->a(Lcom/flurry/sdk/he;)V

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/rg;->a(Lcom/flurry/sdk/he;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/rg;->a(Lcom/flurry/sdk/he;)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/rp;->a(Ljava/lang/String;)Lcom/flurry/sdk/rv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/rg;->a(Lcom/flurry/sdk/he;)V

    goto :goto_0

    .line 230
    :pswitch_3
    return-object v0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/he;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lcom/flurry/sdk/lh$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lh;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 247
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 250
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->z()Ljava/lang/Object;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p3}, Lcom/flurry/sdk/rp;->a()Lcom/flurry/sdk/rr;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 263
    const-class v2, [B

    if-ne v1, v2, :cond_1

    .line 264
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a([B)Lcom/flurry/sdk/rj;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Ljava/lang/Object;)Lcom/flurry/sdk/ru;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Ljava/lang/String;)Lcom/flurry/sdk/rv;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_6
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->q()Lcom/flurry/sdk/hg$b;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/flurry/sdk/hg$b;->c:Lcom/flurry/sdk/hg$b;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/iv$a;->h:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Ljava/math/BigInteger;)Lcom/flurry/sdk/rs;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_3
    sget-object v1, Lcom/flurry/sdk/hg$b;->a:Lcom/flurry/sdk/hg$b;

    if-ne v0, v1, :cond_4

    .line 281
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->t()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(I)Lcom/flurry/sdk/rs;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->u()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/sdk/rp;->a(J)Lcom/flurry/sdk/rs;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->q()Lcom/flurry/sdk/hg$b;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/flurry/sdk/hg$b;->f:Lcom/flurry/sdk/hg$b;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/flurry/sdk/iv$a;->g:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    :cond_5
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Ljava/math/BigDecimal;)Lcom/flurry/sdk/rs;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_6
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->x()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/sdk/rp;->a(D)Lcom/flurry/sdk/rs;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Z)Lcom/flurry/sdk/rk;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/rp;->a(Z)Lcom/flurry/sdk/rk;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :pswitch_a
    invoke-virtual {p3}, Lcom/flurry/sdk/rp;->a()Lcom/flurry/sdk/rr;

    move-result-object v0

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
