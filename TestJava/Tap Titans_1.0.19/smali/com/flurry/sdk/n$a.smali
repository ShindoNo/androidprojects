.class final Lcom/flurry/sdk/n$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/n;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/n;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$1;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/flurry/sdk/n$a;-><init>(Lcom/flurry/sdk/n;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onHideCustomView()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/n$d;->a(Lcom/flurry/sdk/n;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;Z)Z

    .line 180
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(14)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;Z)Z

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    new-instance v2, Lcom/flurry/sdk/n$g;

    iget-object v3, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-direct {v2, v3, p3}, Lcom/flurry/sdk/n$g;-><init>(Lcom/flurry/sdk/n;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/flurry/sdk/n$d;->a(Lcom/flurry/sdk/n;Landroid/view/View;ILcom/flurry/sdk/n$d$a;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(7)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;Z)Z

    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->e(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$d;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    new-instance v2, Lcom/flurry/sdk/n$g;

    iget-object v3, p0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n;

    invoke-direct {v2, v3, p2}, Lcom/flurry/sdk/n$g;-><init>(Lcom/flurry/sdk/n;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/flurry/sdk/n$d;->a(Lcom/flurry/sdk/n;Landroid/view/View;Lcom/flurry/sdk/n$d$a;)V

    .line 159
    :cond_0
    return-void
.end method
