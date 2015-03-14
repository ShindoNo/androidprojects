.class public Lcom/flurry/sdk/gq;
.super Lcom/flurry/sdk/fr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/fr",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/gp;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/fk;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-direct {p0, p1, p1, v0}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/gp;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/gp;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/fr;-><init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fq;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gp;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/fk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/fk;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/flurry/sdk/fk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/gp;->b(Lcom/flurry/sdk/fk;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/sdk/fr;->a(Ljava/lang/String;Lcom/flurry/sdk/fk;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/gp;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->a()Lcom/flurry/sdk/fq;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gp;

    return-object v0
.end method
