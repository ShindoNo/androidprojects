.class Lme/kiip/internal/p/a$5;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/p/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lme/kiip/internal/p/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/p/a;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lme/kiip/internal/p/a$5;->c:Lme/kiip/internal/p/a;

    iput-object p2, p0, Lme/kiip/internal/p/a$5;->a:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lme/kiip/internal/p/a$5;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 98
    iget-object v0, p0, Lme/kiip/internal/p/a$5;->a:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lme/kiip/internal/p/a$5;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 100
    iget-object v0, p0, Lme/kiip/internal/p/a$5;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_0
.end method
