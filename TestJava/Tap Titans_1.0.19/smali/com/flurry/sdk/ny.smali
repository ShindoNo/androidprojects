.class public Lcom/flurry/sdk/ny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jj;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/ji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-virtual {p1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ji;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/ji;)Lcom/flurry/sdk/ny;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ji;",
            ")",
            "Lcom/flurry/sdk/ny;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ny;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object p0
.end method
