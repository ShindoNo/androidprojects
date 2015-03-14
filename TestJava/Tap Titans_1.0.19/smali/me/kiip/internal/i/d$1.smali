.class Lme/kiip/internal/i/d$1;
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
    .line 53
    iput-object p1, p0, Lme/kiip/internal/i/d$1;->a:Lme/kiip/internal/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lme/kiip/internal/i/d$1;->a:Lme/kiip/internal/i/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/i/d;->a(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    .line 57
    return-void
.end method
