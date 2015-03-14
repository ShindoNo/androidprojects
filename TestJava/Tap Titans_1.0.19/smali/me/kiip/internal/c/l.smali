.class public final Lme/kiip/internal/c/l;
.super Ljava/lang/Object;
.source "KiipSDK"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userAgent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lme/kiip/internal/c/l;->a:Ljava/lang/String;

    .line 47
    iput p2, p0, Lme/kiip/internal/c/l;->b:I

    .line 48
    iput-object p3, p0, Lme/kiip/internal/c/l;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lme/kiip/internal/c/l;->d:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method a()Lme/kiip/internal/e/l;
    .locals 4

    .prologue
    .line 58
    new-instance v1, Lme/kiip/internal/e/l;

    invoke-direct {v1}, Lme/kiip/internal/e/l;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lme/kiip/internal/c/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lme/kiip/internal/c/l;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " HTTP/1.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/kiip/internal/e/l;->a(Ljava/lang/String;)V

    .line 62
    const-string v2, "Host"

    iget v0, p0, Lme/kiip/internal/c/l;->b:I

    const-string v3, "https"

    invoke-static {v3}, Lme/kiip/internal/d/h;->a(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lme/kiip/internal/c/l;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "User-Agent"

    iget-object v2, p0, Lme/kiip/internal/c/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lme/kiip/internal/c/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "Proxy-Authorization"

    iget-object v2, p0, Lme/kiip/internal/c/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const-string v0, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v1, v0, v2}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lme/kiip/internal/c/l;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
