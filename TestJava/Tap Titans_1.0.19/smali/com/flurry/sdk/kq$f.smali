.class public final Lcom/flurry/sdk/kq$f;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field protected final i:Lcom/flurry/sdk/mo;

.field protected final j:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/kq$f;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kq$f;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    .line 454
    iget-object v0, p1, Lcom/flurry/sdk/kq$f;->i:Lcom/flurry/sdk/mo;

    iput-object v0, p0, Lcom/flurry/sdk/kq$f;->i:Lcom/flurry/sdk/mo;

    .line 455
    iget-object v0, p1, Lcom/flurry/sdk/kq$f;->j:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/sdk/kq$f;->j:Ljava/lang/reflect/Method;

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mo;)V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;)V

    .line 448
    iput-object p5, p0, Lcom/flurry/sdk/kq$f;->i:Lcom/flurry/sdk/mo;

    .line 449
    invoke-virtual {p5}, Lcom/flurry/sdk/mo;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq$f;->j:Ljava/lang/reflect/Method;

    .line 450
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kq$f;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 488
    sget-object v1, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$f;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    if-nez v0, :cond_1

    .line 509
    new-instance v0, Lcom/flurry/sdk/je;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem deserializing \'setterless\' property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/kq$f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': get method returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kq$f;->a(Ljava/lang/Exception;)Ljava/io/IOException;

    goto :goto_0

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/kq$f;->d:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should never call \'set\' on setterless property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/kq$f;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lcom/flurry/sdk/kq$f;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kq$f;-><init>(Lcom/flurry/sdk/kq$f;Lcom/flurry/sdk/jd;)V

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/flurry/sdk/kq$f;->i:Lcom/flurry/sdk/mo;

    return-object v0
.end method
