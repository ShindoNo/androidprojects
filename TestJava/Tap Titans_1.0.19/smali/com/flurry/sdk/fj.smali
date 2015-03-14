.class public Lcom/flurry/sdk/fj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fj$1;,
        Lcom/flurry/sdk/fj$b;,
        Lcom/flurry/sdk/fj$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/fk;

.field public static final b:Lcom/flurry/sdk/fk;

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lcom/flurry/sdk/fk$r;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/flurry/sdk/fk$o;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/fj$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fj;->d:Ljava/util/Set;

    .line 68
    sget-object v0, Lcom/flurry/sdk/fj;->d:Ljava/util/Set;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "doc"

    aput-object v2, v1, v3

    const-string v2, "response"

    aput-object v2, v1, v4

    const-string v2, "request"

    aput-object v2, v1, v5

    const-string v2, "errors"

    aput-object v2, v1, v6

    const-string v2, "one-way"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/flurry/sdk/fk$v;->g:Lcom/flurry/sdk/fk$v;

    invoke-static {v0}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/fk$v;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fk;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    sget-object v1, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v0}, Lcom/flurry/sdk/fk;->b(Ljava/util/List;)Lcom/flurry/sdk/fk;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fj;->b:Lcom/flurry/sdk/fk;

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fj;->j:Ljava/util/Set;

    .line 223
    sget-object v0, Lcom/flurry/sdk/fj;->j:Ljava/util/Set;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "namespace"

    aput-object v2, v1, v3

    const-string v2, "protocol"

    aput-object v2, v1, v4

    const-string v2, "doc"

    aput-object v2, v1, v5

    const-string v2, "messages"

    aput-object v2, v1, v6

    const-string v2, "types"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "errors"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/flurry/sdk/fk$o;

    invoke-direct {v0}, Lcom/flurry/sdk/fk$o;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    .line 207
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    .line 227
    new-instance v0, Lcom/flurry/sdk/fk$r;

    sget-object v1, Lcom/flurry/sdk/fj;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk$r;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    .line 229
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/flurry/sdk/he;)Lcom/flurry/sdk/fj$a;
    .locals 10

    .prologue
    .line 485
    invoke-direct {p0, p2}, Lcom/flurry/sdk/fj;->d(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v3

    .line 487
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 488
    invoke-virtual {p2}, Lcom/flurry/sdk/he;->r()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    sget-object v2, Lcom/flurry/sdk/fj;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-virtual {p2, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/he;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, "request"

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 499
    :cond_2
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No request specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/he;

    .line 502
    const-string v5, "name"

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v5

    .line 503
    if-nez v5, :cond_4

    .line 504
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No param name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_4
    const-string v6, "type"

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v6

    .line 506
    if-nez v6, :cond_5

    .line 507
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_5
    invoke-virtual {v5}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v5

    .line 509
    new-instance v7, Lcom/flurry/sdk/fk$f;

    iget-object v8, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-static {v6, v8}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/he;Lcom/flurry/sdk/fk$o;)Lcom/flurry/sdk/fk;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "default"

    invoke-virtual {v0, v9}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-direct {v7, v5, v6, v8, v0}, Lcom/flurry/sdk/fk$f;-><init>(Ljava/lang/String;Lcom/flurry/sdk/fk;Ljava/lang/String;Lcom/flurry/sdk/he;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    :cond_6
    invoke-static {v1}, Lcom/flurry/sdk/fk;->a(Ljava/util/List;)Lcom/flurry/sdk/fk;

    move-result-object v5

    .line 515
    const/4 v0, 0x0

    .line 516
    const-string v1, "one-way"

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_8

    .line 518
    invoke-virtual {v1}, Lcom/flurry/sdk/he;->g()Z

    move-result v0

    if-nez v0, :cond_7

    .line 519
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one-way must be boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_7
    invoke-virtual {v1}, Lcom/flurry/sdk/he;->j()Z

    move-result v0

    .line 523
    :cond_8
    const-string v1, "response"

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v1

    .line 524
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    .line 525
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_9
    const-string v2, "errors"

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v2

    .line 529
    if-eqz v0, :cond_c

    .line 530
    if-eqz v2, :cond_a

    .line 531
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one-way can\'t have errors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_a
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-static {v1, v0}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/he;Lcom/flurry/sdk/fk$o;)Lcom/flurry/sdk/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fk;->a()Lcom/flurry/sdk/fk$v;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/fk$v;->n:Lcom/flurry/sdk/fk$v;

    if-eq v0, v1, :cond_b

    .line 534
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One way response must be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_b
    new-instance v0, Lcom/flurry/sdk/fj$a;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/fj$a;-><init>(Lcom/flurry/sdk/fj;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fj$1;)V

    .line 556
    :goto_2
    return-object v0

    .line 538
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-static {v1, v0}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/he;Lcom/flurry/sdk/fk$o;)Lcom/flurry/sdk/fk;

    move-result-object v6

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    sget-object v0, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    if-eqz v2, :cond_10

    .line 543
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 544
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errors not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_d
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/he;

    .line 546
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v7, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-virtual {v7, v0}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/Object;)Lcom/flurry/sdk/fk;

    move-result-object v7

    .line 548
    if-nez v7, :cond_e

    .line 549
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_e
    invoke-virtual {v7}, Lcom/flurry/sdk/fk;->h()Z

    move-result v8

    if-nez v8, :cond_f

    .line 551
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_f
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 556
    :cond_10
    new-instance v0, Lcom/flurry/sdk/fj$b;

    invoke-static {v1}, Lcom/flurry/sdk/fk;->b(Ljava/util/List;)Lcom/flurry/sdk/fk;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/fj$b;-><init>(Lcom/flurry/sdk/fj;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fk;Lcom/flurry/sdk/fj$1;)V

    goto/16 :goto_2
