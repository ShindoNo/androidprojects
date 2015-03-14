.class Lme/kiip/internal/a/l$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/a/l;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lme/kiip/internal/a/l;


# direct methods
.method constructor <init>(Lme/kiip/internal/a/l;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lme/kiip/internal/a/l$1;->c:Lme/kiip/internal/a/l;

    iput-object p2, p0, Lme/kiip/internal/a/l$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lme/kiip/internal/a/l$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lme/kiip/internal/a/l$1;->c:Lme/kiip/internal/a/l;

    invoke-static {v0}, Lme/kiip/internal/a/l;->b(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/t$a;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/a/l$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lme/kiip/internal/a/l$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lme/kiip/internal/a/t$a;->a(Ljava/lang/String;J)V

    .line 254
    iget-object v0, p0, Lme/kiip/internal/a/l$1;->c:Lme/kiip/internal/a/l;

    invoke-static {v0}, Lme/kiip/internal/a/l;->b(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/t$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/a/t$a;->a(Ljava/lang/String;)V

    .line 255
    return-void
.end method
