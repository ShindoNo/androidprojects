.class Lme/kiip/internal/l/c$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/c;->show(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lme/kiip/internal/l/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/b;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    iput-object p2, p0, Lme/kiip/internal/l/c$1;->a:Lme/kiip/internal/l/b;

    iput-object p3, p0, Lme/kiip/internal/l/c$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lme/kiip/internal/l/c$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->a:Lme/kiip/internal/l/b;

    iget-boolean v0, v0, Lme/kiip/internal/l/b;->g:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    const-string v1, "notification_click"

    iget-object v2, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    invoke-static {v2}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    iget-object v1, p0, Lme/kiip/internal/l/c$1;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lme/kiip/internal/l/c$1;->c:Z

    invoke-static {v0, v1, v2}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Landroid/content/Context;Z)V

    .line 158
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Lme/kiip/internal/l/b;)Lme/kiip/internal/l/b;

    .line 159
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    const-string v1, "notification_dismiss"

    iget-object v2, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    invoke-static {v2}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lme/kiip/internal/l/c$1;->d:Lme/kiip/internal/l/c;

    invoke-static {v0}, Lme/kiip/internal/l/c;->b(Lme/kiip/internal/l/c;)V

    goto :goto_0
.end method
