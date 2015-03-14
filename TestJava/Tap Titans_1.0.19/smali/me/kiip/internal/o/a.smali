.class public Lme/kiip/internal/o/a;
.super Lme/kiip/internal/o/c;
.source "KiipSDK"


# static fields
.field private static a:Lme/kiip/internal/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lme/kiip/internal/o/c;-><init>()V

    return-void
.end method

.method public static a(Lme/kiip/internal/c/g;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lme/kiip/internal/o/a;->a:Lme/kiip/internal/c/g;

    .line 33
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lme/kiip/internal/o/a;->a:Lme/kiip/internal/c/g;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-object v1

    .line 45
    :cond_0
    :try_start_0
    sget-object v0, Lme/kiip/internal/o/a;->a:Lme/kiip/internal/c/g;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lme/kiip/internal/c/g;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 47
    const-string v2, "Cache-Control"

    const-string v3, "only-if-cached"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "; charset="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    const/4 v2, 0x0

    aget-object v4, v0, v2

    .line 56
    array-length v2, v0

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    move-object v2, v0

    .line 58
    :goto_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v4, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_2
    move-object v1, v0

    .line 70
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "utf-8"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    goto :goto_2

    .line 61
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
