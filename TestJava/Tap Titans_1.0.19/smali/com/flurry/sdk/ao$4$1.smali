.class Lcom/flurry/sdk/ao$4$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ao$4;->a(Lcom/flurry/sdk/as;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ao$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ao$4;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/flurry/sdk/ao$4$1;->a:Lcom/flurry/sdk/ao$4;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flurry/sdk/ao$4$1;->a:Lcom/flurry/sdk/ao$4;

    iget-object v0, v0, Lcom/flurry/sdk/ao$4;->b:Lcom/flurry/sdk/ao;

    invoke-static {v0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao;)V

    .line 444
    return-void
.end method
