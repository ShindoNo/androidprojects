.class public final Lcom/flurry/sdk/pv$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pv$a",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    const-class v0, [D

    invoke-direct {p0, v0, v1, v1}, Lcom/flurry/sdk/pv$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 0
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
    .line 456
    return-object p0
.end method

.method public a([DLcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 464
    aget-wide v2, p1, v0

    invoke-virtual {p2, v2, v3}, Lcom/flurry/sdk/hc;->a(D)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
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
    .line 443
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv$e;->a([DLcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method
