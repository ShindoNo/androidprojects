.class Lme/kiip/internal/p/a$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/p/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
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
    .line 36
    iput-object p1, p0, Lme/kiip/internal/p/a$1;->b:Lme/kiip/internal/p/a;

    iput-object p2, p0, Lme/kiip/internal/p/a$1;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lme/kiip/internal/p/a$1;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 39
    return-void
.end method
