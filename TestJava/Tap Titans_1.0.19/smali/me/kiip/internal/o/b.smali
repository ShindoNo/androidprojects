.class public Lme/kiip/internal/o/b;
.super Landroid/webkit/WebChromeClient;
.source "KiipSDK"


# instance fields
.field final a:Lme/kiip/internal/p/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 10
    new-instance v0, Lme/kiip/internal/p/a;

    invoke-direct {v0}, Lme/kiip/internal/p/a;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/p/a;->a(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 22
    iget-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/kiip/internal/p/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 29
    iget-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/kiip/internal/p/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 36
    iget-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/kiip/internal/p/a;->c(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 43
    iget-object v0, p0, Lme/kiip/internal/o/b;->a:Lme/kiip/internal/p/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lme/kiip/internal/p/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
