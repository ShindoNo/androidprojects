.class public Lcom/flurry/sdk/cw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/cw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/flurry/sdk/cw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/cw;-><init>(Lcom/flurry/sdk/cw$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/cw$a;->a:Lcom/flurry/sdk/cw;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/co;)Lcom/flurry/sdk/cw$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/cw$a;->a:Lcom/flurry/sdk/cw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cw;->a(Lcom/flurry/sdk/cw;Lcom/flurry/sdk/co;)Lcom/flurry/sdk/co;

    .line 33
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/cw$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/cw$a;->a:Lcom/flurry/sdk/cw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/cw;->a(Lcom/flurry/sdk/cw;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public a()Lcom/flurry/sdk/cw;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/cw$a;->a:Lcom/flurry/sdk/cw;

    return-object v0
.end method
