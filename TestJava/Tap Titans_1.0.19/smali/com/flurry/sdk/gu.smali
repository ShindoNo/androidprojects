.class public abstract Lcom/flurry/sdk/gu;
.super Lcom/flurry/sdk/fn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/flurry/sdk/gs;",
        ">",
        "Lcom/flurry/sdk/fn",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fk;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/fn;-><init>(Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fq;)V

    .line 36
    return-void
.end method
