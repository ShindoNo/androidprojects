.class public abstract Lcom/flurry/sdk/rw;
.super Lcom/flurry/sdk/rh;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/rh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p3, p0, p1}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/rw;->a(Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 35
    invoke-virtual {p3, p0, p1}, Lcom/flurry/sdk/jw;->d(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 36
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/flurry/sdk/rw;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
