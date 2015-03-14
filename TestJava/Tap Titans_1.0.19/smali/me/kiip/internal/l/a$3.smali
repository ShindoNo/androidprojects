.class Lme/kiip/internal/l/a$3;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/a$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lme/kiip/internal/l/a$3;->a:Lme/kiip/internal/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/kiip/internal/i/e;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lme/kiip/internal/l/a$3;->a:Lme/kiip/internal/l/a;

    iput-object p1, v0, Lme/kiip/internal/l/a;->i:Lme/kiip/internal/i/e;

    .line 202
    iget-object v0, p0, Lme/kiip/internal/l/a$3;->a:Lme/kiip/internal/l/a;

    invoke-static {v0}, Lme/kiip/internal/l/a;->c(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 203
    iget-object v0, p0, Lme/kiip/internal/l/a$3;->a:Lme/kiip/internal/l/a;

    invoke-virtual {p1}, Lme/kiip/internal/i/e;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/kiip/internal/l/a;->a(Lme/kiip/internal/l/a;Ljava/lang/String;)V

    .line 204
    return-void
.end method
