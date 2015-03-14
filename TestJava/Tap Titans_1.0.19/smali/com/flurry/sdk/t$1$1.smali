.class Lcom/flurry/sdk/t$1$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/t$1;->a(Lcom/flurry/sdk/as;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/t$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/t$1;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/flurry/sdk/t$1$1;->a:Lcom/flurry/sdk/t$1;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/flurry/sdk/t$1$1;->a:Lcom/flurry/sdk/t$1;

    iget-object v0, v0, Lcom/flurry/sdk/t$1;->e:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->c(Lcom/flurry/sdk/t;)V

    .line 496
    return-void
.end method
