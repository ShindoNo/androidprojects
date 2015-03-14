.class public final Lcom/flurry/sdk/kq$d;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field protected final i:Lcom/flurry/sdk/mo;

.field protected final j:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/kq$d;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kq$d;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    .line 381
    iget-object v0, p1, Lcom/flurry/sdk/kq$d;->i:Lcom/flurry/sdk/mo;

    iput-object v0, p0, Lcom/flurry/sdk/kq$d;->i:Lcom/flurry/sdk/mo;

    .line 382
    iget-object v0, p1, Lcom/flurry/sdk/kq$d;->j:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/sdk/kq$d;->j:Ljava/lang/reflect/Method;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mo;)V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;)V

    .line 375
    iput-object p5, p0, Lcom/flurry/sdk/kq$d;->i:Lcom/flurry/sdk/mo;

    .line 376
    invoke-virtual {p5}, Lcom/flurry/sdk/mo;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq$d;->j:Ljava/lang/reflect/Method;

    .line 377
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kq$d;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$d;

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
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kq$d;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/sdk/kq$d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$d;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/kq$d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/kq$d;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lcom/flurry/sdk/kq$d;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kq$d;-><init>(Lcom/flurry/sdk/kq$d;Lcom/flurry/sdk/jd;)V

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/kq$d;->i:Lcom/flurry/sdk/mo;

    return-object v0
.end method
