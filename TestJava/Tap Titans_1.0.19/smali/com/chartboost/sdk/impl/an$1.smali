.class Lcom/chartboost/sdk/impl/an$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/an;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/an;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/an;Z)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/chartboost/sdk/impl/an$1;->b:Lcom/chartboost/sdk/impl/an;

    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/an$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/an$1;->a:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an$1;->b:Lcom/chartboost/sdk/impl/an;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/an;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an$1;->b:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/an;->clearAnimation()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an$1;->b:Lcom/chartboost/sdk/impl/an;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/an;->a:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->h:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
