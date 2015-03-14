.class public final Lcom/flurry/sdk/kq$a;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field protected final i:Lcom/flurry/sdk/mm;

.field protected final j:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/kq$a;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kq$a;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    .line 546
    iget-object v0, p1, Lcom/flurry/sdk/kq$a;->i:Lcom/flurry/sdk/mm;

    iput-object v0, p0, Lcom/flurry/sdk/kq$a;->i:Lcom/flurry/sdk/mm;

    .line 547
    iget-object v0, p1, Lcom/flurry/sdk/kq$a;->j:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/sdk/kq$a;->j:Ljava/lang/reflect/Field;

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mm;)V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;)V

    .line 540
    iput-object p5, p0, Lcom/flurry/sdk/kq$a;->i:Lcom/flurry/sdk/mm;

    .line 541
    invoke-virtual {p5}, Lcom/flurry/sdk/mm;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq$a;->j:Ljava/lang/reflect/Field;

    .line 542
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kq$a;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kq$a;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/sdk/kq$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/kq$a;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/kq$a;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lcom/flurry/sdk/kq$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kq$a;-><init>(Lcom/flurry/sdk/kq$a;Lcom/flurry/sdk/jd;)V

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->i:Lcom/flurry/sdk/mm;

    return-object v0
.end method
