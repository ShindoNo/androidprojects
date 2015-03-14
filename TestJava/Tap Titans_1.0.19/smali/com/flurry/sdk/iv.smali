.class public Lcom/flurry/sdk/iv;
.super Lcom/flurry/sdk/jk$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/jk$c",
        "<",
        "Lcom/flurry/sdk/iv$a;",
        "Lcom/flurry/sdk/iv;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/sdk/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ra",
            "<",
            "Lcom/flurry/sdk/ix;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/flurry/sdk/rp;

.field protected c:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ir;Lcom/flurry/sdk/in;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/nd;Lcom/flurry/sdk/jo;Lcom/flurry/sdk/qp;Lcom/flurry/sdk/jb;)V
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
    .line 406
    const-class v0, Lcom/flurry/sdk/iv$a;

    invoke-static {v0}, Lcom/flurry/sdk/iv;->d(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/jk$c;-><init>(Lcom/flurry/sdk/ir;Lcom/flurry/sdk/in;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/nd;Lcom/flurry/sdk/jo;Lcom/flurry/sdk/qp;Lcom/flurry/sdk/jb;I)V

    .line 408
    sget-object v0, Lcom/flurry/sdk/rp;->a:Lcom/flurry/sdk/rp;

    iput-object v0, p0, Lcom/flurry/sdk/iv;->b:Lcom/flurry/sdk/rp;

    .line 409
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/jk$a;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p1, Lcom/flurry/sdk/iv;->h:Lcom/flurry/sdk/nd;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/jk$c;-><init>(Lcom/flurry/sdk/jk$c;Lcom/flurry/sdk/jk$a;Lcom/flurry/sdk/nd;)V

    .line 438
    iget-object v0, p1, Lcom/flurry/sdk/iv;->a:Lcom/flurry/sdk/ra;

    iput-object v0, p0, Lcom/flurry/sdk/iv;->a:Lcom/flurry/sdk/ra;

    .line 439
    iget-object v0, p1, Lcom/flurry/sdk/iv;->b:Lcom/flurry/sdk/rp;

    iput-object v0, p0, Lcom/flurry/sdk/iv;->b:Lcom/flurry/sdk/rp;

    .line 440
    iget-boolean v0, p1, Lcom/flurry/sdk/iv;->c:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/iv;->c:Z

    .line 441
    return-void
.end method

.method private constructor <init>(Lcom/flurry/sdk/iv;Ljava/util/HashMap;Lcom/flurry/sdk/nd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/flurry/sdk/nd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p1, Lcom/flurry/sdk/iv;->e:Lcom/flurry/sdk/jk$a;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/iv;-><init>(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/jk$a;)V

    .line 428
    iput-object p2, p0, Lcom/flurry/sdk/iv;->f:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lcom/flurry/sdk/iv;->h:Lcom/flurry/sdk/nd;

    .line 430
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/in;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/flurry/sdk/iv$a;->a:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lcom/flurry/sdk/jk$c;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/my;->a:Lcom/flurry/sdk/my;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/sdk/io;",
            ">(",
            "Lcom/flurry/sdk/se;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->i()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ir$a;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Lcom/flurry/sdk/iv;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/flurry/sdk/jr$a;->l:Lcom/flurry/sdk/jr$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr$a;->b()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/iv;->c:Z

    .line 476
    return-object p0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/nd;)Lcom/flurry/sdk/iv;
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/flurry/sdk/iv;->f:Ljava/util/HashMap;

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/iv;->g:Z

    .line 658
    new-instance v1, Lcom/flurry/sdk/iv;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/sdk/iv;-><init>(Lcom/flurry/sdk/iv;Ljava/util/HashMap;Lcom/flurry/sdk/nd;)V

    return-object v1
.end method

.method public a(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/jd",
            "<*>;>;)",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/iv$a;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    invoke-super {p0, p1, p2}, Lcom/flurry/sdk/jk$c;->a(Lcom/flurry/sdk/jk$b;Z)V

    .line 789
    return-void
.end method

.method public synthetic a(Lcom/flurry/sdk/jk$b;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/iv$a;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jk$b;Z)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;Z)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/iv$a;)Z
    .locals 2

    .prologue
    .line 755
    iget v0, p0, Lcom/flurry/sdk/iv;->i:I

    invoke-virtual {p1}, Lcom/flurry/sdk/iv$a;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/sdk/io;",
            ">(",
            "Lcom/flurry/sdk/se;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->i()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ir$a;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ji;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ji;",
            ">;)",
            "Lcom/flurry/sdk/ji;"
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ji;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ji;

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/iv$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/flurry/sdk/jk$c;->b(Lcom/flurry/sdk/jk$b;)V

    .line 767
    return-void
.end method

.method public bridge synthetic b(Lcom/flurry/sdk/jk$b;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/iv$a;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/flurry/sdk/iv$a;->a:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/sdk/io;",
            ">(",
            "Lcom/flurry/sdk/se;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->i()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/sdk/ir;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ir$a;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/ku;",
            ">;)",
            "Lcom/flurry/sdk/ku;"
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->c(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ku;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ku;

    goto :goto_0
.end method

.method public c(Lcom/flurry/sdk/iv$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-super {p0, p1}, Lcom/flurry/sdk/jk$c;->a(Lcom/flurry/sdk/jk$b;)V

    .line 778
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/flurry/sdk/iv;->c:Z

    return v0
.end method

.method public e()Lcom/flurry/sdk/nb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/nb",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-super {p0}, Lcom/flurry/sdk/jk$c;->e()Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/flurry/sdk/iv$a;->b:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->c(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lcom/flurry/sdk/iv$a;->c:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->d(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lcom/flurry/sdk/iv$a;->d:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->e(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 730
    :cond_2
    return-object v0
.end method

.method public f()Lcom/flurry/sdk/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/ra",
            "<",
            "Lcom/flurry/sdk/ix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/flurry/sdk/iv;->a:Lcom/flurry/sdk/ra;

    return-object v0
.end method

.method public g()Lcom/flurry/sdk/gx;
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lcom/flurry/sdk/gy;->a()Lcom/flurry/sdk/gx;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/flurry/sdk/rp;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/flurry/sdk/iv;->b:Lcom/flurry/sdk/rp;

    return-object v0
.end method
