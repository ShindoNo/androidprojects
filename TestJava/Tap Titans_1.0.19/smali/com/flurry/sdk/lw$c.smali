.class public final Lcom/flurry/sdk/lw$c;
.super Lcom/flurry/sdk/lw$k;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lw$k",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/lw$k;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 715
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$c;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/lw$c;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$c;->o(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$c;->o(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
