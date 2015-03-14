.class public Lcom/flurry/sdk/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/flurry/sdk/sf;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lcom/flurry/sdk/ry;

.field protected e:Lcom/flurry/sdk/rx;

.field protected f:Lcom/flurry/sdk/hk;

.field protected g:I

.field protected h:I

.field protected i:Lcom/flurry/sdk/ia;

.field protected j:Lcom/flurry/sdk/ic;

.field protected k:Lcom/flurry/sdk/ih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/flurry/sdk/hg$a;->a()I

    move-result v0

    sput v0, Lcom/flurry/sdk/ha;->a:I

    .line 71
    invoke-static {}, Lcom/flurry/sdk/hc$a;->a()I

    move-result v0

    sput v0, Lcom/flurry/sdk/ha;->b:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ha;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ha;-><init>(Lcom/flurry/sdk/hk;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hk;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/flurry/sdk/ry;->a()Lcom/flurry/sdk/ry;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ha;->d:Lcom/flurry/sdk/ry;

    .line 101
    invoke-static {}, Lcom/flurry/sdk/rx;->a()Lcom/flurry/sdk/rx;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ha;->e:Lcom/flurry/sdk/rx;

    .line 121
    sget v0, Lcom/flurry/sdk/ha;->a:I

    iput v0, p0, Lcom/flurry/sdk/ha;->g:I

    .line 126
    sget v0, Lcom/flurry/sdk/ha;->b:I

    iput v0, p0, Lcom/flurry/sdk/ha;->h:I

    .line 171
    iput-object p1, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hg$a;)Lcom/flurry/sdk/ha;
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/flurry/sdk/ha;->g:I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg$a;->c()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/ha;->g:I

    .line 256
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/hk;)Lcom/flurry/sdk/ha;
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    .line 476
    return-object p0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/gz;)Lcom/flurry/sdk/hc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ib;

    move-result-object v1

    .line 677
    invoke-virtual {v1, p2}, Lcom/flurry/sdk/ib;->a(Lcom/flurry/sdk/gz;)V

    .line 678
    sget-object v0, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    if-ne p2, v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ib;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 683
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/ha;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hc;

    move-result-object v0

    .line 690
    :goto_0
    return-object v0

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/ha;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/gz;Lcom/flurry/sdk/ib;)Ljava/io/Writer;

    move-result-object v0

    .line 687
    iget-object v2, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    if-eqz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ib;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    .line 690
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ha;->a(Ljava/io/Writer;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hc;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/flurry/sdk/hw;

    iget v1, p0, Lcom/flurry/sdk/ha;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/sdk/hw;-><init>(Lcom/flurry/sdk/ib;ILcom/flurry/sdk/hk;Ljava/io/OutputStream;)V

    .line 866
    iget-object v1, p0, Lcom/flurry/sdk/ha;->i:Lcom/flurry/sdk/ia;

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/flurry/sdk/ha;->i:Lcom/flurry/sdk/ia;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/ia;)Lcom/flurry/sdk/hc;

    .line 869
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/flurry/sdk/hc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ib;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/flurry/sdk/ha;->k:Lcom/flurry/sdk/ih;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ib;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/io/Writer;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    new-instance v0, Lcom/flurry/sdk/hy;

    iget v1, p0, Lcom/flurry/sdk/ha;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/sdk/hy;-><init>(Lcom/flurry/sdk/ib;ILcom/flurry/sdk/hk;Ljava/io/Writer;)V

    .line 846
    iget-object v1, p0, Lcom/flurry/sdk/ha;->i:Lcom/flurry/sdk/ia;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/flurry/sdk/ha;->i:Lcom/flurry/sdk/ia;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hy;->a(Lcom/flurry/sdk/ia;)Lcom/flurry/sdk/hc;

    .line 849
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/hg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ib;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/flurry/sdk/ha;->j:Lcom/flurry/sdk/ic;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/flurry/sdk/ha;->j:Lcom/flurry/sdk/ic;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/ic;->a(Lcom/flurry/sdk/ib;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/io/InputStream;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hg;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lcom/flurry/sdk/ho;

    invoke-direct {v0, p2, p1}, Lcom/flurry/sdk/ho;-><init>(Lcom/flurry/sdk/ib;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/flurry/sdk/ha;->g:I

    iget-object v2, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    iget-object v3, p0, Lcom/flurry/sdk/ha;->e:Lcom/flurry/sdk/rx;

    iget-object v4, p0, Lcom/flurry/sdk/ha;->d:Lcom/flurry/sdk/ry;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/ho;->a(ILcom/flurry/sdk/hk;Lcom/flurry/sdk/rx;Lcom/flurry/sdk/ry;)Lcom/flurry/sdk/hg;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/flurry/sdk/hg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ib;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/flurry/sdk/ha;->j:Lcom/flurry/sdk/ic;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/flurry/sdk/ha;->j:Lcom/flurry/sdk/ic;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/sdk/ic;->a(Lcom/flurry/sdk/ib;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ha;->a(Ljava/io/Reader;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hg;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Reader;Lcom/flurry/sdk/ib;)Lcom/flurry/sdk/hg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/flurry/sdk/hv;

    iget v2, p0, Lcom/flurry/sdk/ha;->g:I

    iget-object v4, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    iget-object v1, p0, Lcom/flurry/sdk/ha;->d:Lcom/flurry/sdk/ry;

    sget-object v3, Lcom/flurry/sdk/hg$a;->j:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v3}, Lcom/flurry/sdk/ha;->b(Lcom/flurry/sdk/hg$a;)Z

    move-result v3

    sget-object v5, Lcom/flurry/sdk/hg$a;->i:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/ha;->b(Lcom/flurry/sdk/hg$a;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/flurry/sdk/ry;->a(ZZ)Lcom/flurry/sdk/ry;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hv;-><init>(Lcom/flurry/sdk/ib;ILjava/io/Reader;Lcom/flurry/sdk/hk;Lcom/flurry/sdk/ry;)V

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/hk;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/flurry/sdk/ha;->f:Lcom/flurry/sdk/hk;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;Z)Lcom/flurry/sdk/ib;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Lcom/flurry/sdk/ib;

    invoke-virtual {p0}, Lcom/flurry/sdk/ha;->b()Lcom/flurry/sdk/sf;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flurry/sdk/ib;-><init>(Lcom/flurry/sdk/sf;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/flurry/sdk/gz;Lcom/flurry/sdk/ib;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    if-ne p2, v0, :cond_0

    .line 876
    new-instance v0, Lcom/flurry/sdk/il;

    invoke-direct {v0, p3, p1}, Lcom/flurry/sdk/il;-><init>(Lcom/flurry/sdk/ib;Ljava/io/OutputStream;)V

    .line 879
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/flurry/sdk/gz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/sf;
    .locals 3

    .prologue
    .line 905
    sget-object v0, Lcom/flurry/sdk/ha;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 906
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 908
    :goto_0
    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/flurry/sdk/sf;

    invoke-direct {v0}, Lcom/flurry/sdk/sf;-><init>()V

    .line 910
    sget-object v1, Lcom/flurry/sdk/ha;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0

    .line 906
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/sf;

    goto :goto_0
.end method

.method public final b(Lcom/flurry/sdk/hg$a;)Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/flurry/sdk/ha;->g:I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg$a;->c()I

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
