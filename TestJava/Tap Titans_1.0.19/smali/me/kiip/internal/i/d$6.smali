.class Lme/kiip/internal/i/d$6;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/d;->b(Lme/kiip/sdk/Kiip$Callback;)V
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
    .line 384
    iput-object p1, p0, Lme/kiip/internal/i/d$6;->b:Lme/kiip/internal/i/d;

    iput-object p2, p0, Lme/kiip/internal/i/d$6;->a:Lme/kiip/sdk/Kiip$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lme/kiip/internal/i/d$6;->a:Lme/kiip/sdk/Kiip$Callback;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lme/kiip/internal/i/d$6;->a:Lme/kiip/sdk/Kiip$Callback;

    iget-object v1, p0, Lme/kiip/internal/i/d$6;->b:Lme/kiip/internal/i/d;

    invoke-interface {v0, v1, p1}, Lme/kiip/sdk/Kiip$Callback;->onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V

    .line 390
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lme/kiip/internal/i/d$6;->a:Lme/kiip/sdk/Kiip$Callback;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lme/kiip/internal/i/d$6;->a:Lme/kiip/sdk/Kiip$Callback;

    iget-object v1, p0, Lme/kiip/internal/i/d$6;->b:Lme/kiip/internal/i/d;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    .line 397
    :cond_0
    return-void
.end method
