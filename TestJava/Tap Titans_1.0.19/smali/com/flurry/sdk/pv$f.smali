.class public final Lcom/flurry/sdk/pv$f;
.super Lcom/flurry/sdk/pv$a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pv$a",
        "<[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pv$f;-><init>(Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/jw;)V
    .locals 2

    .prologue
    .line 418
    const-class v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/flurry/sdk/pv$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/pc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/flurry/sdk/pv$f;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/pv$f;-><init>(Lcom/flurry/sdk/jw;)V

    return-object v0
.end method

.method public a([FLcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 430
    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/hc;->a(F)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 413
    check-cast p1, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv$f;->a([FLcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method
