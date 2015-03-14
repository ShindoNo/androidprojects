.class Lme/kiip/internal/l/a$c$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a$c;
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
    .line 296
    iput-object p1, p0, Lme/kiip/internal/l/a$c$1;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lme/kiip/internal/l/a$c$1;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$c;)V

    .line 300
    return-void
.end method
