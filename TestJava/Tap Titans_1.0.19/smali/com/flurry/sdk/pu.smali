.class public abstract Lcom/flurry/sdk/pu;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lcom/flurry/sdk/pt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/flurry/sdk/ip;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/ip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lcom/flurry/sdk/pu;->b:Lcom/flurry/sdk/ip;

    .line 29
    return-void
.end method