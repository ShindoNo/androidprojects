.class Lcom/flurry/sdk/r$4;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Landroid/content/Context;ZZ)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/r$4;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    iput-object p4, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/flurry/sdk/r$4;->d:Z

    iput-boolean p6, p0, Lcom/flurry/sdk/r$4;->e:Z

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 571
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 573
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generic Launch of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const-string v0, "market://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    invoke-static {v2}, Lcom/flurry/sdk/cf;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/flurry/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 588
    :goto_1
    if-nez v0, :cond_0

    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/do;->b()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v3, "should_close_ad"

    iget-boolean v4, p0, Lcom/flurry/sdk/r$4;->d:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    iget-boolean v3, p0, Lcom/flurry/sdk/r$4;->e:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 595
    iget-object v2, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/flurry/sdk/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 597
    :cond_4
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/r$4;->f:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/sdk/r$4;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/flurry/sdk/r;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 607
    if-nez v0, :cond_0

    .line 611
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch intent for:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch intent for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/r$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
