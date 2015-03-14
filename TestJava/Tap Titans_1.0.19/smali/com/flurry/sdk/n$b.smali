.class final Lcom/flurry/sdk/n$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/n;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/n;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/n;Lcom/flurry/sdk/n$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/flurry/sdk/n$b;-><init>(Lcom/flurry/sdk/n;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;Z)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-virtual {v0}, Lcom/flurry/sdk/n;->e()V

    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->d(Lcom/flurry/sdk/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v1}, Lcom/flurry/sdk/n;->c(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->c(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$f;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    iget-object v2, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v2}, Lcom/flurry/sdk/n;->d(Lcom/flurry/sdk/n;)Z

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Lcom/flurry/sdk/n$f;->a(Lcom/flurry/sdk/n;Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    :cond_2
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;Z)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v2}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->b(Lcom/flurry/sdk/n;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->c(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v0}, Lcom/flurry/sdk/n;->c(Lcom/flurry/sdk/n;)Lcom/flurry/sdk/n$f;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    iget-object v3, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v3}, Lcom/flurry/sdk/n;->d(Lcom/flurry/sdk/n;)Z

    move-result v3

    invoke-interface {v0, v2, p2, v3}, Lcom/flurry/sdk/n$f;->a(Lcom/flurry/sdk/n;Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/n$b;->a:Lcom/flurry/sdk/n;

    invoke-static {v2, v1}, Lcom/flurry/sdk/n;->a(Lcom/flurry/sdk/n;Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
