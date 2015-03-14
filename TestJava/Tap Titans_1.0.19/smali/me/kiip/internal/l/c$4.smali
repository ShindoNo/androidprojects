.class Lme/kiip/internal/l/c$4;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/c;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a;

.field final synthetic b:Lme/kiip/internal/l/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    iput-object p2, p0, Lme/kiip/internal/l/c$4;->a:Lme/kiip/internal/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->a:Lme/kiip/internal/l/a;

    iget-boolean v0, v0, Lme/kiip/internal/l/a;->f:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    const-string v1, "modal_cancel"

    iget-object v2, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-static {v2}, Lme/kiip/internal/l/c;->c(Lme/kiip/internal/l/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-static {v0}, Lme/kiip/internal/l/c;->b(Lme/kiip/internal/l/c;)V

    .line 220
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;)Lme/kiip/internal/l/a;

    .line 221
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    const-string v1, "modal_dismiss"

    iget-object v2, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-static {v2}, Lme/kiip/internal/l/c;->c(Lme/kiip/internal/l/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->a:Lme/kiip/internal/l/a;

    iget-boolean v0, v0, Lme/kiip/internal/l/a;->h:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    const-string v1, "url_opened"

    iget-object v2, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-static {v2}, Lme/kiip/internal/l/c;->c(Lme/kiip/internal/l/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$4;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0
.end method
