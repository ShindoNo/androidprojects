.class Lme/kiip/internal/l/a$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/a$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->a(Lme/kiip/internal/l/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->a(Lme/kiip/internal/l/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->b(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->b(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/kiip/internal/l/a;->g:Z

    .line 189
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->c(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 190
    iget-object v0, p0, Lme/kiip/internal/l/a$2;->a:Lme/kiip/internal/l/a;

    const-string v1, "Unable to load reward"

    invoke-static {v0, v1}, Lme/kiip/internal/l/a;->a(Lme/kiip/internal/l/a;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