.end method

.method private static a(Lcom/flurry/sdk/hg;)Lcom/flurry/sdk/fj;
    .locals 2

    .prologue
    .line 411
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/fj;

    invoke-direct {v0}, Lcom/flurry/sdk/fj;-><init>()V

    .line 412
    sget-object v1, Lcom/flurry/sdk/fk;->b:Lcom/flurry/sdk/jn;

    invoke-virtual {v1, p0}, Lcom/flurry/sdk/jn;->a(Lcom/flurry/sdk/hg;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/he;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    new-instance v1, Lcom/flurry/sdk/fl;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/fj;
    .locals 3

    .prologue
    .line 402
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/ha;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ha;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/hg;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/hg;)Lcom/flurry/sdk/fj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Lcom/flurry/sdk/fh;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/fk$o;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/flurry/sdk/fj;->d:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/flurry/sdk/he;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->b(Lcom/flurry/sdk/he;)V

    .line 421
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->e(Lcom/flurry/sdk/he;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->f(Lcom/flurry/sdk/he;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->h(Lcom/flurry/sdk/he;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->c(Lcom/flurry/sdk/he;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->g(Lcom/flurry/sdk/he;)V

    .line 426
    return-void
.end method

.method private b(Lcom/flurry/sdk/he;)V
    .locals 2

    .prologue
    .line 429
    const-string v0, "namespace"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    iget-object v1, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/flurry/sdk/he;)V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->d(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fj;->g:Ljava/lang/String;

    .line 437
    return-void
.end method

.method private d(Lcom/flurry/sdk/he;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Lcom/flurry/sdk/he;)V
    .locals 3

    .prologue
    .line 446
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 447
    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No protocol name specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/fj;->e:Ljava/lang/String;

    .line 450
    return-void
.end method

.method private f(Lcom/flurry/sdk/he;)V
    .locals 4

    .prologue
    .line 453
    const-string v0, "types"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v0

    .line 454
    if-nez v0, :cond_1

    .line 462
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/he;

    .line 458
    invoke-virtual {v0}, Lcom/flurry/sdk/he;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 459
    new-instance v1, Lcom/flurry/sdk/fl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type not an object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_3
    iget-object v2, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-static {v0, v2}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/he;Lcom/flurry/sdk/fk$o;)Lcom/flurry/sdk/fk;

    goto :goto_0
.end method

.method private g(Lcom/flurry/sdk/he;)V
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/flurry/sdk/he;->r()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    sget-object v2, Lcom/flurry/sdk/fj;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v2

    .line 469
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/he;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {v2}, Lcom/flurry/sdk/he;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/flurry/sdk/fj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    return-void
.end method

.method private h(Lcom/flurry/sdk/he;)V
    .locals 5

    .prologue
    .line 476
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v1

    .line 477
    if-nez v1, :cond_1

    .line 482
    :cond_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/sdk/he;->r()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    iget-object v3, p0, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/he;->a(Ljava/lang/String;)Lcom/flurry/sdk/he;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/flurry/sdk/fj;->a(Ljava/lang/String;Lcom/flurry/sdk/he;)Lcom/flurry/sdk/fj$a;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 343
    sget-object v1, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/ha;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/io/Writer;)Lcom/flurry/sdk/hc;

    move-result-object v1

    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/sdk/hc;->a()Lcom/flurry/sdk/hc;

    .line 345
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/hc;)V

    .line 346
    invoke-virtual {v1}, Lcom/flurry/sdk/hc;->g()V

    .line 347
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Lcom/flurry/sdk/fh;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fh;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(Lcom/flurry/sdk/hc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    iget-object v1, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->d()V

    .line 356
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/flurry/sdk/fj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "namespace"

    iget-object v1, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/fj;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "doc"

    iget-object v1, p0, Lcom/flurry/sdk/fj;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/fk$r;->a(Lcom/flurry/sdk/hc;)V

    .line 361
    const-string v0, "types"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->f(Ljava/lang/String;)V

    .line 362
    new-instance v1, Lcom/flurry/sdk/fk$o;

    iget-object v0, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fk$o;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-virtual {v0}, Lcom/flurry/sdk/fk$o;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk;

    .line 364
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fk$o;->a(Lcom/flurry/sdk/fk;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/fk$o;Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->c()V

    .line 368
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hc;->g(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fj$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/fj$a;->a(Lcom/flurry/sdk/hc;)V

    goto :goto_1

    .line 373
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->e()V

    .line 374
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->e()V

    .line 375
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/fk$r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    if-ne p1, p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    instance-of v2, p1, Lcom/flurry/sdk/fj;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 320
    :cond_2
    check-cast p1, Lcom/flurry/sdk/fj;

    .line 321
    iget-object v2, p0, Lcom/flurry/sdk/fj;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/fj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    iget-object v3, p1, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fk$o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    iget-object v3, p1, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    iget-object v3, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fk$r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/fj;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/fj;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/fj;->h:Lcom/flurry/sdk/fk$o;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk$o;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/fj;->i:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fk$r;

    invoke-virtual {v1}, Lcom/flurry/sdk/fk$r;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fj;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
