.class Lcom/flurry/sdk/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/f;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/f;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, p3}, Lcom/flurry/sdk/f;->f(Lcom/flurry/sdk/f;I)I

    .line 527
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, p4}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;I)I

    .line 528
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->l(Lcom/flurry/sdk/f;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 529
    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;)I

    move-result v3

    if-ne v3, p3, :cond_5

    iget-object v3, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;)I

    move-result v3

    if-ne v3, p4, :cond_5

    .line 530
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v2}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->f(Lcom/flurry/sdk/f;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    iget-object v1, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v1}, Lcom/flurry/sdk/f;->f(Lcom/flurry/sdk/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->seekTo(I)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 536
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->start()V

    .line 543
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->h()V

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->e()V

    .line 551
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 528
    goto :goto_0

    :cond_5
    move v1, v2

    .line 529
    goto :goto_1

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->g(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->start()V

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 554
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0, p1}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 556
    invoke-static {}, Lcom/flurry/sdk/f;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState is ....:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v2}, Lcom/flurry/sdk/f;->m(Lcom/flurry/sdk/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/flurry/sdk/f;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetState is ....:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v2}, Lcom/flurry/sdk/f;->l(Lcom/flurry/sdk/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->d(Lcom/flurry/sdk/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->n(Lcom/flurry/sdk/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->b(Lcom/flurry/sdk/f;Z)V

    .line 562
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->a(Lcom/flurry/sdk/f;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 567
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->d()V

    .line 569
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v0}, Lcom/flurry/sdk/f;->e(Lcom/flurry/sdk/f;)Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z;->k()V

    .line 571
    :cond_0
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/f;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentState is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    invoke-static {v3}, Lcom/flurry/sdk/f;->m(Lcom/flurry/sdk/f;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/flurry/sdk/f$6;->a:Lcom/flurry/sdk/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/f;->c(Lcom/flurry/sdk/f;Z)V

    .line 573
    return-void
.end method
