.class public final Lme/kiip/internal/e/i;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/e/i$1;,
        Lme/kiip/internal/e/i$a;
    }
.end annotation


# instance fields
.field private final a:Lme/kiip/internal/e/i$a;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lme/kiip/internal/c/g;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 45
    new-instance v0, Lme/kiip/internal/e/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lme/kiip/internal/e/i$a;-><init>(Lme/kiip/internal/e/i;Ljava/net/URL;Lme/kiip/internal/c/g;Lme/kiip/internal/e/i$1;)V

    iput-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    .line 46
    return-void
.end method

.method private b()Ljavax/net/ssl/SSLSocket;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    iget-wide v0, v0, Lme/kiip/internal/e/e;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    instance-of v0, v0, Lme/kiip/internal/e/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->c:Lme/kiip/internal/e/e;

    check-cast v0, Lme/kiip/internal/e/h;

    invoke-virtual {v0}, Lme/kiip/internal/e/h;->u()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lme/kiip/internal/e/e;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->b()Lme/kiip/internal/e/e;

    move-result-object v0

    return-object v0
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/i$a;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/i;->connected:Z

    .line 161
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->connect()V

    .line 162
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->disconnect()V

    .line 125
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->e()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/e/i;->b()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 230
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1, p2, p3}, Lme/kiip/internal/e/i$a;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/i$a;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
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
    .line 214
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->h()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v1}, Lme/kiip/internal/e/i$a;->e()Ljava/net/SecureCacheResponse;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/e/i;->b()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->e()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/e/i;->b()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->e()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lme/kiip/internal/e/i;->b()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
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
    .line 218
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Lme/kiip/internal/c/g;->g()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v1}, Lme/kiip/internal/e/i$a;->e()Ljava/net/SecureCacheResponse;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/e/i;->b()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setAllowUserInteraction(Z)V

    .line 275
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setChunkedStreamingMode(I)V

    .line 327
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setConnectTimeout(I)V

    .line 303
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setDefaultUseCaches(Z)V

    .line 279
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setDoInput(Z)V

    .line 283
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setDoOutput(Z)V

    .line 287
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setFixedLengthStreamingMode(I)V

    .line 323
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 330
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0, p1}, Lme/kiip/internal/c/g;->a(Ljavax/net/ssl/HostnameVerifier;)Lme/kiip/internal/c/g;

    .line 331
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 290
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/i$a;->setIfModifiedSince(J)V

    .line 291
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setInstanceFollowRedirects(Z)V

    .line 157
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setReadTimeout(I)V

    .line 311
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/e/i$a;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 338
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    iget-object v0, v0, Lme/kiip/internal/e/i$a;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0, p1}, Lme/kiip/internal/c/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Lme/kiip/internal/c/g;

    .line 339
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/e/i$a;->setUseCaches(Z)V

    .line 299
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lme/kiip/internal/e/i;->a:Lme/kiip/internal/e/i$a;

    invoke-virtual {v0}, Lme/kiip/internal/e/i$a;->usingProxy()Z

    move-result v0

    return v0
.end method
