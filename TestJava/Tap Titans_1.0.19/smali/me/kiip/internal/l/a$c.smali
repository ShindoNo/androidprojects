.class Lme/kiip/internal/l/a$c;
.super Lme/kiip/internal/i/b;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
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

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lme/kiip/internal/l/a$b;

.field private g:Lme/kiip/internal/l/a$a;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/VideoView;

.field private k:Z

.field private l:Landroid/view/View$OnClickListener;

.field private m:Lme/kiip/internal/l/a$a$a;

.field private n:Lme/kiip/internal/l/a$a$c;

.field private o:Lme/kiip/internal/l/a$a$b;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lme/kiip/internal/i/b;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance v0, Lme/kiip/internal/l/a$c$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$c$1;-><init>(Lme/kiip/internal/l/a$c;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$c;->c:Ljava/lang/Runnable;

    .line 302
    new-instance v0, Lme/kiip/internal/l/a$c$4;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$c$4;-><init>(Lme/kiip/internal/l/a$c;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$c;->d:Ljava/lang/Runnable;

    .line 317
    new-instance v0, Lme/kiip/internal/l/a$c$5;

    invoke-virtual {p0}, Lme/kiip/internal/l/a$c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lme/kiip/internal/l/a$c$5;-><init>(Lme/kiip/internal/l/a$c;Landroid/content/Context;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    .line 372
    new-instance v0, Lme/kiip/internal/l/a$c$6;

    invoke-direct {v0, p0}, Lme/kiip/internal/l/a$c$6;-><init>(Lme/kiip/internal/l/a$c;)V

    iput-object v0, p0, Lme/kiip/internal/l/a$c;->l:Landroid/view/View$OnClickListener;

    .line 394
    invoke-direct {p0}, Lme/kiip/internal/l/a$c;->b()V

    .line 395
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a$c;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lme/kiip/internal/l/a$c;->c()V

    return-void
.end method

.method static synthetic a(Lme/kiip/internal/l/a$c;Z)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lme/kiip/internal/l/a$c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 618
    if-eqz p1, :cond_0

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/l/a$c;->k:Z

    .line 623
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    invoke-static {v0, p1}, Lme/kiip/internal/l/a$b;->a(Lme/kiip/internal/l/a$b;Z)V

    .line 624
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/a$c;->k:Z

    goto :goto_0
.end method

.method static synthetic b(Lme/kiip/internal/l/a$c;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 398
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    .line 402
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    const-string v2, "kp_play_video"

    const-string v3, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 404
    const-string v3, "kp_cancel_video"

    const-string v4, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 405
    if-lez v2, :cond_0

    if-gtz v1, :cond_1

    .line 406
    :cond_0
    const-string v3, "KiipSDK"

    const-string v4, "Unable to find kp_play_video.png or kp_cancel_video in drawable-*"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lme/kiip/internal/l/a$c;->h:Landroid/widget/ImageView;

    .line 410
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    .line 411
    iget-object v3, p0, Lme/kiip/internal/l/a$c;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object v2, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 414
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    .line 415
    new-instance v1, Lme/kiip/internal/l/a$b;

    invoke-direct {v1, v0}, Lme/kiip/internal/l/a$b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    .line 416
    new-instance v1, Lme/kiip/internal/l/a$a;

    iget-object v2, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    iget-object v3, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2, v3}, Lme/kiip/internal/l/a$a;-><init>(Landroid/content/Context;Landroid/widget/VideoView;Landroid/widget/ImageButton;)V

    iput-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    .line 417
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 418
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    new-instance v2, Lme/kiip/internal/l/a$c$7;

    invoke-direct {v2, p0, v6, v6}, Lme/kiip/internal/l/a$c$7;-><init>(Lme/kiip/internal/l/a$c;II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    new-instance v2, Lme/kiip/internal/l/a$c$8;

    invoke-direct {v2, p0, v7, v7}, Lme/kiip/internal/l/a$c$8;-><init>(Lme/kiip/internal/l/a$c;II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->h:Landroid/widget/ImageView;

    new-instance v2, Lme/kiip/internal/l/a$c$9;

    invoke-direct {v2, p0, v6, v6}, Lme/kiip/internal/l/a$c$9;-><init>(Lme/kiip/internal/l/a$c;II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    new-instance v2, Lme/kiip/internal/l/a$c$10;

    invoke-direct {v2, p0, v6, v6}, Lme/kiip/internal/l/a$c$10;-><init>(Lme/kiip/internal/l/a$c;II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    return-void
.end method

.method static synthetic b(Lme/kiip/internal/l/a$c;Z)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lme/kiip/internal/l/a$c;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 627
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 628
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 629
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 632
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 637
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 638
    return-void

    .line 634
    :cond_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 635
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$b;->setVisibility(I)V

    .line 615
    return-void
.end method

.method static synthetic c(Lme/kiip/internal/l/a$c;)Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lme/kiip/internal/l/a$c;->k:Z

    return v0
.end method

.method static synthetic d(Lme/kiip/internal/l/a$c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lme/kiip/internal/l/a$c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$b;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->o:Lme/kiip/internal/l/a$a$b;

    return-object v0
.end method

.method static synthetic g(Lme/kiip/internal/l/a$c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$b;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    return-object v0
.end method

.method static synthetic i(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    return-object v0
.end method

.method static synthetic j(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$a;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->m:Lme/kiip/internal/l/a$a$a;

    return-object v0
.end method

.method static synthetic k(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$c;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->n:Lme/kiip/internal/l/a$a$c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 447
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "modal"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 453
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    invoke-virtual {v0, v4}, Lme/kiip/internal/l/a$b;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, v4}, Lme/kiip/internal/l/a$a;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    new-instance v1, Lme/kiip/internal/l/a$c$11;

    invoke-direct {v1, p0}, Lme/kiip/internal/l/a$c$11;-><init>(Lme/kiip/internal/l/a$c;)V

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a$b;)V

    .line 469
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    new-instance v1, Lme/kiip/internal/l/a$c$2;

    invoke-direct {v1, p0}, Lme/kiip/internal/l/a$c$2;-><init>(Lme/kiip/internal/l/a$c;)V

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a$a;)V

    .line 520
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    new-instance v1, Lme/kiip/internal/l/a$c$3;

    invoke-direct {v1, p0}, Lme/kiip/internal/l/a$c$3;-><init>(Lme/kiip/internal/l/a$c;)V

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/internal/l/a$a$c;)V

    .line 526
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/a$b;->a(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public a(Lme/kiip/internal/l/a$a$a;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lme/kiip/internal/l/a$c;->m:Lme/kiip/internal/l/a$a$a;

    .line 546
    return-void
.end method

.method public a(Lme/kiip/internal/l/a$a$b;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lme/kiip/internal/l/a$c;->o:Lme/kiip/internal/l/a$a$b;

    .line 542
    return-void
.end method

.method public a(Lme/kiip/internal/l/a$a$c;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lme/kiip/internal/l/a$c;->n:Lme/kiip/internal/l/a$a$c;

    .line 550
    return-void
.end method

.method public a(Lme/kiip/sdk/Kiip$OnContentListener;)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/sdk/Kiip$OnContentListener;)V

    .line 554
    return-void
.end method

.method public a(Lme/kiip/sdk/Modal$VideoListener;)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/a$a;->a(Lme/kiip/sdk/Modal$VideoListener;)V

    .line 558
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->f:Lme/kiip/internal/l/a$b;

    invoke-virtual {v0, p1}, Lme/kiip/internal/l/a$b;->b(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lme/kiip/internal/l/a$c;->p:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 584
    if-eqz v0, :cond_0

    .line 585
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->destroy()V

    .line 589
    invoke-super {p0}, Lme/kiip/internal/i/b;->cancel()V

    .line 590
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 605
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->destroy()V

    .line 610
    invoke-super {p0}, Lme/kiip/internal/i/b;->dismiss()V

    .line 611
    return-void

    .line 599
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 642
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 645
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.location.hash=\"#current_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 649
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v1, v0}, Lme/kiip/internal/l/a$a;->loadUrl(Ljava/lang/String;)V

    .line 654
    :goto_0
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->j:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 656
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 657
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0, v4}, Lme/kiip/internal/l/a$a;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->a()Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$a;->a()Lme/kiip/sdk/Modal$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/sdk/Modal$VideoListener;->onVideoStopped()V

    .line 668
    :cond_0
    :goto_1
    return-void

    .line 651
    :cond_1
    iget-object v1, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lme/kiip/internal/l/a$a;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 666
    :cond_2
    invoke-super {p0}, Lme/kiip/internal/i/b;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-super {p0, p1}, Lme/kiip/internal/i/b;->onCreate(Landroid/os/Bundle;)V

    .line 441
    invoke-virtual {p0}, Lme/kiip/internal/l/a$c;->a()V

    .line 442
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lme/kiip/internal/l/a$c;->setContentView(Landroid/view/View;)V

    .line 443
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/l/a$c;->k:Z

    .line 563
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->g:Lme/kiip/internal/l/a$a;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$a;->loadUrl(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lme/kiip/internal/l/a$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lme/kiip/internal/l/a$c;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    invoke-super {p0}, Lme/kiip/internal/i/b;->show()V

    .line 569
    return-void
.end method
