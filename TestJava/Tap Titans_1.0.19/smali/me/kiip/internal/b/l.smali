.class public Lme/kiip/internal/b/l;
.super Ljava/lang/Object;
.source "KiipSDK"


# direct methods
.method public static a(Landroid/content/Context;Lme/kiip/internal/b/f;)Lme/kiip/internal/a/m;
    .locals 5

    .prologue
    .line 43
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    const-string v0, "volley/0"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    if-nez p1, :cond_0

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 55
    new-instance p1, Lme/kiip/internal/b/g;

    invoke-direct {p1}, Lme/kiip/internal/b/g;-><init>()V

    .line 63
    :cond_0
    :goto_1
    new-instance v0, Lme/kiip/internal/b/a;

    invoke-direct {v0, p1}, Lme/kiip/internal/b/a;-><init>(Lme/kiip/internal/b/f;)V

    .line 65
    new-instance v2, Lme/kiip/internal/a/m;

    new-instance v3, Lme/kiip/internal/b/c;

    invoke-direct {v3, v1}, Lme/kiip/internal/b/c;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Lme/kiip/internal/a/m;-><init>(Lme/kiip/internal/a/b;Lme/kiip/internal/a/f;)V

    .line 66
    invoke-virtual {v2}, Lme/kiip/internal/a/m;->a()V

    .line 68
    return-object v2

    .line 59
    :cond_1
    new-instance p1, Lme/kiip/internal/b/d;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lme/kiip/internal/b/d;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method
