.class Lme/kiip/internal/l/a$c$11;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/a$a$b;


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
    .line 462
    iput-object p1, p0, Lme/kiip/internal/l/a$c$11;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lme/kiip/internal/l/a$c$11;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->f(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lme/kiip/internal/l/a$a$b;->a(Z)V

    .line 466
    return-void
.end method
