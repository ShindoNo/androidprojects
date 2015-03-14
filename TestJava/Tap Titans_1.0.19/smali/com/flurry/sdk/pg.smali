.class public Lcom/flurry/sdk/pg;
.super Lcom/flurry/sdk/oy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/oy",
        "<",
        "Ljava/util/EnumSet",
        "<+",
        "Ljava/lang/Enum",
        "<*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 19
    const-class v1, Ljava/util/EnumSet;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/oy;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 0
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
    .line 25
    return-object p0
.end method

.method public a(Ljava/util/EnumSet;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
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
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/pg;->d:Lcom/flurry/sdk/jh;

    .line 37
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 38
    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/pg;->e:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v1, v3}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 44
    :cond_0
    invoke-virtual {v1, v0, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0

    .line 46
    :cond_1
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
    .line 14
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pg;->a(Ljava/util/EnumSet;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method
