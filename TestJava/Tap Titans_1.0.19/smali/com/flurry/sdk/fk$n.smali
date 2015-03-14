.class abstract Lcom/flurry/sdk/fk$n;
.super Lcom/flurry/sdk/fk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "n"
.end annotation


# instance fields
.field final f:Lcom/flurry/sdk/fk$m;

.field final g:Ljava/lang/String;

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flurry/sdk/fk$m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fk$v;Lcom/flurry/sdk/fk$m;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fk;-><init>(Lcom/flurry/sdk/fk$v;)V

    .line 521
    iput-object p2, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    .line 522
    iput-object p3, p0, Lcom/flurry/sdk/fk$n;->g:Ljava/lang/String;

    .line 523
    sget-object v0, Lcom/flurry/sdk/fk$n;->e:Ljava/util/Map;

    invoke-static {p2}, Lcom/flurry/sdk/fk$m;->a(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lcom/flurry/sdk/fi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schemas may not be named after primitives: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/flurry/sdk/fk$m;->a(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v0, "aliases"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->b()V

    .line 566
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk$m;

    .line 567
    iget-object v2, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v2}, Lcom/flurry/sdk/fk$m;->c(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/fk$m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->c()V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/fk$n;)Z
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    iget-object v1, p1, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$m;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/flurry/sdk/fk$o;Lcom/flurry/sdk/hc;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/Object;)Lcom/flurry/sdk/fk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fk$n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {p1}, Lcom/flurry/sdk/fk$o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v0}, Lcom/flurry/sdk/fk$m;->b(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/fk$o;->a(Lcom/flurry/sdk/fk$m;Lcom/flurry/sdk/fk;)Lcom/flurry/sdk/fk;

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v0}, Lcom/flurry/sdk/fk$m;->b(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/flurry/sdk/fk$o;Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/fk$m;->a(Lcom/flurry/sdk/fk$o;Lcom/flurry/sdk/hc;)V

    .line 555
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->h:Ljava/util/Set;

    new-instance v1, Lcom/flurry/sdk/fk$m;

    iget-object v2, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v2}, Lcom/flurry/sdk/fk$m;->c(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/flurry/sdk/fk$m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v0}, Lcom/flurry/sdk/fk$m;->c(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-static {v0}, Lcom/flurry/sdk/fk$m;->a(Lcom/flurry/sdk/fk$m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()I
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Lcom/flurry/sdk/fk;->m()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk$m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
