.class Lcom/flurry/sdk/z$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/z;->q()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/z;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/z;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/flurry/sdk/z$5;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 382
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z$5;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Show video close button."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/flurry/sdk/z$5;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/z$5;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->a()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z$5;->a:Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->d()V

    .line 387
    return-void
.end method
