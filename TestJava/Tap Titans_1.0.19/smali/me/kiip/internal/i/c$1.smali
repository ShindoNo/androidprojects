.class Lme/kiip/internal/i/c$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/i/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/c;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    check-cast p1, Lme/kiip/sdk/Poptart;

    .line 89
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lme/kiip/sdk/Poptart;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    iget-object v0, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    invoke-static {v0}, Lme/kiip/internal/i/c;->a(Lme/kiip/internal/i/c;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    invoke-static {v0}, Lme/kiip/internal/i/c;->b(Lme/kiip/internal/i/c;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    invoke-static {v0}, Lme/kiip/internal/i/c;->b(Lme/kiip/internal/i/c;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    invoke-static {v0}, Lme/kiip/internal/i/c;->a(Lme/kiip/internal/i/c;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lme/kiip/internal/i/c$1;->a:Lme/kiip/internal/i/c;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lme/kiip/internal/i/c;->a(Lme/kiip/internal/i/c;Z)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
