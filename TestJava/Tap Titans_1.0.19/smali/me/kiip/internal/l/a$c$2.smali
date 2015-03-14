.class Lme/kiip/internal/l/a$c$2;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/l/a$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/l/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/l/a$c;


# direct methods
.method constructor <init>(Lme/kiip/internal/l/a$c;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->e(Lme/kiip/internal/l/a$c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->g(Lme/kiip/internal/l/a$c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->h(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$b;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->i(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/kiip/internal/l/a$a;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0, v2}, Lme/kiip/internal/l/a$c;->b(Lme/kiip/internal/l/a$c;Z)V

    .line 478
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 479
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0, v2}, Lme/kiip/internal/l/a$c;->setCancelable(Z)V

    .line 482
    const-string v0, ""

    .line 483
    iget-object v1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    iget-object v1, v1, Lme/kiip/internal/l/a$c;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 484
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 485
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    iget-object v0, v0, Lme/kiip/internal/l/a$c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    iget-object v4, v4, Lme/kiip/internal/l/a$c;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 496
    iget-object v1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->i(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.location.hash=\"#show"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/kiip/internal/l/a$a;->loadUrl(Ljava/lang/String;)V

    .line 505
    :goto_1
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->j(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->a()V

    .line 506
    return-void

    .line 499
    :cond_2
    :try_start_1
    iget-object v1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->i(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.location.hash=\"#show"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lme/kiip/internal/l/a$a;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 500
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->e(Lme/kiip/internal/l/a$c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v1}, Lme/kiip/internal/l/a$c;->g(Lme/kiip/internal/l/a$c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->j(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->b()V

    .line 512
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-virtual {v0}, Lme/kiip/internal/l/a$c;->dismiss()V

    .line 517
    iget-object v0, p0, Lme/kiip/internal/l/a$c$2;->a:Lme/kiip/internal/l/a$c;

    invoke-static {v0}, Lme/kiip/internal/l/a$c;->j(Lme/kiip/internal/l/a$c;)Lme/kiip/internal/l/a$a$a;

    move-result-object v0

    invoke-interface {v0}, Lme/kiip/internal/l/a$a$a;->c()V

    .line 518
    return-void
.end method
