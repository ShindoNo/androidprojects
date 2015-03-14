.class public Lme/kiip/internal/i/a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/i/a$a;
    }
.end annotation


# static fields
.field private static final a:Lme/kiip/internal/j/a;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:I

.field private e:Lme/kiip/internal/a/m;

.field private final f:Landroid/net/ConnectivityManager;

.field private final g:Landroid/location/LocationManager;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;

.field private final m:Lorg/json/JSONObject;

.field private final n:Lorg/json/JSONObject;

.field private final o:Lorg/json/JSONObject;

.field private final p:Lorg/json/JSONObject;

.field private final q:Lorg/json/JSONObject;

.field private r:Lorg/json/JSONObject;

.field private s:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lme/kiip/internal/j/a;

    invoke-direct {v0}, Lme/kiip/internal/j/a;-><init>()V

    sput-object v0, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lme/kiip/internal/i/a;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lme/kiip/internal/a/m;)V
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lme/kiip/internal/i/a$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/i/a$1;-><init>(Lme/kiip/internal/i/a;)V

    iput-object v0, p0, Lme/kiip/internal/i/a;->c:Ljava/lang/Runnable;

    .line 65
    const/16 v0, 0x7530

    iput v0, p0, Lme/kiip/internal/i/a;->d:I

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->m:Lorg/json/JSONObject;

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->p:Lorg/json/JSONObject;

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    .line 88
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    .line 95
    iput-object p2, p0, Lme/kiip/internal/i/a;->h:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lme/kiip/internal/i/a;->i:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lme/kiip/internal/i/a;->j:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lme/kiip/internal/i/a;->e:Lme/kiip/internal/a/m;

    .line 99
    iput-object p1, p0, Lme/kiip/internal/i/a;->l:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->b:Landroid/os/Handler;

    .line 103
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lme/kiip/internal/i/a;->f:Landroid/net/ConnectivityManager;

    .line 104
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lme/kiip/internal/i/a;->g:Landroid/location/LocationManager;

    .line 107
    iget-object v0, p0, Lme/kiip/internal/i/a;->m:Lorg/json/JSONObject;

    .line 109
    :try_start_0
    const-string v1, "app_key"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "versionCode"

    invoke-static {p1}, Lme/kiip/internal/k/b;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v1, "versionName"

    invoke-static {p1}, Lme/kiip/internal/k/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lme/kiip/internal/k/b;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lme/kiip/internal/k/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    .line 122
    :try_start_1
    const-string v1, "name"

    const-string v2, "Kiip Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "version"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    :goto_1
    iget-object v0, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    .line 130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    invoke-static {p1, v1}, Lme/kiip/internal/k/e;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 132
    invoke-static {p1}, Lme/kiip/internal/k/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lme/kiip/internal/i/a;->u:Ljava/lang/String;

    .line 134
    :try_start_2
    const-string v2, "kiip_uuid"

    sget-object v3, Lme/kiip/internal/i/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v2, "os"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "resolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "density"

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 143
    const-string v1, "kiipsake"

    const-string v2, "me.kiip.kiipsake"

    invoke-static {p1, v2}, Lme/kiip/internal/k/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :goto_2
    iget-object v1, p0, Lme/kiip/internal/i/a;->p:Lorg/json/JSONObject;

    .line 150
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 152
    :try_start_3
    const-string v2, "carrier"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    :goto_3
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_3

    .line 144
    :catch_1
    move-exception v0

    goto :goto_2

    .line 124
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 115
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
    .locals 7

    .prologue
    .line 332
    iget-object v0, p0, Lme/kiip/internal/i/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/i/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/kiip/internal/i/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 337
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 340
    iget-object v0, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 341
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 342
    iget-object v5, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    .line 349
    invoke-direct {p0}, Lme/kiip/internal/i/a;->i()V

    .line 350
    invoke-direct {p0}, Lme/kiip/internal/i/a;->j()V

    .line 353
    :try_start_0
    const-string v0, "session_id"

    iget-object v4, p0, Lme/kiip/internal/i/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v0, "date"

    sget-object v4, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {v4, v1}, Lme/kiip/internal/j/a;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v0, "source"

    const-string v1, "application"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v0, "app"

    iget-object v1, p0, Lme/kiip/internal/i/a;->m:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v0, "sdk"

    iget-object v1, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v0, "location"

    iget-object v1, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    iget-object v0, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    const-string v1, "advertising_identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    const-string v1, "advertising_identifier"

    invoke-virtual {p0}, Lme/kiip/internal/i/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    const-string v4, "id"

    sget-object v0, Lme/kiip/internal/i/a;->t:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lme/kiip/internal/i/a;->u:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    :cond_2
    const-string v0, "device"

    iget-object v1, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v0, "connection"

    iget-object v1, p0, Lme/kiip/internal/i/a;->p:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v0, "user"

    iget-object v1, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v0, "events"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v0, "moment"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_2
    new-instance v0, Lme/kiip/internal/n/a;

    const/4 v1, 0x1

    new-instance v4, Lme/kiip/internal/i/a$2;

    invoke-direct {v4, p0, v2, p4}, Lme/kiip/internal/i/a$2;-><init>(Lme/kiip/internal/i/a;Ljava/lang/String;Lme/kiip/internal/i/a$a;)V

    new-instance v5, Lme/kiip/internal/i/a$3;

    invoke-direct {v5, p0, v2, v6, p4}, Lme/kiip/internal/i/a$3;-><init>(Lme/kiip/internal/i/a;Ljava/lang/String;Lorg/json/JSONArray;Lme/kiip/internal/i/a$a;)V

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/n/a;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/a/n$b;Lme/kiip/internal/a/n$a;)V

    .line 408
    iget-object v1, p0, Lme/kiip/internal/i/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lme/kiip/internal/i/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/n/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lme/kiip/internal/i/a;->e:Lme/kiip/internal/a/m;

    invoke-virtual {v1, v0}, Lme/kiip/internal/a/m;->a(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/l;

    .line 422
    return-object v0

    .line 364
    :cond_3
    :try_start_1
    sget-object v0, Lme/kiip/internal/i/a;->t:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lme/kiip/internal/i/a;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    .line 268
    :cond_0
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 269
    iget-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    const-string v1, "lng"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 270
    iget-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 271
    iget-object v0, p0, Lme/kiip/internal/i/a;->r:Lorg/json/JSONObject;

    const-string v1, "time"

    sget-object v2, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/kiip/internal/j/a;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->p:Lorg/json/JSONObject;

    .line 428
    const-string v1, "type"

    iget-object v2, p0, Lme/kiip/internal/i/a;->f:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lme/kiip/internal/k/c;->a(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->g:Landroid/location/LocationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v0, v1}, Lme/kiip/internal/k/f;->a(Landroid/location/LocationManager;F)Landroid/location/Location;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0, v0}, Lme/kiip/internal/i/a;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Double;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    const-string v1, "POST"

    const-string v2, "/moment/save"

    invoke-direct {p0, v1, v2, v0, p3}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    move-result-object v0

    return-object v0

    .line 290
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
    .locals 3

    .prologue
    .line 280
    const-string v0, "POST"

    const-string v1, "/app/cache"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lme/kiip/internal/i/a;->k:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 301
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 303
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v3, "start"

    if-eqz p2, :cond_2

    sget-object v1, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {v1, p2}, Lme/kiip/internal/j/a;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v1, "end"

    if-eqz p3, :cond_0

    sget-object v0, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {v0, p3}, Lme/kiip/internal/j/a;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    if-eqz p4, :cond_1

    .line 308
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 316
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/i/a;->s:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 320
    iget-object v0, p0, Lme/kiip/internal/i/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/i/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-object v0, p0, Lme/kiip/internal/i/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/i/a;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void

    :cond_2
    move-object v1, v0

    .line 304
    goto :goto_0
