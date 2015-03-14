.class public abstract Lcom/flurry/sdk/io;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/se;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/se;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/io;->a:Lcom/flurry/sdk/se;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/io;->a:Lcom/flurry/sdk/se;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/io;->a:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/flurry/sdk/mk;
.end method
