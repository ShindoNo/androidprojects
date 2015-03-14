.class public Lme/kiip/internal/l/d;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/l/d$b;,
        Lme/kiip/internal/l/d$a;
    }
.end annotation


# instance fields
.field private final a:Lme/kiip/internal/i/a;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lme/kiip/sdk/Kiip$KiipAdapter;

.field private d:Lme/kiip/sdk/Kiip$OnContentListener;


# direct methods
.method public constructor <init>(Lme/kiip/internal/i/a;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lme/kiip/internal/l/d;->a:Lme/kiip/internal/i/a;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/l/d;->b:Ljava/util/HashMap;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lme/kiip/internal/l/c;)Landroid/view/View;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lme/kiip/internal/l/d;->c:Lme/kiip/sdk/Kiip$KiipAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/l/d;->c:Lme/kiip/sdk/Kiip$KiipAdapter;

    invoke-virtual {p2}, Lme/kiip/internal/l/c;->b()Lme/kiip/internal/l/b;

    move-result-object v1

    invoke-virtual {v1}, Lme/kiip/internal/l/b;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lme/kiip/sdk/Kiip$KiipAdapter;->getNotificationView(Landroid/content/Context;Landroid/view/ViewGroup;Lme/kiip/sdk/Poptart;)Landroid/view/View;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lme/kiip/internal/l/d$b;

    invoke-direct {v0, p1, p2}, Lme/kiip/internal/l/d$b;-><init>(Landroid/content/Context;Lme/kiip/sdk/Poptart;)V

    goto :goto_0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lme/kiip/internal/l/d;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lme/kiip/internal/l/d;->b:Ljava/util/HashMap;

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    if-eqz p4, :cond_0

    .line 133
    const-string v1, "view_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    if-eqz p7, :cond_1

    .line 137
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "error_description"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "error_failing_url"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/l/d;->a:Lme/kiip/internal/i/a;

    invoke-virtual {v1, p1, p2, p3, v0}, Lme/kiip/internal/i/a;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public a(Lme/kiip/sdk/Kiip$KiipAdapter;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lme/kiip/internal/l/d;->c:Lme/kiip/sdk/Kiip$KiipAdapter;

    .line 74
    return-void
.end method

.method public a(Lme/kiip/sdk/Kiip$OnContentListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lme/kiip/internal/l/d;->d:Lme/kiip/sdk/Kiip$OnContentListener;

    .line 82
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lme/kiip/internal/l/d$a;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 90
    :try_start_0
    invoke-static {p0, p1}, Lme/kiip/internal/l/c;->a(Lme/kiip/internal/l/d;Lorg/json/JSONObject;)Lme/kiip/internal/l/c;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lme/kiip/internal/l/c;->c()Lme/kiip/internal/l/a;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lme/kiip/internal/l/d;->d:Lme/kiip/sdk/Kiip$OnContentListener;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a;->a(Lme/kiip/sdk/Kiip$OnContentListener;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    invoke-virtual {v4}, Lme/kiip/internal/l/c;->b()Lme/kiip/internal/l/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-interface {p2, p0, v4, v0}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    .line 119
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/d;->a:Lme/kiip/internal/i/a;

    invoke-virtual {v0}, Lme/kiip/internal/i/a;->b()Lme/kiip/internal/a/m;

    move-result-object v8

    new-instance v9, Lme/kiip/internal/b/h;

    invoke-virtual {v4}, Lme/kiip/internal/l/c;->b()Lme/kiip/internal/l/b;

    move-result-object v0

    iget-object v10, v0, Lme/kiip/internal/l/b;->c:Ljava/lang/String;

    new-instance v0, Lme/kiip/internal/l/d$1;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/l/d$1;-><init>(Lme/kiip/internal/l/d;JLme/kiip/internal/l/c;Lme/kiip/internal/l/d$a;)V

    const/4 v11, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lme/kiip/internal/l/d$2;

    invoke-direct {v7, p0, p2, v4}, Lme/kiip/internal/l/d$2;-><init>(Lme/kiip/internal/l/d;Lme/kiip/internal/l/d$a;Lme/kiip/internal/l/c;)V

    move-object v1, v9

    move-object v2, v10

    move-object v3, v0

    move v4, v11

    invoke-direct/range {v1 .. v7}, Lme/kiip/internal/b/h;-><init>(Ljava/lang/String;Lme/kiip/internal/a/n$b;IILandroid/graphics/Bitmap$Config;Lme/kiip/internal/a/n$a;)V

    invoke-virtual {v8, v9}, Lme/kiip/internal/a/m;->a(Lme/kiip/internal/a/l;)Lme/kiip/internal/a/l;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    invoke-interface {p2, p0, v12, v0}, Lme/kiip/internal/l/d$a;->a(Lme/kiip/internal/l/d;Lme/kiip/sdk/Poptart;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lme/kiip/internal/l/d;->b:Ljava/util/HashMap;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Lme/kiip/sdk/Kiip$OnContentListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lme/kiip/internal/l/d;->d:Lme/kiip/sdk/Kiip$OnContentListener;

    return-object v0
.end method
