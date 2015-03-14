.class Lme/kiip/internal/e/n$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/e/n;


# direct methods
.method constructor <init>(Lme/kiip/internal/e/n;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    const-string v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/e/n;Z)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->b(Lme/kiip/internal/e/n;Z)Z

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {p2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->a(Lme/kiip/internal/e/n;I)I

    goto :goto_0

    .line 132
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {p2}, Lme/kiip/internal/e/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->b(Lme/kiip/internal/e/n;I)I

    goto :goto_0

    .line 134
    :cond_4
    const-string v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->c(Lme/kiip/internal/e/n;Z)Z

    goto :goto_0

    .line 136
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lme/kiip/internal/e/n$1;->a:Lme/kiip/internal/e/n;

    invoke-static {v0, v1}, Lme/kiip/internal/e/n;->d(Lme/kiip/internal/e/n;Z)Z

    goto :goto_0
.end method
