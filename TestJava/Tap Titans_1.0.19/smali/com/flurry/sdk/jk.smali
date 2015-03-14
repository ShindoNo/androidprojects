.class public abstract Lcom/flurry/sdk/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ir$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jk$c;,
        Lcom/flurry/sdk/jk$a;,
        Lcom/flurry/sdk/jk$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/jk",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ir$a;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/text/DateFormat;


# instance fields
.field protected e:Lcom/flurry/sdk/jk$a;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected g:Z

.field protected h:Lcom/flurry/sdk/nd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/sdk/rf;->f:Lcom/flurry/sdk/rf;

    sput-object v0, Lcom/flurry/sdk/jk;->d:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/ir;Lcom/flurry/sdk/in;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/nd;Lcom/flurry/sdk/jo;Lcom/flurry/sdk/qp;Lcom/flurry/sdk/jb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ir",
            "<+",
            "Lcom/flurry/sdk/io;",
            ">;",
            "Lcom/flurry/sdk/in;",
            "Lcom/flurry/sdk/nb",
            "<*>;",
            "Lcom/flurry/sdk/nd;",
            "Lcom/flurry/sdk/jo;",
            "Lcom/flurry/sdk/qp;",
            "Lcom/flurry/sdk/jb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/flurry/sdk/jk$a;

    const/4 v6, 0x0

    sget-object v7, Lcom/flurry/sdk/jk;->d:Ljava/text/DateFormat;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/jk$a;-><init>(Lcom/flurry/sdk/ir;Lcom/flurry/sdk/in;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/jo;Lcom/flurry/sdk/qp;Lcom/flurry/sdk/nf;Ljava/text/DateFormat;Lcom/flurry/sdk/jb;)V

    iput-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    .line 131
    iput-object p4, p0, Lcom/flurry/sdk/jk;->h:Lcom/flurry/sdk/nd;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->g:Z

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/jk$a;Lcom/flurry/sdk/nd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jk",
            "<TT;>;",
            "Lcom/flurry/sdk/jk$a;",
            "Lcom/flurry/sdk/nd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    .line 151
    iput-object p3, p0, Lcom/flurry/sdk/jk;->h:Lcom/flurry/sdk/nd;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->g:Z

    .line 154
    iget-object v0, p1, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    .line 155
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/in;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->b()Lcom/flurry/sdk/in;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/sdk/io;",
            ">(",
            "Lcom/flurry/sdk/se;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->m()Lcom/flurry/sdk/qp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/qp;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 499
    iput-boolean v1, p0, Lcom/flurry/sdk/jk;->g:Z

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    .line 505
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qg;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void

    .line 501
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->g:Z

    if-eqz v0, :cond_0

    .line 502
    iput-boolean v1, p0, Lcom/flurry/sdk/jk;->g:Z

    .line 503
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public final b(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->m()Lcom/flurry/sdk/qp;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/sdk/qo;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/qp;->a(Ljava/lang/reflect/Type;Lcom/flurry/sdk/qo;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Z
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/sdk/io;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/sdk/io;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TDESC;"
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jk;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jk;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Z
.end method

.method public d(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/nf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/nf",
            "<*>;>;)",
            "Lcom/flurry/sdk/nf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/nf;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/nf;

    goto :goto_0
.end method

.method public final d(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            ")",
            "Lcom/flurry/sdk/nf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->f()Lcom/flurry/sdk/nf;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Z
.end method

.method public e()Lcom/flurry/sdk/nb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/nb",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->c()Lcom/flurry/sdk/nb;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ne;",
            ">;)",
            "Lcom/flurry/sdk/ne;"
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->b(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ne;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ne;

    goto :goto_0
.end method

.method public i()Lcom/flurry/sdk/ir;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ir",
            "<+",
            "Lcom/flurry/sdk/io;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->a()Lcom/flurry/sdk/ir;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/flurry/sdk/jo;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->d()Lcom/flurry/sdk/jo;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/flurry/sdk/jb;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/flurry/sdk/nd;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/flurry/sdk/jk;->h:Lcom/flurry/sdk/nd;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/flurry/sdk/nq;

    invoke-direct {v0}, Lcom/flurry/sdk/nq;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jk;->h:Lcom/flurry/sdk/nd;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jk;->h:Lcom/flurry/sdk/nd;

    return-object v0
.end method

.method public final m()Lcom/flurry/sdk/qp;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->e()Lcom/flurry/sdk/qp;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/flurry/sdk/jk;->e:Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jk$a;->g()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method
