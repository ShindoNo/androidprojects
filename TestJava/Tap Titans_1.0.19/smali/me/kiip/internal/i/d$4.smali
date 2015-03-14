.class Lme/kiip/internal/i/d$4;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/d;->a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/sdk/Kiip$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/sdk/Kiip$Callback;

.field final synthetic b:Lme/kiip/internal/i/d;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lme/kiip/internal/i/d$4;->b:Lme/kiip/internal/i/d;

    iput-object p2, p0, Lme/kiip/internal/i/d$4;->a:Lme/kiip/sdk/Kiip$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lme/kiip/internal/i/d$4;->a:Lme/kiip/sdk/Kiip$Callback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lme/kiip/internal/i/d$4;->a:Lme/kiip/sdk/Kiip$Callback;

    iget-object v1, p0, Lme/kiip/internal/i/d$4;->b:Lme/kiip/internal/i/d;

    invoke-interface {v0, v1, p1}, Lme/kiip/sdk/Kiip$Callback;->onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V

    .line 298
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lme/kiip/internal/i/d$4;->b:Lme/kiip/internal/i/d;

    new-instance v1, Lme/kiip/internal/i/d$4$1;

    invoke-direct {v1, p0}, Lme/kiip/internal/i/d$4$1;-><init>(Lme/kiip/internal/i/d$4;)V

    invoke-virtual {v0, p1, v1}, Lme/kiip/internal/i/d;->a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V

    .line 314
    return-void
.end method
