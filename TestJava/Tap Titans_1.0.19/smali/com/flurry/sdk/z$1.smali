.class Lcom/flurry/sdk/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 199
    iput-object p1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 202
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->a(Lcom/flurry/sdk/z;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IN KEYCODE BACK"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->c(Lcom/flurry/sdk/z;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->c(Lcom/flurry/sdk/z;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-static {v1}, Lcom/flurry/sdk/z;->b(Lcom/flurry/sdk/z;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dismissing popup"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/flurry/sdk/z$1;->a:Lcom/flurry/sdk/z;

    invoke-virtual {v1}, Lcom/flurry/sdk/z;->d()V

    .line 214
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
