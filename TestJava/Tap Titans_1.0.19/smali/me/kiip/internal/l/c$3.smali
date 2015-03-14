.class Lme/kiip/internal/l/c$3;
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

.field final synthetic b:J

.field final synthetic c:Lme/kiip/internal/l/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;J)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lme/kiip/internal/l/c$3;->c:Lme/kiip/internal/l/c;

    iput-object p2, p0, Lme/kiip/internal/l/c$3;->a:Lme/kiip/internal/l/a;

    iput-wide p3, p0, Lme/kiip/internal/l/c$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 191
    iget-object v0, p0, Lme/kiip/internal/l/c$3;->a:Lme/kiip/internal/l/a;

    iget-object v7, v0, Lme/kiip/internal/l/a;->i:Lme/kiip/internal/i/e;

    .line 192
    iget-object v0, p0, Lme/kiip/internal/l/c$3;->a:Lme/kiip/internal/l/a;

    iget-boolean v0, v0, Lme/kiip/internal/l/a;->g:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lme/kiip/internal/l/c$3;->c:Lme/kiip/internal/l/c;

    const-string v1, "modal_error"

    iget-wide v2, p0, Lme/kiip/internal/l/c$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$3;->c:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-eqz v7, :cond_0

    .line 197
    iget-object v0, p0, Lme/kiip/internal/l/c$3;->c:Lme/kiip/internal/l/c;

    const-string v1, "modal_webview_error"

    iget-wide v2, p0, Lme/kiip/internal/l/c$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$3;->c:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lme/kiip/internal/i/e;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lme/kiip/internal/i/e;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lme/kiip/internal/i/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
