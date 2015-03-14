.class Lcom/flurry/sdk/z$3;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/z;->a()V
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
    .line 239
    iput-object p1, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->d(Lcom/flurry/sdk/z;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing popUp"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->c(Lcom/flurry/sdk/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    iget-object v1, v1, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 244
    iget-object v0, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->c(Lcom/flurry/sdk/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-virtual {v1}, Lcom/flurry/sdk/z;->getWidthDimensions()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-virtual {v2}, Lcom/flurry/sdk/z;->getHeightDimensions()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z$3;->a:Lcom/flurry/sdk/z;

    invoke-static {v0}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Popup initialization not required."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
