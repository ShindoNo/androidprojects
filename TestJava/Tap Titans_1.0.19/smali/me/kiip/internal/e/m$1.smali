.class Lme/kiip/internal/e/m$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/e/m;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/e/m;


# direct methods
.method constructor <init>(Lme/kiip/internal/e/m;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    const-string v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-static {v0, v1}, Lme/kiip/internal/e/m;->a(Lme/kiip/internal/e/m;Z)Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-static {p2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lme/kiip/internal/e/m;->a(Lme/kiip/internal/e/m;I)I

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-static {p2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lme/kiip/internal/e/m;->b(Lme/kiip/internal/e/m;I)I

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-static {p2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lme/kiip/internal/e/m;->c(Lme/kiip/internal/e/m;I)I

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lme/kiip/internal/e/m$1;->a:Lme/kiip/internal/e/m;

    invoke-static {v0, v1}, Lme/kiip/internal/e/m;->b(Lme/kiip/internal/e/m;Z)Z

    goto :goto_0
.end method
