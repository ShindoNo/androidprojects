.class Lme/kiip/internal/l/a$a$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$a;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$a;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lme/kiip/internal/l/a$a$1;->a:Lme/kiip/internal/l/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lme/kiip/internal/l/a$a$1;->a:Lme/kiip/internal/l/a$a;

    invoke-static {v0}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->b()V

    .line 850
    return-void
.end method
