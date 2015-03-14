.class Lme/kiip/internal/l/a$a$2$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$a$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lme/kiip/internal/l/a$a$2;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$a$2;Landroid/webkit/WebView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iput-object p2, p0, Lme/kiip/internal/l/a$a$2$1;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lme/kiip/internal/l/a$a$2$1;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 980
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 981
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v1, v1, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.location.hash=\"#current_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v1, v1, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->i(Lme/kiip/internal/l/a$a;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 985
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v1, v1, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v1}, Lme/kiip/internal/l/a$a;->j(Lme/kiip/internal/l/a$a;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 986
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 987
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 990
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 991
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 997
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->k(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lme/kiip/internal/l/a$a$2$1;->c:Lme/kiip/internal/l/a$a$2;

    iget-object v0, v0, Lme/kiip/internal/l/a$a$2;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->k(Lme/kiip/internal/l/a$a;)Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/sdk/Modal$VideoListener;->onVideoStopped()V

    .line 1000
    :cond_0
    return-void

    .line 993
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/l/a$a$2$1;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
