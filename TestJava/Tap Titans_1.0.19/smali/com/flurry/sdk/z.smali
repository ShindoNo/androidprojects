.class public Lcom/flurry/sdk/z;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ey$a;


# static fields
.field public static a:I

.field private static e:I

.field private static f:I


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Ljava/lang/String;

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Bitmap;

.field private F:Landroid/graphics/Bitmap;

.field private G:Landroid/graphics/Bitmap;

.field private H:Landroid/widget/ImageButton;

.field private I:Landroid/widget/ImageButton;

.field private J:Landroid/widget/ImageButton;

.field private K:Lcom/flurry/sdk/g;

.field private L:Lcom/flurry/sdk/al;

.field private M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private N:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field b:Lcom/flurry/sdk/ex;

.field c:Lcom/flurry/sdk/do;

.field d:Landroid/widget/RelativeLayout;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Landroid/widget/PopupWindow;

.field private j:Landroid/widget/ProgressBar;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JZZZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->g:Ljava/lang/ref/WeakReference;

    .line 79
    iput-boolean v2, p0, Lcom/flurry/sdk/z;->r:Z

    .line 81
    iput-boolean v2, p0, Lcom/flurry/sdk/z;->t:Z

    .line 82
    iput-boolean v2, p0, Lcom/flurry/sdk/z;->u:Z

    .line 83
    iput v2, p0, Lcom/flurry/sdk/z;->v:I

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/z;->w:J

    .line 94
    const-class v0, Lcom/flurry/sdk/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 518
    new-instance v0, Lcom/flurry/sdk/z$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/z$7;-><init>(Lcom/flurry/sdk/z;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->N:Landroid/os/Handler;

    .line 115
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/z;->e:I

    .line 116
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/z;->f:I

    .line 117
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/flurry/sdk/ez;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/z;->a:I

    .line 118
    new-instance v2, Lcom/flurry/sdk/aa;

    invoke-direct {v2}, Lcom/flurry/sdk/aa;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/z;->a(Landroid/content/Context;Lcom/flurry/sdk/aa;JZZZ)V

    .line 119
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/aa;JZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iput-object p1, p0, Lcom/flurry/sdk/z;->h:Landroid/content/Context;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    .line 133
    iput-boolean v1, p0, Lcom/flurry/sdk/z;->n:Z

    .line 134
    iput-boolean v1, p0, Lcom/flurry/sdk/z;->o:Z

    .line 135
    iput-boolean v1, p0, Lcom/flurry/sdk/z;->p:Z

    .line 136
    iput-boolean v1, p0, Lcom/flurry/sdk/z;->q:Z

    .line 137
    iput-wide p3, p0, Lcom/flurry/sdk/z;->w:J

    .line 138
    iput-boolean p5, p0, Lcom/flurry/sdk/z;->x:Z

    .line 139
    iput-boolean p6, p0, Lcom/flurry/sdk/z;->y:Z

    .line 140
    iput-boolean p7, p0, Lcom/flurry/sdk/z;->z:Z

    .line 145
    invoke-virtual {p2}, Lcom/flurry/sdk/aa;->f()V

    .line 147
    invoke-virtual {p2}, Lcom/flurry/sdk/aa;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->D:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p2}, Lcom/flurry/sdk/aa;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->E:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p2}, Lcom/flurry/sdk/aa;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->F:Landroid/graphics/Bitmap;

    .line 150
    invoke-virtual {p2}, Lcom/flurry/sdk/aa;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->G:Landroid/graphics/Bitmap;

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/z;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/z;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/z;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/z;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/sdk/z;->u()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/z;)Lcom/flurry/sdk/g;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/z;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private getMediaPlayer()Lcom/flurry/sdk/af;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/flurry/sdk/z;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    return-object v0
.end method

