.class Lme/kiip/internal/l/c$2;
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
.field final synthetic a:J

.field final synthetic b:Lme/kiip/internal/l/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/c;J)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lme/kiip/internal/l/c$2;->b:Lme/kiip/internal/l/c;

    iput-wide p2, p0, Lme/kiip/internal/l/c$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lme/kiip/internal/l/c$2;->b:Lme/kiip/internal/l/c;

    const-string v1, "modal_load"

    iget-wide v2, p0, Lme/kiip/internal/l/c$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/c$2;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 185
    return-void
.end method
