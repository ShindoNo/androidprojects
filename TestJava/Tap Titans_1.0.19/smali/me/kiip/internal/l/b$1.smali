.class Lme/kiip/internal/l/b$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/b;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lme/kiip/internal/l/b$1;->a:Lme/kiip/internal/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lme/kiip/internal/l/b$1;->a:Lme/kiip/internal/l/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/b;->a(Z)V

    .line 85
    return-void
.end method
