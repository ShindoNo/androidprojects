.class Lme/kiip/internal/i/a$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/i/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/i/a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lme/kiip/internal/i/a$1;->a:Lme/kiip/internal/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lme/kiip/internal/i/a$1;->a:Lme/kiip/internal/i/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/i/a;->b(Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    .line 63
    return-void
.end method
