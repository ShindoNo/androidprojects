.class Lme/kiip/internal/p/a$6;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic b:Lme/kiip/internal/p/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/p/a;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lme/kiip/internal/p/a$6;->b:Lme/kiip/internal/p/a;

    iput-object p2, p0, Lme/kiip/internal/p/a$6;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 108
    iget-object v0, p0, Lme/kiip/internal/p/a$6;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 109
    return-void
.end method
