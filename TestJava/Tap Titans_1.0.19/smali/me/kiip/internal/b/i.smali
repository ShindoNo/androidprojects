.class public Lme/kiip/internal/b/i;
.super Lme/kiip/internal/b/j;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/kiip/internal/b/j",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lme/kiip/internal/a/n$b;Lme/kiip/internal/a/n$a;)V
    .locals 6
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
    .line 47
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/b/j;-><init>(ILjava/lang/String;Ljava/lang/String;Lme/kiip/internal/a/n$b;Lme/kiip/internal/a/n$a;)V

    .line 49
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
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
    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lme/kiip/internal/a/i;->b:[B

    iget-object v2, p1, Lme/kiip/internal/a/i;->c:Ljava/util/Map;

    invoke-static {v2}, Lme/kiip/internal/b/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lme/kiip/internal/b/e;->a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/b$a;

    move-result-object v0

    invoke-static {v1, v0}, Lme/kiip/internal/a/n;->a(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)Lme/kiip/internal/a/n;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lme/kiip/internal/a/k;

    invoke-direct {v1, v0}, Lme/kiip/internal/a/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lme/kiip/internal/a/n;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Lme/kiip/internal/a/k;

    invoke-direct {v1, v0}, Lme/kiip/internal/a/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lme/kiip/internal/a/n;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;

    move-result-object v0

    goto :goto_0
.end method
