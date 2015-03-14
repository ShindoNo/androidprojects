.class public Lcom/flurry/sdk/mf;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Lcom/flurry/sdk/sn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/sn;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mf;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/sn;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/sn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/flurry/sdk/sn;

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->a()Lcom/flurry/sdk/hk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/sn;-><init>(Lcom/flurry/sdk/hk;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/sn;->c(Lcom/flurry/sdk/hg;)V

    .line 34
    return-object v0
.end method
