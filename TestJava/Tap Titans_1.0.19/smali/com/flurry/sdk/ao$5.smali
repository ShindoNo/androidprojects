.class Lcom/flurry/sdk/ao$5;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ao$a;

.field final synthetic b:Lcom/flurry/sdk/aq;

.field final synthetic c:Lcom/flurry/sdk/ar;

.field final synthetic d:Lcom/flurry/sdk/ao;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ao;Lcom/flurry/sdk/ao$a;Lcom/flurry/sdk/aq;Lcom/flurry/sdk/ar;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/flurry/sdk/ao$5;->d:Lcom/flurry/sdk/ao;

    iput-object p2, p0, Lcom/flurry/sdk/ao$5;->a:Lcom/flurry/sdk/ao$a;

    iput-object p3, p0, Lcom/flurry/sdk/ao$5;->b:Lcom/flurry/sdk/aq;

    iput-object p4, p0, Lcom/flurry/sdk/ao$5;->c:Lcom/flurry/sdk/ar;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/flurry/sdk/ao$5;->a:Lcom/flurry/sdk/ao$a;

    iget-object v1, p0, Lcom/flurry/sdk/ao$5;->b:Lcom/flurry/sdk/aq;

    invoke-virtual {v1}, Lcom/flurry/sdk/aq;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ao$5;->c:Lcom/flurry/sdk/ar;

    invoke-interface {v0, v1, v2}, Lcom/flurry/sdk/ao$a;->a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V

    .line 512
    return-void
.end method
