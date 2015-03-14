.class public Lcom/flurry/sdk/jr;
.super Lcom/flurry/sdk/jk$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/jk$c",
        "<",
        "Lcom/flurry/sdk/jr$a;",
        "Lcom/flurry/sdk/jr;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/sdk/kd$a;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/flurry/sdk/ok;


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
    .line 490
    const-class v0, Lcom/flurry/sdk/jr$a;

    invoke-static {v0}, Lcom/flurry/sdk/jr;->d(Ljava/lang/Class;)I

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

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/ok;

    .line 493
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/jk$a;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p1, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/nd;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/jk$c;-><init>(Lcom/flurry/sdk/jk$c;Lcom/flurry/sdk/jk$a;Lcom/flurry/sdk/nd;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    .line 521
    iget-object v0, p1, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    iput-object v0, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    .line 522
    iget-object v0, p1, Lcom/flurry/sdk/jr;->b:Ljava/lang/Class;

    iput-object v0, p0, Lcom/flurry/sdk/jr;->b:Ljava/lang/Class;

    .line 523
    iget-object v0, p1, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/ok;

    iput-object v0, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/ok;

    .line 524
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jr;Ljava/util/HashMap;Lcom/flurry/sdk/nd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
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
    .line 510
    iget-object v0, p1, Lcom/flurry/sdk/jr;->e:Lcom/flurry/sdk/jk$a;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/jr;-><init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/jk$a;)V

    .line 511
    iput-object p2, p0, Lcom/flurry/sdk/jr;->f:Ljava/util/HashMap;

    .line 512
    iput-object p3, p0, Lcom/flurry/sdk/jr;->h:Lcom/flurry/sdk/nd;

    .line 513
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/in;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lcom/flurry/sdk/jr$a;->a:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-super {p0}, Lcom/flurry/sdk/jk$c;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v0

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
    .line 800
    invoke-virtual {p0}, Lcom/flurry/sdk/jr;->i()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ir$a;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/mj;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/jh",
            "<*>;>;)",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/flurry/sdk/jr;->k()Lcom/flurry/sdk/jb;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 988
    if-eqz v0, :cond_0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/jr;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jh;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/nd;)Lcom/flurry/sdk/jr;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/flurry/sdk/jr;->f:Ljava/util/HashMap;

    .line 775
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/jr;->g:Z

    .line 776
    new-instance v1, Lcom/flurry/sdk/jr;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/sdk/jr;-><init>(Lcom/flurry/sdk/jr;Ljava/util/HashMap;Lcom/flurry/sdk/nd;)V

    return-object v1
.end method

.method public synthetic a(Lcom/flurry/sdk/jk$b;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jr;->c(Lcom/flurry/sdk/jr$a;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/jk$b;Z)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;Z)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jr$a;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    invoke-super {p0, p1, p2}, Lcom/flurry/sdk/jk$c;->a(Lcom/flurry/sdk/jk$b;Z)V

    .line 901
    return-void
.end method

.method public a(Lcom/flurry/sdk/jr$a;)Z
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Lcom/flurry/sdk/jr;->i:I

    invoke-virtual {p1}, Lcom/flurry/sdk/jr$a;->b()I

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
    .line 973
    invoke-virtual {p0}, Lcom/flurry/sdk/jr;->i()Lcom/flurry/sdk/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/sdk/ir;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ir$a;)Lcom/flurry/sdk/io;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/flurry/sdk/jk$b;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jr;->b(Lcom/flurry/sdk/jr$a;)V

    return-void
.end method

.method public b(Lcom/flurry/sdk/jr$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    invoke-super {p0, p1}, Lcom/flurry/sdk/jk$c;->b(Lcom/flurry/sdk/jk$b;)V

    .line 879
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 818
    sget-object v0, Lcom/flurry/sdk/jr$a;->a:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/flurry/sdk/jr$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 889
    invoke-super {p0, p1}, Lcom/flurry/sdk/jk$c;->a(Lcom/flurry/sdk/jk$b;)V

    .line 890
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 823
    sget-object v0, Lcom/flurry/sdk/jr$a;->e:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/flurry/sdk/jr$a;->l:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

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
    .line 834
    invoke-super {p0}, Lcom/flurry/sdk/jk$c;->e()Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/flurry/sdk/jr$a;->b:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 839
    :cond_0
    sget-object v1, Lcom/flurry/sdk/jr$a;->c:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->b(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 842
    :cond_1
    sget-object v1, Lcom/flurry/sdk/jr$a;->d:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/nb;->e(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 845
    :cond_2
    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/flurry/sdk/jr;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public g()Lcom/flurry/sdk/kd$a;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/flurry/sdk/jr;->a:Lcom/flurry/sdk/kd$a;

    .line 922
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jr$a;->g:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/kd$a;->a:Lcom/flurry/sdk/kd$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/kd$a;->b:Lcom/flurry/sdk/kd$a;

    goto :goto_0
.end method

.method public h()Lcom/flurry/sdk/ok;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/flurry/sdk/jr;->c:Lcom/flurry/sdk/ok;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/jr;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
