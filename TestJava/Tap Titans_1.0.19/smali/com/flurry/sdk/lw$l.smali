.class public final Lcom/flurry/sdk/lw$l;
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
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lw$k",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Short;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/Short;",
            ")V"
        }
    .end annotation

    .prologue
    .line 758
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/lw$k;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 759
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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$l;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lw$l;->r(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method