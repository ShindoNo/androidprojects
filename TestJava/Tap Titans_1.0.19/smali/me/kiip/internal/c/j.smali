.class public Lme/kiip/internal/c/j;
.super Ljava/lang/Object;
.source "KiipSDK"


# instance fields
.field final a:Lme/kiip/internal/c/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;

.field final d:Z


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    iput-object p1, p0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    .line 34
    iput-object p2, p0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    .line 35
    iput-object p3, p0, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    .line 36
    iput-boolean p4, p0, Lme/kiip/internal/c/j;->d:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lme/kiip/internal/c/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    return-object v0
.end method

.method public b()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method c()Lme/kiip/internal/c/j;
    .locals 5

    .prologue
    .line 69
    new-instance v1, Lme/kiip/internal/c/j;

    iget-object v2, p0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v3, p0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    iget-object v4, p0, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    iget-boolean v0, p0, Lme/kiip/internal/c/j;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lme/kiip/internal/c/j;-><init>(Lme/kiip/internal/c/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lme/kiip/internal/c/j;

    if-eqz v1, :cond_0

    .line 74
    check-cast p1, Lme/kiip/internal/c/j;

    .line 75
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v2, p1, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    invoke-virtual {v1, v2}, Lme/kiip/internal/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lme/kiip/internal/c/j;->d:Z

    iget-boolean v2, p1, Lme/kiip/internal/c/j;->d:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    .line 85
    iget-object v0, p0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    invoke-virtual {v0}, Lme/kiip/internal/c/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 88
    iget-boolean v0, p0, Lme/kiip/internal/c/j;->d:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x1f

    :goto_0
    add-int/2addr v0, v1

    .line 89
    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
