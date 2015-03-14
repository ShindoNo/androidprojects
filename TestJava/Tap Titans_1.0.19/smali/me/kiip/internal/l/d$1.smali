.class Lme/kiip/internal/l/d$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/a/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/d;->a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/kiip/internal/a/n$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lme/kiip/internal/l/c;

.field final synthetic c:Lme/kiip/internal/l/d$a;

.field final synthetic d:Lme/kiip/internal/l/d;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/d;JLme/kiip/internal/l/c;Lme/kiip/internal/l/d$a;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lme/kiip/internal/l/d$1;->d:Lme/kiip/internal/l/d;

    iput-wide p2, p0, Lme/kiip/internal/l/d$1;->a:J

    iput-object p4, p0, Lme/kiip/internal/l/d$1;->b:Lme/kiip/internal/l/c;

    iput-object p5, p0, Lme/kiip/internal/l/d$1;->c:Lme/kiip/internal/l/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v0, p0, Lme/kiip/internal/l/d$1;->d:Lme/kiip/internal/l/d;

    const-string v1, "notification_preload"

    iget-wide v2, p0, Lme/kiip/internal/l/d$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/d$1;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lme/kiip/internal/l/d;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lme/kiip/internal/l/d$1;->b:Lme/kiip/internal/l/c;

    invoke-virtual {v0}, Lme/kiip/internal/l/c;->b()Lme/kiip/internal/l/b;

    move-result-object v0

    iput-object p1, v0, Lme/kiip/internal/l/b;->f:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lme/kiip/internal/l/d$1;->c:Lme/kiip/internal/l/d$a;

    iget-object v1, p0, Lme/kiip/internal/l/d$1;->d:Lme/kiip/internal/l/d;

    iget-object v2, p0, Lme/kiip/internal/l/d$1;->b:Lme/kiip/internal/l/c;

    invoke-interface {v0, v1, v2, v5}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    .line 107
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lme/kiip/internal/l/d$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
