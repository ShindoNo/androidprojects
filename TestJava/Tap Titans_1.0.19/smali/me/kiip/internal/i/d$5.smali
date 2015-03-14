.class Lme/kiip/internal/i/d$5;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/i/d;->startSession(Lme/kiip/sdk/Kiip$Callback;)Z
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
    .line 351
    iput-object p1, p0, Lme/kiip/internal/i/d$5;->b:Lme/kiip/internal/i/d;

    iput-object p2, p0, Lme/kiip/internal/i/d$5;->a:Lme/kiip/sdk/Kiip$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lme/kiip/internal/i/d$5;->b:Lme/kiip/internal/i/d;

    iget-object v1, p0, Lme/kiip/internal/i/d$5;->a:Lme/kiip/sdk/Kiip$Callback;

    invoke-static {v0, v1}, Lme/kiip/internal/i/d;->a(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    .line 355
    return-void
.end method
