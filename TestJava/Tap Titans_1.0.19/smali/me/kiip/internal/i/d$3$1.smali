.class Lme/kiip/internal/i/d$3$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/d$3;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/i/d$3;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/d$3;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lme/kiip/internal/i/d$3$1;->a:Lme/kiip/internal/i/d$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 258
    if-eqz p3, :cond_0

    .line 262
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/i/d$3$1;->a:Lme/kiip/internal/i/d$3;

    iget-object v0, v0, Lme/kiip/internal/i/d$3;->a:Lme/kiip/sdk/Kiip$Callback;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lme/kiip/internal/i/d$3$1;->a:Lme/kiip/internal/i/d$3;

    iget-object v0, v0, Lme/kiip/internal/i/d$3;->a:Lme/kiip/sdk/Kiip$Callback;

    iget-object v1, p0, Lme/kiip/internal/i/d$3$1;->a:Lme/kiip/internal/i/d$3;

    iget-object v1, v1, Lme/kiip/internal/i/d$3;->b:Lme/kiip/internal/i/d;

    invoke-interface {v0, v1, p2}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    .line 265
    :cond_1
    return-void
.end method
