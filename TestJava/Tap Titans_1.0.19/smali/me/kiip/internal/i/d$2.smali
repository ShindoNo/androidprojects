.class Lme/kiip/internal/i/d$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/i/d;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/d;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lme/kiip/internal/i/d$2;->a:Lme/kiip/internal/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lme/kiip/internal/i/d$2;->a:Lme/kiip/internal/i/d;

    iget-object v1, p0, Lme/kiip/internal/i/d$2;->a:Lme/kiip/internal/i/d;

    invoke-static {v1}, Lme/kiip/internal/i/d;->a(Lme/kiip/internal/i/d;)Lme/kiip/sdk/Kiip$Callback;

    move-result-object v1

    invoke-static {v0, v1}, Lme/kiip/internal/i/d;->b(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    .line 64
    iget-object v0, p0, Lme/kiip/internal/i/d$2;->a:Lme/kiip/internal/i/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/i/d;->c(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)Lme/kiip/sdk/Kiip$Callback;

    .line 65
    return-void
.end method
