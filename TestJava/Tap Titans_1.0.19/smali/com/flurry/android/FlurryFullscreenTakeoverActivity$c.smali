.class final Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/n$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;I)V
    .locals 1

    .prologue
    .line 483
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->b:I

    .line 484
    iput p2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->b:I

    .line 485
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/n;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 489
    .line 491
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z

    .line 496
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)V

    .line 497
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->b:I

    invoke-static {v1, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;I)V

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 500
    :cond_1
    invoke-static {p2}, Lcom/flurry/sdk/cf;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    if-nez p3, :cond_2

    .line 503
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {p1}, Lcom/flurry/sdk/n;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 506
    :cond_2
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz p3, :cond_0

    .line 510
    new-instance v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$1;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;Lcom/flurry/sdk/n;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/n;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 522
    :cond_3
    invoke-static {p2}, Lcom/flurry/sdk/cf;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 524
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 527
    if-eqz v0, :cond_0

    .line 529
    if-nez p3, :cond_4

    .line 530
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {p1}, Lcom/flurry/sdk/n;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 532
    :cond_4
    if-eqz p3, :cond_0

    .line 533
    new-instance v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$2;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;Lcom/flurry/sdk/n;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/n;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 546
    :cond_5
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/flurry/sdk/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 549
    if-eqz v0, :cond_0

    .line 551
    if-nez p3, :cond_6

    .line 552
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {p1}, Lcom/flurry/sdk/n;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 554
    :cond_6
    if-eqz p3, :cond_0

    .line 555
    new-instance v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$3;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c$3;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$c;Lcom/flurry/sdk/n;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/n;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
