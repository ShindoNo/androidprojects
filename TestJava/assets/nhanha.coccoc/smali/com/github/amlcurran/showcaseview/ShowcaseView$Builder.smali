.class public Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
.super Ljava/lang/Object;
.source "ShowcaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;-><init>(Landroid/app/Activity;Z)V

    .line 374
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "useNewStyle"    # Z

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    .line 378
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-direct {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .line 379
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/Target;->NONE:Lcom/github/amlcurran/showcaseview/targets/Target;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 380
    return-void
.end method


# virtual methods
.method public build()Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    # invokes: Lcom/github/amlcurran/showcaseview/ShowcaseView;->insertShowcaseView(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$500(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/app/Activity;)V

    .line 389
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    return-object v0
.end method

.method public doNotBlockTouches()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 459
    return-object p0
.end method

.method public hideOnTouchOutside()Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 469
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlocksTouches(Z)V

    .line 470
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setHideOnTouchOutside(Z)V

    .line 471
    return-object p0
.end method

.method public setContentText(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentText(Ljava/lang/CharSequence;)V

    .line 419
    return-object p0
.end method

.method public setContentTitle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 404
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->overrideButtonClick(Landroid/view/View$OnClickListener;)V

    .line 448
    return-object p0
.end method

.method public setShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "showcaseEventListener"    # Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)V

    .line 487
    return-object p0
.end method

.method public setStyle(I)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setStyle(I)V

    .line 438
    return-object p0
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V

    .line 430
    return-object p0
.end method

.method public singleShot(J)Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;
    .locals 1
    .param p1, "shotId"    # J

    .prologue
    .line 481
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;->showcaseView:Lcom/github/amlcurran/showcaseview/ShowcaseView;

    # invokes: Lcom/github/amlcurran/showcaseview/ShowcaseView;->setSingleShot(J)V
    invoke-static {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->access$600(Lcom/github/amlcurran/showcaseview/ShowcaseView;J)V

    .line 482
    return-object p0
.end method
