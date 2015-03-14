.class public Lcom/flurry/sdk/pw$b;
.super Lcom/flurry/sdk/oy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/pw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/oy",
        "<",
        "Ljava/util/Iterator",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V
    .locals 7

    .prologue
    .line 202
    const-class v1, Ljava/util/Iterator;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/oy;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V

    .line 203
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 4
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
    .line 207
    new-instance v0, Lcom/flurry/sdk/pw$b;

    iget-object v1, p0, Lcom/flurry/sdk/pw$b;->b:Lcom/flurry/sdk/se;

    iget-boolean v2, p0, Lcom/flurry/sdk/pw$b;->a:Z

    iget-object v3, p0, Lcom/flurry/sdk/pw$b;->e:Lcom/flurry/sdk/ip;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/flurry/sdk/pw$b;-><init>(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V

    return-object v0
.end method

.method public a(Ljava/util/Iterator;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v3, p0, Lcom/flurry/sdk/pw$b;->c:Lcom/flurry/sdk/jw;

    move-object v1, v0

    .line 219
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 220
    if-nez v4, :cond_2

    .line 221
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 239
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 226
    if-ne v2, v0, :cond_3

    move-object v2, v1

    .line 233
    :goto_1
    if-nez v3, :cond_4

    .line 234
    invoke-virtual {v2, v4, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/pw$b;->e:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v2, v0}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    move-object v0, v2

    move-object v2, v1

    .line 231
    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {v2, v4, p2, p3, v3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    goto :goto_0
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
    .line 195
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pw$b;->a(Ljava/util/Iterator;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method
