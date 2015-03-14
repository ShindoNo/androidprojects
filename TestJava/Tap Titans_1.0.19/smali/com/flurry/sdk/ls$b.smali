.class final Lcom/flurry/sdk/ls$b;
.super Lcom/flurry/sdk/lh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lh",
        "<",
        "Lcom/flurry/sdk/rt;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/ls$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/sdk/ls$b;

    invoke-direct {v0}, Lcom/flurry/sdk/ls$b;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ls$b;->a:Lcom/flurry/sdk/ls$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/flurry/sdk/rt;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lh;-><init>(Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public static d()Lcom/flurry/sdk/ls$b;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/sdk/ls$b;->a:Lcom/flurry/sdk/ls$b;

    return-object v0
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
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ls$b;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/rt;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/rt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    .line 89
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls$b;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls$b;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-class v0, Lcom/flurry/sdk/rt;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method
