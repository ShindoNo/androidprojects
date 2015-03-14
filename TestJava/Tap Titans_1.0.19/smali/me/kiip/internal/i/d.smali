.class public final Lme/kiip/internal/i/d;
.super Lme/kiip/sdk/Kiip;
.source "KiipSDK"


# static fields
.field private static final d:[Ljava/lang/String;

.field private static p:Ljava/lang/Long;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lme/kiip/internal/i/a;

.field c:Lme/kiip/internal/l/d;

.field private e:Z

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private h:Lme/kiip/sdk/Kiip$Callback;

.field private final i:Ljava/lang/Runnable;

.field private j:Landroid/content/Context;

.field private final k:Landroid/content/SharedPreferences;

.field private l:Lme/kiip/internal/c/g;

.field private m:Lme/kiip/internal/a/m;

.field private n:I

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "real"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "share"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video"

    aput-object v2, v0, v1

    sput-object v0, Lme/kiip/internal/i/d;->d:[Ljava/lang/String;

    .line 81
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lme/kiip/internal/i/d;->p:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 83
    invoke-direct {p0}, Lme/kiip/sdk/Kiip;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/i/d;->e:Z

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/d;->f:Ljava/util/LinkedList;

    .line 53
    new-instance v0, Lme/kiip/internal/i/d$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/i/d$1;-><init>(Lme/kiip/internal/i/d;)V

    iput-object v0, p0, Lme/kiip/internal/i/d;->g:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lme/kiip/internal/i/d$2;

    invoke-direct {v0, p0}, Lme/kiip/internal/i/d$2;-><init>(Lme/kiip/internal/i/d;)V

    iput-object v0, p0, Lme/kiip/internal/i/d;->i:Ljava/lang/Runnable;

    .line 75
    iput v7, p0, Lme/kiip/internal/i/d;->n:I

    .line 86
    iput-object p1, p0, Lme/kiip/internal/i/d;->j:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/d;->a:Landroid/os/Handler;

    .line 88
    const-string v0, "me.kiip.sdk"

    invoke-virtual {p1, v0, v7}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    .line 91
    new-instance v0, Lme/kiip/internal/c/g;

    invoke-direct {v0}, Lme/kiip/internal/c/g;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/d;->l:Lme/kiip/internal/c/g;

    .line 94
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iget-object v1, p0, Lme/kiip/internal/i/d;->l:Lme/kiip/internal/c/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/kiip/internal/c/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Lme/kiip/internal/c/g;

    .line 101
    new-instance v0, Lme/kiip/internal/n/b;

    iget-object v1, p0, Lme/kiip/internal/i/d;->l:Lme/kiip/internal/c/g;

    invoke-direct {v0, v1}, Lme/kiip/internal/n/b;-><init>(Lme/kiip/internal/c/g;)V

    invoke-static {p1, v0}, Lme/kiip/internal/b/l;->a(Landroid/content/Context;Lme/kiip/internal/b/f;)Lme/kiip/internal/a/m;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/i/d;->m:Lme/kiip/internal/a/m;

    .line 102
    invoke-static {v7}, Lme/kiip/internal/a/l;->a(Z)V

    .line 106
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "me.kiip.sdk/http"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lme/kiip/internal/i/d;->l:Lme/kiip/internal/c/g;

    new-instance v2, Lme/kiip/internal/c/e;

    const-wide/32 v3, 0x400000

    invoke-direct {v2, v0, v3, v4}, Lme/kiip/internal/c/e;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v2}, Lme/kiip/internal/c/g;->a(Ljava/net/ResponseCache;)Lme/kiip/internal/c/g;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/i/d;->l:Lme/kiip/internal/c/g;

    invoke-static {v0}, Lme/kiip/internal/o/a;->a(Lme/kiip/internal/c/g;)V

    .line 115
    new-instance v0, Lme/kiip/internal/i/a;

    const-string v2, "http://api.kiip.me/2.0"

    const-string v3, "2.1.0_1"

    iget-object v6, p0, Lme/kiip/internal/i/d;->m:Lme/kiip/internal/a/m;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lme/kiip/internal/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lme/kiip/internal/a/m;)V

    iput-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    .line 116
    new-instance v0, Lme/kiip/internal/l/d;

    iget-object v1, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-direct {v0, v1}, Lme/kiip/internal/l/d;-><init>(Lme/kiip/internal/i/a;)V

    iput-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    .line 119
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lme/kiip/internal/i/d;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    invoke-direct {p0, v7}, Lme/kiip/internal/i/d;->a(Z)V

    .line 122
    invoke-direct {p0}, Lme/kiip/internal/i/d;->a()V

    .line 123
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lme/kiip/internal/i/d;)Lme/kiip/sdk/Kiip$Callback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lme/kiip/sdk/Kiip;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lme/kiip/internal/i/d;

    invoke-direct {v0, p0, p1, p2}, Lme/kiip/internal/i/d;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    sget-object v1, Lme/kiip/internal/i/d;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    iget-object v1, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v1}, Lme/kiip/internal/l/d;->c()Lme/kiip/sdk/Kiip$OnContentListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "virtual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lme/kiip/internal/i/a;->a([Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 433
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v0, Lme/kiip/internal/i/d$7;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lme/kiip/internal/i/d$7;-><init>(Lme/kiip/internal/i/d;ILjava/lang/String;Lme/kiip/internal/a/n$a;)V

    .line 454
    iget-object v1, p0, Lme/kiip/internal/i/d;->m:Lme/kiip/internal/a/m;

    invoke-virtual {v1, v0}, Lme/kiip/internal/a/m;->a(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/l;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/sdk/Kiip$Callback;)V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lme/kiip/internal/i/d;->e:Z

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lme/kiip/sdk/KiipRuntimeException;

    const-string v1, "This application has been disabled"

    invoke-direct {v0, v1}, Lme/kiip/sdk/KiipRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0, v0}, Lme/kiip/sdk/Kiip$Callback;->onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V

    .line 316
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/i/d;->f:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/kiip/internal/i/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Lme/kiip/sdk/KiipRuntimeException;

    const-string v1, "This moment has been disabled"

    invoke-direct {v0, v1}, Lme/kiip/sdk/KiipRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0, v0}, Lme/kiip/sdk/Kiip$Callback;->onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    new-instance v1, Lme/kiip/internal/i/d$4;

    invoke-direct {v1, p0, p3}, Lme/kiip/internal/i/d$4;-><init>(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    invoke-virtual {v0, p1, p2, v1}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    goto :goto_0
.end method

.method static synthetic a(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lme/kiip/internal/i/d;->a(Lme/kiip/sdk/Kiip$Callback;)V

    return-void
.end method

.method private a(Lme/kiip/sdk/Kiip$Callback;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    new-instance v1, Lme/kiip/internal/i/d$3;

    invoke-direct {v1, p0, p1}, Lme/kiip/internal/i/d$3;-><init>(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    invoke-virtual {v0, v1}, Lme/kiip/internal/i/a;->a(Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    .line 269
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 126
    const-string v2, "moments"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_0

    const-string v2, "enabled"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    .line 128
    :goto_0
    if-eqz v4, :cond_3

    const-string v0, "blacklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 129
    :goto_1
    const-string v4, "urls"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 130
    const-string v5, "quiet_period"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    iget-object v5, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 133
    const-string v6, "moments.enabled"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v2, "moments.blacklist"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v0, "urls"

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v0, "quiet.period"

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v0, "last.saved.time.milliseconds"

    invoke-direct {p0}, Lme/kiip/internal/i/d;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void

    :cond_2
    move v2, v3

    .line 127
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 128
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 134
    goto :goto_2
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    const-string v2, "moments.enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lme/kiip/internal/i/d;->e:Z

    .line 146
    iget-object v1, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    const-string v2, "last.saved.time.milliseconds"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lme/kiip/internal/i/d;->p:Ljava/lang/Long;

    .line 150
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v1, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    const-string v3, "moments.blacklist"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    .line 152
    :goto_0
    if-ge v1, v3, :cond_0

    .line 153
    iget-object v4, p0, Lme/kiip/internal/i/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 160
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    const-string v3, "urls"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 164
    :goto_1
    if-ge v0, v2, :cond_1

    .line 165
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lme/kiip/internal/i/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    .line 173
    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 6

    .prologue
    .line 473
    invoke-direct {p0}, Lme/kiip/internal/i/d;->b()Ljava/lang/Long;

    move-result-object v0

    .line 474
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 476
    sget-object v2, Lme/kiip/internal/i/d;->p:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lme/kiip/internal/i/d;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lme/kiip/internal/i/d;->b(Lme/kiip/sdk/Kiip$Callback;)V

    return-void
.end method

.method private b(Lme/kiip/sdk/Kiip$Callback;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 383
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    const-string v1, "session_end"

    iget-wide v2, p0, Lme/kiip/internal/i/d;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 384
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    new-instance v1, Lme/kiip/internal/i/d$6;

    invoke-direct {v1, p0, p1}, Lme/kiip/internal/i/d$6;-><init>(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    invoke-virtual {v0, v1}, Lme/kiip/internal/i/a;->b(Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    .line 401
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0, v5}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method static synthetic c(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)Lme/kiip/sdk/Kiip$Callback;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    return-object p1
.end method


# virtual methods
.method a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    if-eqz p1, :cond_2

    .line 406
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 407
    const-string v1, "view"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 409
    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0, v0}, Lme/kiip/internal/i/d;->a(Lorg/json/JSONObject;)V

    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lme/kiip/internal/i/d;->a(Z)V

    .line 415
    :cond_0
    if-eqz v1, :cond_1

    .line 416
    iget-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v0, v1, p2}, Lme/kiip/internal/l/d;->a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-interface {p2, v2, v2, v2}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-interface {p2, v2, v2, v2}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public endSession(Lme/kiip/sdk/Kiip$Callback;)Z
    .locals 4
    .param p1, "callback"    # Lme/kiip/sdk/Kiip$Callback;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 363
    iget v1, p0, Lme/kiip/internal/i/d;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lme/kiip/internal/i/d;->n:I

    .line 364
    iget v1, p0, Lme/kiip/internal/i/d;->n:I

    if-lez v1, :cond_1

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-interface {p1, v2, v2}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    iput v0, p0, Lme/kiip/internal/i/d;->n:I

    .line 374
    iput-object p1, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    .line 375
    iget-object v0, p0, Lme/kiip/internal/i/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/i/d;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0}, Lme/kiip/internal/i/a;->g()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0}, Lme/kiip/internal/i/a;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0}, Lme/kiip/internal/i/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v0}, Lme/kiip/internal/l/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0}, Lme/kiip/internal/i/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveMoment(Ljava/lang/String;DLme/kiip/sdk/Kiip$Callback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "callback"    # Lme/kiip/sdk/Kiip$Callback;

    .prologue
    .line 278
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lme/kiip/internal/i/d;->a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/sdk/Kiip$Callback;)V

    .line 279
    return-void
