.class Lme/kiip/internal/f/i$b$1;
.super Lme/kiip/internal/d/e;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/f/i$b;->a(ZZIIIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/f/j;

.field final synthetic b:Lme/kiip/internal/f/i$b;


# direct methods
.method varargs constructor <init>(Lme/kiip/internal/f/i$b;Ljava/lang/String;[Ljava/lang/Object;Lme/kiip/internal/f/j;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lme/kiip/internal/f/i$b$1;->b:Lme/kiip/internal/f/i$b;

    iput-object p4, p0, Lme/kiip/internal/f/i$b$1;->a:Lme/kiip/internal/f/j;

    invoke-direct {p0, p2, p3}, Lme/kiip/internal/d/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i$b$1;->b:Lme/kiip/internal/f/i$b;

    iget-object v0, v0, Lme/kiip/internal/f/i$b;->a:Lme/kiip/internal/f/i;

    invoke-static {v0}, Lme/kiip/internal/f/i;->e(Lme/kiip/internal/f/i;)Lme/kiip/internal/f/e;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/f/i$b$1;->a:Lme/kiip/internal/f/j;

    invoke-interface {v0, v1}, Lme/kiip/internal/f/e;->a(Lme/kiip/internal/f/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
