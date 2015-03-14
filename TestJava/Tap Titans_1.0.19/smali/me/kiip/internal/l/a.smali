.class public Lme/kiip/internal/l/a;
.super Lme/kiip/sdk/Modal;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/l/a$a;,
        Lme/kiip/internal/l/a$b;,
        Lme/kiip/internal/l/a$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/util/HashMap;
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

.field f:Z

.field g:Z

.field h:Z

.field i:Lme/kiip/internal/i/e;

.field private j:Landroid/content/Context;

.field private k:Lme/kiip/internal/l/a$c;

.field private l:Landroid/app/Dialog;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;

.field private p:Lme/kiip/sdk/Modal$OnShowListener;

.field private q:Lme/kiip/sdk/Modal$OnDismissListener;

.field private r:Lme/kiip/sdk/Kiip$OnContentListener;

.field private s:Lme/kiip/sdk/Modal$VideoListener;

.field private t:Z

.field private u:Lme/kiip/internal/l/a$a$b;

.field private v:Lme/kiip/internal/l/a$a$a;

.field private w:Lme/kiip/internal/l/a$a$c;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lme/kiip/sdk/Modal;-><init>()V

    .line 166
    new-instance v0, Lme/kiip/internal/l/a$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$1;-><init>(Lme/kiip/internal/l/a;)V

    iput-object v0, p0, Lme/kiip/internal/l/a;->u:Lme/kiip/internal/l/a$a$b;

    .line 173
    new-instance v0, Lme/kiip/internal/l/a$2;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$2;-><init>(Lme/kiip/internal/l/a;)V

    iput-object v0, p0, Lme/kiip/internal/l/a;->v:Lme/kiip/internal/l/a$a$a;

    .line 197
    new-instance v0, Lme/kiip/internal/l/a$3;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$3;-><init>(Lme/kiip/internal/l/a;)V

    iput-object v0, p0, Lme/kiip/internal/l/a;->w:Lme/kiip/internal/l/a$a$c;

    .line 110
    iput-object p1, p0, Lme/kiip/internal/l/a;->a:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lme/kiip/internal/l/a;->b:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lme/kiip/internal/l/a;->c:Ljava/lang/String;

    .line 113
    iput p4, p0, Lme/kiip/internal/l/a;->d:I

    .line 114
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lme/kiip/internal/l/a$c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    new-instance v0, Lme/kiip/internal/l/a$c;

    invoke-direct {v0, p1}, Lme/kiip/internal/l/a$c;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->setCanceledOnTouchOutside(Z)V

    .line 255
    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->setCancelable(Z)V

    .line 256
    invoke-virtual {v0, p0}, Lme/kiip/internal/l/a$c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 257
    invoke-virtual {v0, p0}, Lme/kiip/internal/l/a$c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 259
    iget-object v1, p0, Lme/kiip/internal/l/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lme/kiip/internal/l/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->b(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lme/kiip/internal/l/a;->v:Lme/kiip/internal/l/a$a$a;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$a$a;)V

    .line 262
    iget-object v1, p0, Lme/kiip/internal/l/a;->w:Lme/kiip/internal/l/a$a$c;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$a$c;)V

    .line 263
    iget-object v1, p0, Lme/kiip/internal/l/a;->u:Lme/kiip/internal/l/a$a$b;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/internal/l/a$a$b;)V

    .line 264
    iget-object v1, p0, Lme/kiip/internal/l/a;->r:Lme/kiip/sdk/Kiip$OnContentListener;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/sdk/Kiip$OnContentListener;)V

    .line 265
    iget-object v1, p0, Lme/kiip/internal/l/a;->s:Lme/kiip/sdk/Modal$VideoListener;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->a(Lme/kiip/sdk/Modal$VideoListener;)V

    .line 267
    return-object v0
.end method

