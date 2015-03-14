.class Lme/kiip/internal/l/a$c$3;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/a$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lme/kiip/internal/l/a$c$3;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/kiip/internal/i/e;)V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lme/kiip/internal/l/a$c$3;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->k(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lme/kiip/internal/l/a$a$c;->a(Lme/kiip/internal/i/e;)V

    .line 524
    return-void
.end method
