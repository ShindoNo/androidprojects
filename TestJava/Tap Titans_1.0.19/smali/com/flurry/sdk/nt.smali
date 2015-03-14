.class public abstract Lcom/flurry/sdk/nt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ne;


# instance fields
.field protected final c:Lcom/flurry/sdk/qp;

.field protected final d:Lcom/flurry/sdk/se;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/qp;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/nt;->d:Lcom/flurry/sdk/se;

    .line 20
    iput-object p2, p0, Lcom/flurry/sdk/nt;->c:Lcom/flurry/sdk/qp;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/sdk/nt;->d:Lcom/flurry/sdk/se;

    invoke-virtual {v1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/nt;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/se;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
