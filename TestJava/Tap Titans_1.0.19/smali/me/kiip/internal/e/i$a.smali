.class final Lme/kiip/internal/e/i$a;
.super Lme/kiip/internal/e/g;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lme/kiip/internal/e/i;


# direct methods
.method private constructor <init>(Lme/kiip/internal/e/i;Ljava/net/URL;Lme/kiip/internal/c/g;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lme/kiip/internal/e/i$a;->d:Lme/kiip/internal/e/i;

    .line 347
    invoke-direct {p0, p2, p3}, Lme/kiip/internal/e/g;-><init>(Ljava/net/URL;Lme/kiip/internal/c/g;)V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/e/i;Ljava/net/URL;Lme/kiip/internal/c/g;Lme/kiip/internal/e/i$1;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1, p2, p3}, Lme/kiip/internal/e/i$a;-><init>(Lme/kiip/internal/e/i;Ljava/net/URL;Lme/kiip/internal/c/g;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lme/kiip/internal/e/i$a;->d:Lme/kiip/internal/e/i;

    return-object v0
.end method

.method public e()Ljava/net/SecureCacheResponse;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    instance-of v0, v0, Lme/kiip/internal/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    invoke-virtual {v0}, Lme/kiip/internal/e/e;->l()Ljava/net/CacheResponse;

    move-result-object v0

    check-cast v0, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
