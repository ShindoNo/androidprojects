.class public Lcom/flurry/sdk/gr;
.super Lcom/flurry/sdk/fs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/fs",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/fs;-><init>(Lcom/flurry/sdk/fq;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gp;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/fk;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/fs;-><init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fq;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected c(Lcom/flurry/sdk/fk;Ljava/lang/Object;Lcom/flurry/sdk/gf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    instance-of v0, p2, Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/fs;->c(Lcom/flurry/sdk/fk;Ljava/lang/Object;Lcom/flurry/sdk/gf;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/gf;->a(I)V

    goto :goto_0
.end method