.end method

.method public a(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v2, "birthday"

    if-eqz p1, :cond_0

    sget-object v0, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/j/a;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 188
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 189
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;
    .locals 3

    .prologue
    .line 327
    const-string v1, "POST"

    const-string v2, "/moment/save"

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v1, v2, v0, p1}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/i/a$a;)Lme/kiip/internal/a/l;

    move-result-object v0

    return-object v0
.end method

.method public b()Lme/kiip/internal/a/m;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lme/kiip/internal/i/a;->e:Lme/kiip/internal/a/m;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    const-string v1, "wrapper"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lme/kiip/internal/i/a;->o:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lme/kiip/internal/i/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lme/kiip/internal/i/a;->n:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 209
    :cond_1
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/util/Date;
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v2, "birthday"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/i/a;->q:Lorg/json/JSONObject;

    const-string v2, "birthday"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    sget-object v2, Lme/kiip/internal/i/a;->a:Lme/kiip/internal/j/a;

    invoke-virtual {v2, v1}, Lme/kiip/internal/j/a;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/i/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lme/kiip/internal/k/a;->a(Landroid/content/Context;)Lme/kiip/internal/k/a$a;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lme/kiip/internal/k/a$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v1}, Lme/kiip/internal/k/a$a;->b()Z

    move-result v1

    .line 450
    if-nez v1, :cond_0

    .line 451
    sput-object v0, Lme/kiip/internal/i/a;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-object v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string v1, "APIClient"

    const-string v2, "Unexpected exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
