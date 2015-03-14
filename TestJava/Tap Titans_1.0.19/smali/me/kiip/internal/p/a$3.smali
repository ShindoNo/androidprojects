.class Lme/kiip/internal/p/a$3;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/p/a;->c(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lme/kiip/internal/p/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/p/a;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lme/kiip/internal/p/a$3;->b:Lme/kiip/internal/p/a;

    iput-object p2, p0, Lme/kiip/internal/p/a$3;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 67
    iget-object v0, p0, Lme/kiip/internal/p/a$3;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p2, :cond_0

    .line 69
    iget-object v0, p0, Lme/kiip/internal/p/a$3;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0
.end method
