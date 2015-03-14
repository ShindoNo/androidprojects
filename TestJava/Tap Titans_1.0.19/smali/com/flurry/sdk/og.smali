.class public Lcom/flurry/sdk/og;
.super Lcom/flurry/sdk/oz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/oz;-><init>(Lcom/flurry/sdk/se;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V

    .line 42
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
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/oz;-><init>(Ljava/lang/Class;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/sdk/og;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/og;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/flurry/sdk/og;

    sget-object v2, Lcom/flurry/sdk/og;->a:[Lcom/flurry/sdk/of;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/og;-><init>(Ljava/lang/Class;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/flurry/sdk/ox;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ox;-><init>(Lcom/flurry/sdk/oz;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/og;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/og;->c(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 114
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/og;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/og;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
