.class final Lme/kiip/internal/l/c;
.super Lme/kiip/sdk/Poptart;
.source "KiipSDK"


# instance fields
.field private a:Lme/kiip/internal/l/d;

.field private b:Ljava/lang/String;

.field private c:Lme/kiip/internal/l/b;

.field private d:Lme/kiip/internal/l/a;

.field private e:Landroid/content/DialogInterface$OnShowListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>(Lme/kiip/internal/l/d;Ljava/lang/String;Lme/kiip/internal/l/b;Lme/kiip/internal/l/a;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lme/kiip/sdk/Poptart;-><init>()V

    .line 60
    iput-object p1, p0, Lme/kiip/internal/l/c;->a:Lme/kiip/internal/l/d;

    .line 61
    iput-object p2, p0, Lme/kiip/internal/l/c;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    .line 63
    iput-object p4, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    .line 64
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/c;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lme/kiip/internal/l/c;->h:J

    return-wide v0
.end method

.method static synthetic a(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;)Lme/kiip/internal/l/a;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    return-object p1
.end method

.method static synthetic a(Lme/kiip/internal/l/c;Lme/kiip/internal/l/b;)Lme/kiip/internal/l/b;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    return-object p1
.end method

.method static a(Lme/kiip/internal/l/d;Lorg/json/JSONObject;)Lme/kiip/internal/l/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    .line 25
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    const-string v2, "modal"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    :try_start_0
    invoke-static {v0}, Lme/kiip/internal/l/b;->a(Lorg/json/JSONObject;)Lme/kiip/internal/l/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    if-eqz v2, :cond_0

    .line 37
    invoke-static {v2}, Lme/kiip/internal/l/a;->a(Lorg/json/JSONObject;)Lme/kiip/internal/l/a;

    move-result-object v1

    .line 40
    :cond_0
    new-instance v2, Lme/kiip/internal/l/c;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lme/kiip/internal/l/c;-><init>(Lme/kiip/internal/l/d;Ljava/lang/String;Lme/kiip/internal/l/b;Lme/kiip/internal/l/a;)V

    return-object v2

    .line 32
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    .line 169
    if-eqz v0, :cond_1

    .line 171
    iget-wide v1, p0, Lme/kiip/internal/l/c;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lme/kiip/internal/l/c;->i:J

    .line 173
    const-string v1, "modal_show"

    iget-wide v2, p0, Lme/kiip/internal/l/c;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 177
    iget-object v3, p0, Lme/kiip/internal/l/c;->a:Lme/kiip/internal/l/d;

    invoke-virtual {v3}, Lme/kiip/internal/l/d;->a()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v0, Lme/kiip/internal/l/a;->e:Ljava/util/HashMap;

    .line 178
    new-instance v3, Lme/kiip/internal/l/c$2;

    invoke-direct {v3, p0, v1, v2}, Lme/kiip/internal/l/c$2;-><init>(Lme/kiip/internal/l/c;J)V

    new-instance v4, Lme/kiip/internal/l/c$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lme/kiip/internal/l/c$3;-><init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;J)V

    new-instance v5, Lme/kiip/internal/l/c$4;

    invoke-direct {v5, p0, v0}, Lme/kiip/internal/l/c$4;-><init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/a;)V

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lme/kiip/internal/l/a;->a(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/l/c;->d()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lme/kiip/internal/l/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 272
    iget-object v0, p0, Lme/kiip/internal/l/c;->a:Lme/kiip/internal/l/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lme/kiip/internal/l/d;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/c;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/l/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lme/kiip/internal/l/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/c;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p7}, Lme/kiip/internal/l/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lme/kiip/internal/l/c;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lme/kiip/internal/l/c;->d()V

    return-void
.end method

.method static synthetic c(Lme/kiip/internal/l/c;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lme/kiip/internal/l/c;->i:J

    return-wide v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    .line 237
    iget-object v0, p0, Lme/kiip/internal/l/c;->f:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lme/kiip/internal/l/c;->f:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lme/kiip/internal/l/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    .line 260
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/b;->a(Z)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/a;->a(Z)V

    goto :goto_0
.end method

.method public b()Lme/kiip/internal/l/b;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    return-object v0
.end method

.method public c()Lme/kiip/internal/l/a;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lme/kiip/internal/l/c;->d:Lme/kiip/internal/l/a;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/c;->a(Z)V

    .line 232
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/c;->a(Z)V

    .line 245
    return-void
.end method

.method public synthetic getModal()Lme/kiip/sdk/Modal;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lme/kiip/internal/l/c;->c()Lme/kiip/internal/l/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getNotification()Lme/kiip/sdk/Notification;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lme/kiip/internal/l/c;->b()Lme/kiip/internal/l/b;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    return v0
.end method

.method public setNotification(Lme/kiip/sdk/Notification;)V
    .locals 2
    .param p1, "notification"    # Lme/kiip/sdk/Notification;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You may only set the notification to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    check-cast p1, Lme/kiip/internal/l/b;

    .end local p1    # "notification":Lme/kiip/sdk/Notification;
    iput-object p1, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    .line 92
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 110
    iput-object p1, p0, Lme/kiip/internal/l/c;->f:Landroid/content/DialogInterface$OnDismissListener;

    .line 111
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 105
    iput-object p1, p0, Lme/kiip/internal/l/c;->e:Landroid/content/DialogInterface$OnShowListener;

    .line 106
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lme/kiip/internal/l/c;->show(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method

.method public show(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animate"    # Z

    .prologue
    .line 122
    iget-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/l/c;->g:Z

    .line 127
    iget-object v0, p0, Lme/kiip/internal/l/c;->e:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lme/kiip/internal/l/c;->e:Landroid/content/DialogInterface$OnShowListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/c;->c:Lme/kiip/internal/l/b;

    .line 133
    if-eqz v0, :cond_4

    .line 135
    iget-wide v1, p0, Lme/kiip/internal/l/c;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lme/kiip/internal/l/c;->h:J

    .line 137
    const-string v1, "notification_show"

    iget-wide v2, p0, Lme/kiip/internal/l/c;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lme/kiip/internal/l/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lme/kiip/internal/l/c;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Lme/kiip/internal/l/b;->a()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 141
    invoke-virtual {v0, p1}, Lme/kiip/internal/l/b;->a(Landroid/content/Context;)V

    .line 142
    iget-object v1, p0, Lme/kiip/internal/l/c;->a:Lme/kiip/internal/l/d;

    invoke-virtual {v1, p1, p0}, Lme/kiip/internal/l/d;->a(Landroid/content/Context;Lme/kiip/internal/l/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/b;->setContentView(Landroid/view/View;)V

    .line 144
    :cond_3
    new-instance v1, Lme/kiip/internal/l/c$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lme/kiip/internal/l/c$1;-><init>(Lme/kiip/internal/l/c;Lme/kiip/internal/l/b;Landroid/content/Context;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lme/kiip/internal/l/b;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :cond_4
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/l/c;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method