.end method

.method public saveMoment(Ljava/lang/String;Lme/kiip/sdk/Kiip$Callback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lme/kiip/sdk/Kiip$Callback;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lme/kiip/internal/i/d;->a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/sdk/Kiip$Callback;)V

    .line 274
    return-void
.end method

.method public setAdapter(Lme/kiip/sdk/Kiip$KiipAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lme/kiip/sdk/Kiip$KiipAdapter;

    .prologue
    .line 224
    iget-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/d;->a(Lme/kiip/sdk/Kiip$KiipAdapter;)V

    .line 225
    return-void
.end method

.method public setBirthday(Ljava/util/Date;)V
    .locals 1
    .param p1, "birthday"    # Ljava/util/Date;

    .prologue
    .line 209
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/a;->a(Ljava/util/Date;)V

    .line 210
    return-void
.end method

.method public setCapabilities([Ljava/lang/String;)V
    .locals 1
    .param p1, "capabilities"    # [Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/a;->a([Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/d;->a(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/a;->c(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setOnContentListener(Lme/kiip/sdk/Kiip$OnContentListener;)V
    .locals 1
    .param p1, "listener"    # Lme/kiip/sdk/Kiip$OnContentListener;

    .prologue
    .line 229
    iget-object v0, p0, Lme/kiip/internal/i/d;->c:Lme/kiip/internal/l/d;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/d;->a(Lme/kiip/sdk/Kiip$OnContentListener;)V

    .line 230
    invoke-direct {p0}, Lme/kiip/internal/i/d;->a()V

    .line 231
    return-void
.end method

.method public setWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapper"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/i/a;->b(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public startSession(Lme/kiip/sdk/Kiip$Callback;)Z
    .locals 7
    .param p1, "callback"    # Lme/kiip/sdk/Kiip$Callback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 320
    iget v2, p0, Lme/kiip/internal/i/d;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lme/kiip/internal/i/d;->n:I

    .line 321
    iget v2, p0, Lme/kiip/internal/i/d;->n:I

    if-le v2, v1, :cond_1

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1, v6, v6}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v2, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    invoke-interface {v2, v6, v6}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    .line 331
    iput-object v6, p0, Lme/kiip/internal/i/d;->h:Lme/kiip/sdk/Kiip$Callback;

    .line 334
    :cond_2
    iget-object v2, p0, Lme/kiip/internal/i/d;->a:Landroid/os/Handler;

    iget-object v3, p0, Lme/kiip/internal/i/d;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget-object v2, p0, Lme/kiip/internal/i/d;->a:Landroid/os/Handler;

    iget-object v3, p0, Lme/kiip/internal/i/d;->i:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    iget-object v2, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-virtual {v2}, Lme/kiip/internal/i/a;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 339
    invoke-interface {p1, v6, v6}, Lme/kiip/sdk/Kiip$Callback;->onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    invoke-static {}, Lme/kiip/internal/i/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lme/kiip/internal/i/d;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lme/kiip/internal/i/d;->o:J

    .line 348
    iget-object v2, p0, Lme/kiip/internal/i/d;->b:Lme/kiip/internal/i/a;

    const-string v3, "session_start"

    iget-wide v4, p0, Lme/kiip/internal/i/d;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6, v6}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 349
    iget-object v2, p0, Lme/kiip/internal/i/d;->k:Landroid/content/SharedPreferences;

    const-string v3, "quiet.period"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lme/kiip/internal/i/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lme/kiip/internal/i/d$5;

    invoke-direct {v2, p0, p1}, Lme/kiip/internal/i/d$5;-><init>(Lme/kiip/internal/i/d;Lme/kiip/sdk/Kiip$Callback;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    move v0, v1

    .line 358
    goto :goto_0
.end method
