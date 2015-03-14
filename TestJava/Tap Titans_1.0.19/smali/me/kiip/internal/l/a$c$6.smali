.class Lme/kiip/internal/l/a$c$6;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->c(Lme/kiip/internal/l/a$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->cancel()V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$c;Z)V

    .line 380
    iget-object v0, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->e(Lme/kiip/internal/l/a$c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/l/a$c$6;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->d(Lme/kiip/internal/l/a$c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
