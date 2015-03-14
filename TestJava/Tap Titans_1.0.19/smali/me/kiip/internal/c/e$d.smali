.class Lme/kiip/internal/c/e$d;
.super Ljava/net/SecureCacheResponse;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Lme/kiip/internal/c/e$b;

.field private final b:Lme/kiip/internal/d/c$c;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/e$b;Lme/kiip/internal/d/c$c;)V
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 701
    iput-object p1, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    .line 702
    iput-object p2, p0, Lme/kiip/internal/c/e$d;->b:Lme/kiip/internal/d/c$c;

    .line 703
    invoke-static {p2}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$d;->c:Ljava/io/InputStream;

    .line 704
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/e$d;)Lme/kiip/internal/d/c$c;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->b:Lme/kiip/internal/d/c$c;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->c(Lme/kiip/internal/c/e$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->b(Lme/kiip/internal/c/e$b;)Lme/kiip/internal/e/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 742
    :cond_0
    const/4 v0, 0x0

    .line 744
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/e$d;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
