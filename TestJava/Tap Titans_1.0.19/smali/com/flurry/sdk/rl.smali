.class public abstract Lcom/flurry/sdk/rl;
.super Lcom/flurry/sdk/rh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/rl$b;,
        Lcom/flurry/sdk/rl$a;
    }
.end annotation


# instance fields
.field d:Lcom/flurry/sdk/rp;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/rp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/rh;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/sdk/rl;->d:Lcom/flurry/sdk/rp;

    .line 28
    return-void
.end method


# virtual methods
.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public final s()Lcom/flurry/sdk/rr;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/rl;->d:Lcom/flurry/sdk/rp;

    invoke-virtual {v0}, Lcom/flurry/sdk/rp;->a()Lcom/flurry/sdk/rr;

    move-result-object v0

    return-object v0
.end method
