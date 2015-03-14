.class public Lme/kiip/internal/l/b;
.super Lme/kiip/sdk/Notification;
.source "KiipSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/l/b$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Landroid/graphics/Bitmap;

.field g:Z

.field private i:Z

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/view/WindowManager$LayoutParams;

.field private m:Landroid/view/View;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:Lme/kiip/sdk/Notification$OnShowListener;

.field private t:Lme/kiip/sdk/Notification$OnClickListener;

.field private u:Lme/kiip/sdk/Notification$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 49
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x2

    const/16 v6, 0x28

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    sput-object v0, Lme/kiip/internal/l/b;->h:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lme/kiip/sdk/Notification;-><init>()V

    .line 81
    new-instance v0, Lme/kiip/internal/l/b$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/b$1;-><init>(Lme/kiip/internal/l/b;)V

    iput-object v0, p0, Lme/kiip/internal/l/b;->q:Ljava/lang/Runnable;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/b;->g:Z

    .line 96
    iput-object p1, p0, Lme/kiip/internal/l/b;->a:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lme/kiip/internal/l/b;->b:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lme/kiip/internal/l/b;->c:Ljava/lang/String;

    .line 99
    iput p4, p0, Lme/kiip/internal/l/b;->d:I

    .line 100
    iput p5, p0, Lme/kiip/internal/l/b;->e:I

    .line 103
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lme/kiip/internal/l/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 34
    const-string v0, "position"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    new-instance v0, Lme/kiip/internal/l/b;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon_url"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "timeout"

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/16 v4, 0x50

    goto :goto_0
.end method

.method static synthetic a(Lme/kiip/internal/l/b;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lme/kiip/internal/l/b;->c()V

    return-void
.end method

.method static synthetic b(Lme/kiip/internal/l/b;)Lme/kiip/sdk/Notification$OnDismissListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lme/kiip/internal/l/b;->u:Lme/kiip/sdk/Notification$OnDismissListener;

    return-object v0
.end method

.method static synthetic c(Lme/kiip/internal/l/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lme/kiip/internal/l/b;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lme/kiip/internal/l/b;->j:Landroid/view/WindowManager;

    iget-object v1, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/b;->i:Z

    .line 281
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lme/kiip/internal/l/b$a;

    invoke-direct {v0, p1}, Lme/kiip/internal/l/b$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    .line 107
    iget-object v0, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method a(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 18

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lme/kiip/internal/l/b;->i:Z

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lme/kiip/internal/l/b;->i:Z

    .line 198
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kiip/internal/l/b;->p:Landroid/os/Handler;

    .line 199
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kiip/internal/l/b;->j:Landroid/view/WindowManager;

    .line 200
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kiip/internal/l/b;->r:Ljava/lang/Runnable;

    .line 203
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lme/kiip/internal/l/b;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "[Kiip] Notification"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lme/kiip/internal/l/b;->d:I

    and-int/lit8 v3, v3, 0x30

    move-object/from16 v0, p0

    iget v4, v0, Lme/kiip/internal/l/b;->d:I

    and-int/lit8 v4, v4, 0x50

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 215
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lme/kiip/internal/l/b;->d:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    .line 216
    :goto_1
    if-eqz v2, :cond_6

    const/high16 v8, -0x40800000

    .line 217
    :goto_2
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kiip/internal/l/b;->n:Landroid/view/animation/Animation;

    .line 220
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lme/kiip/internal/l/b;->o:Landroid/view/animation/Animation;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->n:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->o:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->s:Lme/kiip/sdk/Notification$OnShowListener;

    if-eqz v2, :cond_3

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->s:Lme/kiip/sdk/Notification$OnShowListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lme/kiip/sdk/Notification$OnShowListener;->onShow(Lme/kiip/sdk/Notification;)V

    .line 231
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->j:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lme/kiip/internal/l/b;->l:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    if-eqz p2, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/l/b;->n:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lme/kiip/internal/l/b;->e:I

    if-lez v2, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kiip/internal/l/b;->p:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kiip/internal/l/b;->q:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v4, v0, Lme/kiip/internal/l/b;->e:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 215
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 216
    :cond_6
    const/high16 v8, 0x3f800000

    goto/16 :goto_2
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 246
    iget-boolean v0, p0, Lme/kiip/internal/l/b;->i:Z

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/b;->p:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/b;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    if-eqz p1, :cond_1

    .line 254
    invoke-direct {p0}, Lme/kiip/internal/l/b;->c()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    iget-object v1, p0, Lme/kiip/internal/l/b;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    new-instance v1, Lme/kiip/internal/l/b$2;

    invoke-direct {v1, p0}, Lme/kiip/internal/l/b$2;-><init>(Lme/kiip/internal/l/b;)V

    iget-object v2, p0, Lme/kiip/internal/l/b;->o:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method b()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lme/kiip/internal/l/b;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lme/kiip/internal/l/b;->d:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lme/kiip/internal/l/b;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lme/kiip/internal/l/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lme/kiip/internal/l/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lme/kiip/internal/l/b;->i:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/l/b;->g:Z

    .line 289
    iget-object v0, p0, Lme/kiip/internal/l/b;->t:Lme/kiip/sdk/Notification$OnClickListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lme/kiip/internal/l/b;->t:Lme/kiip/sdk/Notification$OnClickListener;

    invoke-interface {v0, p0}, Lme/kiip/sdk/Notification$OnClickListener;->onClick(Lme/kiip/sdk/Notification;)V

    .line 293
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/b;->a(Z)V

    .line 294
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 179
    iput-object p1, p0, Lme/kiip/internal/l/b;->m:Landroid/view/View;

    .line 180
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 154
    iput p1, p0, Lme/kiip/internal/l/b;->d:I

    .line 155
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    iput-object p1, p0, Lme/kiip/internal/l/b;->f:Landroid/graphics/Bitmap;

    .line 145
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lme/kiip/internal/l/b;->b:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setOnClickListener(Lme/kiip/sdk/Notification$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Notification$OnClickListener;

    .prologue
    .line 164
    iput-object p1, p0, Lme/kiip/internal/l/b;->t:Lme/kiip/sdk/Notification$OnClickListener;

    .line 165
    return-void
.end method

.method public setOnDismissListener(Lme/kiip/sdk/Notification$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Notification$OnDismissListener;

    .prologue
    .line 169
    iput-object p1, p0, Lme/kiip/internal/l/b;->u:Lme/kiip/sdk/Notification$OnDismissListener;

    .line 170
    return-void
.end method

.method public setOnShowListener(Lme/kiip/sdk/Notification$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kiip/sdk/Notification$OnShowListener;

    .prologue
    .line 159
    iput-object p1, p0, Lme/kiip/internal/l/b;->s:Lme/kiip/sdk/Notification$OnShowListener;

    .line 160
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lme/kiip/internal/l/b;->a:Ljava/lang/String;

    .line 125
    return-void
.end method
