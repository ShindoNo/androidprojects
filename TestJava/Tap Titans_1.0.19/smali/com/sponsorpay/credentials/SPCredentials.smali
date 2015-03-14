.class public Lcom/sponsorpay/credentials/SPCredentials;
.super Ljava/lang/Object;
.source "SPCredentials.java"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mCredentialsToken:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "securityToken"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppID cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mSecurityToken:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mAppId:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mAppId:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mCredentialsToken:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p4}, Lcom/sponsorpay/utils/UserId;->getAutoGenerated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mUserId:Ljava/lang/String;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/sponsorpay/credentials/SPCredentials;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCredentialsToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AppID cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string p1, ""

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mCredentialsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sponsorpay/credentials/SPCredentials;->mSecurityToken:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const-string v1, "Credentials token - %s\nAppId - %s\nUserId - %s\nSecurityToken - %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 122
    iget-object v3, p0, Lcom/sponsorpay/credentials/SPCredentials;->mCredentialsToken:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 123
    iget-object v3, p0, Lcom/sponsorpay/credentials/SPCredentials;->mAppId:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 124
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mUserId:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x3

    .line 125
    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mSecurityToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/credentials/SPCredentials;->mSecurityToken:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v3

    .line 121
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0

    .line 124
    :cond_0
    const-string v0, "N/A"

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "N/A"

    goto :goto_1
.end method