.method static synthetic h(Lcom/flurry/sdk/z;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/sdk/z;->t()I

    move-result v0

    return v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 254
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    sget v1, Lcom/flurry/sdk/z;->f:I

    sget v2, Lcom/flurry/sdk/z;->f:I

    sget v3, Lcom/flurry/sdk/z;->f:I

    sget v4, Lcom/flurry/sdk/z;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    invoke-direct {p0}, Lcom/flurry/sdk/z;->q()Landroid/view/View;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 266
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    sget v1, Lcom/flurry/sdk/z;->e:I

    sget v2, Lcom/flurry/sdk/z;->e:I

    sget v3, Lcom/flurry/sdk/z;->e:I

    sget v4, Lcom/flurry/sdk/z;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/z;->r()Landroid/view/View;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 276
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    sget v1, Lcom/flurry/sdk/z;->e:I

    sget v2, Lcom/flurry/sdk/z;->e:I

    sget v3, Lcom/flurry/sdk/z;->e:I

    sget v4, Lcom/flurry/sdk/z;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    invoke-direct {p0}, Lcom/flurry/sdk/z;->p()Landroid/view/View;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 285
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/flurry/sdk/al;

    iget-object v1, p0, Lcom/flurry/sdk/z;->h:Landroid/content/Context;

    sget v2, Lcom/flurry/sdk/z;->a:I

    sget v3, Lcom/flurry/sdk/z;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/al;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    .line 288
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    sget v1, Lcom/flurry/sdk/z;->e:I

    sget v2, Lcom/flurry/sdk/z;->e:I

    sget v3, Lcom/flurry/sdk/z;->e:I

    sget v4, Lcom/flurry/sdk/z;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    iget-object v1, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    invoke-virtual {v2}, Lcom/flurry/sdk/al;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->B:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private p()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 339
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    .line 340
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 342
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/z;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/z$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/z$4;-><init>(Lcom/flurry/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private q()Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 365
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    .line 366
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 367
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/z;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 370
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 372
    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 373
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 374
    iget-object v1, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/z$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/z$5;-><init>(Lcom/flurry/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->l:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 395
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    return-object v0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private r()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 403
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/z;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/z$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/z$6;-><init>(Lcom/flurry/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->A:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "showPlayerAssets."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->B:Z

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->l:Z

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->A:Z

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 452
    :cond_3
    return-void
.end method

.method private t()I
    .locals 6

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->m:Z

    if-eqz v0, :cond_2

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 552
    :cond_1
    :goto_0
    return v0

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getCurrentPosition()I

    move-result v0

    .line 541
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v1

    invoke-interface {v1}, Lcom/flurry/sdk/af;->getDuration()I

    move-result v1

    .line 542
    iget-object v2, p0, Lcom/flurry/sdk/z;->j:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 543
    if-lez v1, :cond_3

    .line 545
    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long v1, v2, v4

    .line 546
    iget-object v3, p0, Lcom/flurry/sdk/z;->j:Landroid/widget/ProgressBar;

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 548
    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v1

    invoke-interface {v1}, Lcom/flurry/sdk/af;->getBufferPercentage()I

    move-result v1

    .line 549
    iget-object v2, p0, Lcom/flurry/sdk/z;->j:Landroid/widget/ProgressBar;

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 585
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "***********doPauseResume"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->pause()V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    .line 155
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/flurry/sdk/z;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    .line 156
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_6

    .line 179
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flurry/sdk/z;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 185
    :goto_1
    invoke-direct {p0}, Lcom/flurry/sdk/z;->l()V

    .line 186
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/flurry/sdk/z;->n()V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->y:Z

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/flurry/sdk/z;->o()V

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->z:Z

    if-eqz v0, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/flurry/sdk/z;->m()V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/flurry/sdk/z$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/z$1;-><init>(Lcom/flurry/sdk/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 220
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 222
    new-instance v0, Lcom/flurry/sdk/z$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/z$2;-><init>(Lcom/flurry/sdk/z;)V

    .line 231
    iget-object v1, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 233
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->r:Z

    if-nez v0, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->j()V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/z;->c:Lcom/flurry/sdk/do;

    if-nez v0, :cond_4

    .line 237
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->c:Lcom/flurry/sdk/do;

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/z;->c:Lcom/flurry/sdk/do;

    new-instance v1, Lcom/flurry/sdk/z$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/z$3;-><init>(Lcom/flurry/sdk/z;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;J)V

    .line 250
    return-void

    .line 159
    :cond_5
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "PopupWindow exists so using current one!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/z;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_1
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 469
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v1, "***********show called"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v1, "********showing player assets in show()"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/flurry/sdk/z;->s()V

    .line 476
    iput-boolean v2, p0, Lcom/flurry/sdk/z;->k:Z

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->N:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    iget-object v0, p0, Lcom/flurry/sdk/z;->N:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 485
    if-eqz p1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/flurry/sdk/z;->N:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v1, p0, Lcom/flurry/sdk/z;->N:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 489
    :cond_1
    return-void
.end method

.method public a(IF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/sdk/z;->w:J

    long-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->l:Z

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 723
    iput-boolean v3, p0, Lcom/flurry/sdk/z;->l:Z

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 726
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->B:Z

    if-nez v0, :cond_1

    .line 727
    iput-boolean v3, p0, Lcom/flurry/sdk/z;->B:Z

    .line 728
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    iget-boolean v1, p0, Lcom/flurry/sdk/z;->k:Z

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/al;->a(IZ)V

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const v0, 0x453b8000

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->A:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->t:Z

    if-nez v0, :cond_3

    .line 733
    iput-boolean v3, p0, Lcom/flurry/sdk/z;->A:Z

    .line 734
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 739
    :cond_4
    return-void
.end method

.method public a(Lcom/flurry/sdk/ey;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 674
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getDuration()I

    move-result v0

    int-to-float v7, v0

    .line 678
    invoke-direct {p0}, Lcom/flurry/sdk/z;->getMediaPlayer()Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/af;->getCurrentPosition()I

    move-result v0

    int-to-float v8, v0

    .line 681
    sub-float v0, v7, v8

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 682
    float-to-int v0, v0

    .line 684
    iget-object v1, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/al;->a(I)V

    .line 688
    :cond_2
    invoke-virtual {p0, v0, v8}, Lcom/flurry/sdk/z;->a(IF)V

    .line 691
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getOffsetStartTime()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_3

    .line 692
    iput-boolean v6, p0, Lcom/flurry/sdk/z;->n:Z

    .line 693
    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    const-string v1, "videoStart"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 697
    :cond_3
    div-float v7, v8, v7

    .line 698
    float-to-double v0, v7

    const-wide/high16 v2, 0x3fd0000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_4

    .line 699
    iput-boolean v6, p0, Lcom/flurry/sdk/z;->o:Z

    .line 700
    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    const-string v1, "videoFirstQuartile"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 704
    :cond_4
    float-to-double v0, v7

    const-wide/high16 v2, 0x3fe0000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_5

    .line 705
    iput-boolean v6, p0, Lcom/flurry/sdk/z;->p:Z

    .line 706
    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    const-string v1, "videoMidpoint"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 710
    :cond_5
    float-to-double v0, v7

    const-wide/high16 v2, 0x3fe8000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/z;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    if-eqz v0, :cond_0

    .line 711
    iput-boolean v6, p0, Lcom/flurry/sdk/z;->q:Z

    .line 712
    iget-object v0, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    const-string v1, "videoThirdQuartile"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getWidthDimensions()I

    move-result v1

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->getHeightDimensions()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 304
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->u:Z

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v1, "dismissing popup"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v1, "END OF DISMISS POPUP"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 564
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 565
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v4, "HERE IN dispatchKeyEvent"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/z;->u()V

    .line 572
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->e()V

    .line 581
    :goto_0
    return v0

    .line 574
    :cond_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x52

    if-ne v1, v2, :cond_3

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->h()V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->e()V

    .line 581
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 435
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/z;->a(I)V

    .line 436
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 455
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "hidePlayerAssets."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 459
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->k:Z

    return v0
.end method

.method public getAutoPlay()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->x:Z

    return v0
.end method

.method public getCloseButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/flurry/sdk/z;->I:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getHeightDimensions()I
    .locals 5

    .prologue
    .line 321
    invoke-static {}, Lcom/flurry/sdk/ez;->b()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 322
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 323
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getMoreInfoButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/flurry/sdk/z;->J:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMoreInfoClicked()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->s:Z

    return v0
.end method

.method public getOffsetStartTime()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/flurry/sdk/z;->v:I

    return v0
.end method

.method public getPauseButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/flurry/sdk/z;->H:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getTimerView()Lcom/flurry/sdk/al;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    return-object v0
.end method

.method public getWidthDimensions()I
    .locals 5

    .prologue
    .line 315
    invoke-static {}, Lcom/flurry/sdk/ez;->b()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 316
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 499
    iget-object v0, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v1, "HERE IN HIDE"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->k:Z

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "********hiding player assets in hide()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->f()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/z;->k:Z

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "already removed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public i()V
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/z;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->d()V

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->a()V

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/z;->setmCloseConfirmDialogClicked(Z)V

    .line 606
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/z;->k:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/z;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 607
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->e()V

    .line 609
    :cond_3
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 632
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "***********addTimerListener hit"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    if-nez v0, :cond_0

    .line 634
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->a(Lcom/flurry/sdk/ey$a;)V

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/z;->r:Z

    .line 638
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 641
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "***********removeTimerListener hit"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    if-nez v0, :cond_0

    .line 643
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ex;->b(Lcom/flurry/sdk/ey$a;)Z

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/z;->r:Z

    .line 647
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    const-string v2, "HERE IN onTrackballEvent"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/flurry/sdk/z;->e()V

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public setAdUnityView(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/flurry/sdk/z;->K:Lcom/flurry/sdk/g;

    .line 629
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/flurry/sdk/z;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/flurry/sdk/z;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 616
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 617
    return-void
.end method

.method public setFlurryCore(Lcom/flurry/sdk/do;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/flurry/sdk/z;->c:Lcom/flurry/sdk/do;

    .line 776
    return-void
.end method

.method public setInitialVideoMidpoint(Z)V
    .locals 0

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/flurry/sdk/z;->p:Z

    .line 788
    return-void
.end method

.method public setIntialVideoFirstQuartile(Z)V
    .locals 0

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/flurry/sdk/z;->o:Z

    .line 784
    return-void
.end method

.method public setIntialVideoStart(Z)V
    .locals 0

    .prologue
    .line 779
    iput-boolean p1, p0, Lcom/flurry/sdk/z;->n:Z

    .line 780
    return-void
.end method

.method public setIntialVideoThirdQuartile(Z)V
    .locals 0

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/flurry/sdk/z;->q:Z

    .line 792
    return-void
.end method

.method public setIsMediaPlayerReleased(Z)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/flurry/sdk/z;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 743
    return-void
.end method

.method public setMediaPlayer(Lcom/flurry/sdk/f;)V
    .locals 4

    .prologue
    .line 427
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/z;->g:Ljava/lang/ref/WeakReference;

    .line 428
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/z;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Here is adUnityViewView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public setOffsetStartTime(I)V
    .locals 0

    .prologue
    .line 656
    iput p1, p0, Lcom/flurry/sdk/z;->v:I

    .line 657
    return-void
.end method

.method public setTickManager(Lcom/flurry/sdk/ex;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/flurry/sdk/z;->b:Lcom/flurry/sdk/ex;

    .line 772
    return-void
.end method

.method public setTimerView(Lcom/flurry/sdk/al;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/flurry/sdk/z;->L:Lcom/flurry/sdk/al;

    .line 768
    return-void
.end method

.method public setVideoState(Lcom/flurry/sdk/am;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 661
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/z;->n:Z

    .line 663
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flurry/sdk/z;->o:Z

    .line 664
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->d()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/flurry/sdk/z;->p:Z

    .line 665
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->e()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/flurry/sdk/z;->q:Z

    .line 666
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/z;->s:Z

    .line 667
    invoke-virtual {p1}, Lcom/flurry/sdk/am;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/z;->t:Z

    .line 668
    iput-boolean v2, p0, Lcom/flurry/sdk/z;->A:Z

    .line 670
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 662
    goto :goto_0

    :cond_2
    move v0, v2

    .line 663
    goto :goto_1

    :cond_3
    move v0, v2

    .line 664
    goto :goto_2

    :cond_4
    move v1, v2

    .line 665
    goto :goto_3
.end method

.method public setmCloseConfirmDialogClicked(Z)V
    .locals 0

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/flurry/sdk/z;->u:Z

    .line 312
    return-void
.end method
