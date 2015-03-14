.class public Lme/kiip/internal/n/a;
.super Lme/kiip/internal/b/i;
.source "KiipSDK"


# static fields
.field private static final a:Ljava/text/DateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lme/kiip/internal/n/a;->a:Ljava/text/DateFormat;

    .line 32
    sget-object v0, Lme/kiip/internal/n/a;->a:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/a/n$b;Lme/kiip/internal/a/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lme/kiip/internal/a/n$b",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lme/kiip/internal/a/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lme/kiip/internal/b/i;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/a/n$b;Lme/kiip/internal/a/n$a;)V

    .line 54
    return-void
.end method

.method private v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lme/kiip/internal/n/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown method type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    const-string v0, "POST"

    .line 74
    :goto_0
    return-object v0

    .line 68
    :pswitch_1
    const-string v0, "GET"

    goto :goto_0

    .line 70
    :pswitch_2
    const-string v0, "DELETE"

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v0, "POST"

    goto :goto_0

    .line 74
    :pswitch_4
    const-string v0, "PUT"

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/i;",
            ")",
            "Lme/kiip/internal/a/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1}, Lme/kiip/internal/b/i;->a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;

    move-result-object v1

    .line 134
    iget-object v0, v1, Lme/kiip/internal/a/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lme/kiip/internal/a/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v2, Lme/kiip/internal/m/a;

    iget-object v0, v1, Lme/kiip/internal/a/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lme/kiip/internal/m/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lme/kiip/internal/a/n;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lme/kiip/internal/n/a;->b:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lme/kiip/internal/n/a;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Lme/kiip/internal/a/s;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    .line 144
    iget-object v1, p1, Lme/kiip/internal/a/s;->a:Lme/kiip/internal/a/i;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lme/kiip/internal/a/s;->a:Lme/kiip/internal/a/i;

    iget-object v3, v3, Lme/kiip/internal/a/i;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v2, "error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Lme/kiip/internal/m/a;

    invoke-direct {p1, v0}, Lme/kiip/internal/m/a;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lme/kiip/internal/b/i;->b(Lme/kiip/internal/a/s;)V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public g()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/kiip/internal/a/a;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    :try_start_0
    sget-object v1, Lme/kiip/internal/n/a;->a:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 91
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lme/kiip/internal/n/a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 92
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Lme/kiip/internal/n/a;->o()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 97
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lme/kiip/internal/h/a;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v5, "%s\n%s\n%s\n%s\n%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0}, Lme/kiip/internal/n/a;->v()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Lme/kiip/internal/n/a;->n()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    invoke-virtual {p0}, Lme/kiip/internal/n/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 110
    const/4 v4, 0x2

    invoke-static {v3, v4}, Lme/kiip/internal/h/a;->a([BI)Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string v4, "Date"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "Content-MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "Authorization"

    const-string v2, "KiipV2 %s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lme/kiip/internal/n/a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    goto :goto_0
.end method
