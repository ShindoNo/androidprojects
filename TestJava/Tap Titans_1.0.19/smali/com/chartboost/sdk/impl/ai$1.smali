.class Lcom/chartboost/sdk/impl/ai$1;
.super Lcom/chartboost/sdk/impl/bm$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ai;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bm;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    .line 530
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 531
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/bm;I)V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 536
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 537
    if-eqz v0, :cond_0

    .line 538
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    if-eqz v0, :cond_2

    .line 542
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$a;Z)V

    .line 543
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->h()V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$1;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->w(Lcom/chartboost/sdk/impl/ai;)V

    goto :goto_0
.end method
