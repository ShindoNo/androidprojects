.class Lme/kiip/internal/l/a$c$4;
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
    .line 302
    iput-object p1, p0, Lme/kiip/internal/l/a$c$4;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lme/kiip/internal/l/a$c$4;->a:Lme/kiip/internal/l/a$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$c;Z)V

    .line 306
    return-void
.end method