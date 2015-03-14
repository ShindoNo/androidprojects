.class final Lcom/flurry/sdk/ol$b;
.super Lcom/flurry/sdk/of;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field protected final p:Lcom/flurry/sdk/of;

.field protected final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/of;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/of;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/flurry/sdk/of;-><init>(Lcom/flurry/sdk/of;)V

    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/ol$b;->p:Lcom/flurry/sdk/of;

    .line 41
    iput-object p2, p0, Lcom/flurry/sdk/ol$b;->q:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/of;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/flurry/sdk/ol$b;

    iget-object v1, p0, Lcom/flurry/sdk/ol$b;->p:Lcom/flurry/sdk/of;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/of;->a(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/of;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ol$b;->q:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ol$b;-><init>(Lcom/flurry/sdk/of;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->a()Ljava/lang/Class;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/ol$b;->q:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ol$b;->p:Lcom/flurry/sdk/of;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/of;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 57
    :cond_1
    return-void
.end method
