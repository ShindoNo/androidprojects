.class Lme/kiip/internal/l/b$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/b;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/b;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-static {v0}, Lme/kiip/internal/l/b;->a(Lme/kiip/internal/l/b;)V

    .line 264
    iget-object v0, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-static {v0}, Lme/kiip/internal/l/b;->b(Lme/kiip/internal/l/b;)Lme/kiip/sdk/Notification$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-static {v0}, Lme/kiip/internal/l/b;->b(Lme/kiip/internal/l/b;)Lme/kiip/sdk/Notification$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-interface {v0, v1}, Lme/kiip/sdk/Notification$OnDismissListener;->onDismiss(Lme/kiip/sdk/Notification;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/b$2;->a:Lme/kiip/internal/l/b;

    invoke-static {v0}, Lme/kiip/internal/l/b;->c(Lme/kiip/internal/l/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 269
    return-void
.end method
