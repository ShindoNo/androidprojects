.class Lcom/flurry/sdk/u$a$4$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a$4;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u$a$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a$4;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/flurry/sdk/u$a$4$1;->a:Lcom/flurry/sdk/u$a$4;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 978
    iget-object v0, p0, Lcom/flurry/sdk/u$a$4$1;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v0, v0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    invoke-static {v0}, Lcom/flurry/sdk/u$a;->i(Lcom/flurry/sdk/u$a;)V

    .line 979
    iget-object v0, p0, Lcom/flurry/sdk/u$a$4$1;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v2, v0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    iget-object v0, p0, Lcom/flurry/sdk/u$a$4$1;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v0, v0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    invoke-static {v0}, Lcom/flurry/sdk/u$a;->j(Lcom/flurry/sdk/u$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/u$a$4$1;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v1, v1, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    invoke-static {v1}, Lcom/flurry/sdk/u$a;->k(Lcom/flurry/sdk/u$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$a;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 980
    return-void
.end method
