.class public final Lcom/flurry/sdk/kq$b;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field protected final i:Lcom/flurry/sdk/kq;

.field protected final j:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/kq$b;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kq$b;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    .line 741
    iget-object v0, p1, Lcom/flurry/sdk/kq$b;->i:Lcom/flurry/sdk/kq;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq$b;->i:Lcom/flurry/sdk/kq;

    .line 742
    iget-object v0, p1, Lcom/flurry/sdk/kq$b;->j:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lcom/flurry/sdk/kq$b;->j:Ljava/lang/reflect/Constructor;

    .line 743
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/kq;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kq;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;)V

    .line 734
    iput-object p1, p0, Lcom/flurry/sdk/kq$b;->i:Lcom/flurry/sdk/kq;

    .line 735
    iput-object p2, p0, Lcom/flurry/sdk/kq$b;->j:Ljava/lang/reflect/Constructor;

    .line 736
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kq$b;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    .line 769
    sget-object v2, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v1, v2, :cond_1

    .line 770
    iget-object v1, p0, Lcom/flurry/sdk/kq$b;->f:Lcom/flurry/sdk/kq$e;

    if-nez v1, :cond_0

    .line 782
    :goto_0
    invoke-virtual {p0, p3, v0}, Lcom/flurry/sdk/kq$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$b;->f:Lcom/flurry/sdk/kq$e;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kq$e;->a(Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/kq$b;->e:Lcom/flurry/sdk/jv;

    if-eqz v1, :cond_2

    .line 772
    iget-object v0, p0, Lcom/flurry/sdk/kq$b;->d:Lcom/flurry/sdk/jd;

    iget-object v1, p0, Lcom/flurry/sdk/kq$b;->e:Lcom/flurry/sdk/jv;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/kq$b;->j:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 780
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/kq$b;->d:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 776
    :catch_0
    move-exception v1

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/kq$b;->j:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/qv;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/flurry/sdk/kq$b;->i:Lcom/flurry/sdk/kq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    return-void
.end method

.method public b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/kq$b;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v0, Lcom/flurry/sdk/kq$b;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kq$b;-><init>(Lcom/flurry/sdk/kq$b;Lcom/flurry/sdk/jd;)V

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/flurry/sdk/kq$b;->i:Lcom/flurry/sdk/kq;

    invoke-virtual {v0}, Lcom/flurry/sdk/kq;->b()Lcom/flurry/sdk/mn;

    move-result-object v0

    return-object v0
.end method