.method static a(Lorg/json/JSONObject;)Lme/kiip/internal/l/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Lme/kiip/internal/l/a;

    const-string v1, "title"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body_url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lme/kiip/internal/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 210
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->dismiss()V

    .line 213
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lme/kiip/internal/l/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Kiip Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    .line 221
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/a;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 224
    :cond_2
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lme/kiip/internal/l/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lme/kiip/internal/l/a;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lme/kiip/internal/l/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lme/kiip/internal/l/a;->n:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lme/kiip/internal/l/a;->t:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/l/a;->t:Z

    .line 149
    iput-object p1, p0, Lme/kiip/internal/l/a;->j:Landroid/content/Context;

    .line 150
    invoke-direct {p0, p1}, Lme/kiip/internal/l/a;->a(Landroid/content/Context;)Lme/kiip/internal/l/a$c;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    .line 151
    iput-object p3, p0, Lme/kiip/internal/l/a;->m:Ljava/lang/Runnable;

    .line 152
    iput-object p4, p0, Lme/kiip/internal/l/a;->n:Ljava/lang/Runnable;

    .line 153
    iput-object p5, p0, Lme/kiip/internal/l/a;->o:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lme/kiip/internal/l/a;->p:Lme/kiip/sdk/Modal$OnShowListener;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lme/kiip/internal/l/a;->p:Lme/kiip/sdk/Modal$OnShowListener;

    invoke-interface {v0, p0}, Lme/kiip/sdk/Modal$OnShowListener;->onShow(Lme/kiip/sdk/Modal;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    iget-object v1, p0, Lme/kiip/internal/l/a;->e:Ljava/util/HashMap;

    iput-object v1, v0, Lme/kiip/internal/l/a$c;->a:Ljava/util/HashMap;

    .line 161
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    iget-object v1, p0, Lme/kiip/internal/l/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->c(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->show()V

    goto :goto_0
.end method

.method a(Lme/kiip/sdk/Kiip$OnContentListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lme/kiip/internal/l/a;->r:Lme/kiip/sdk/Kiip$OnContentListener;

    .line 135
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lme/kiip/internal/l/a;->t:Z

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->dismiss()V

    .line 236
    :cond_2
    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lme/kiip/internal/l/a;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/a;->t:Z

    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lme/kiip/internal/l/a;->q:Lme/kiip/sdk/Modal$OnDismissListener;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lme/kiip/internal/l/a;->q:Lme/kiip/sdk/Modal$OnDismissListener;

    invoke-interface {v0, p0}, Lme/kiip/sdk/Modal$OnDismissListener;->onDismiss(Lme/kiip/sdk/Modal;)V

    .line 247
    :cond_4
    iget-object v0, p0, Lme/kiip/internal/l/a;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lme/kiip/internal/l/a;->t:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 281
    iget-object v0, p0, Lme/kiip/internal/l/a;->k:Lme/kiip/internal/l/a$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/l/a;->f:Z

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a;->a(Z)V

    .line 285
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a;->a(Z)V

    .line 275
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a;->a(Z)V

    .line 290
    return-void
.end method

.method public setOnDismissListener(Lme/kiip/sdk/Modal$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Modal$OnDismissListener;

    .prologue
    .line 130
    iput-object p1, p0, Lme/kiip/internal/l/a;->q:Lme/kiip/sdk/Modal$OnDismissListener;

    .line 131
    return-void
.end method

.method public setOnShowListener(Lme/kiip/sdk/Modal$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Modal$OnShowListener;

    .prologue
    .line 125
    iput-object p1, p0, Lme/kiip/internal/l/a;->p:Lme/kiip/sdk/Modal$OnShowListener;

    .line 126
    return-void
.end method

.method public setVideoListener(Lme/kiip/sdk/Modal$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Modal$VideoListener;

    .prologue
    .line 138
    iput-object p1, p0, Lme/kiip/internal/l/a;->s:Lme/kiip/sdk/Modal$VideoListener;

    .line 139
    return-void
.end method
