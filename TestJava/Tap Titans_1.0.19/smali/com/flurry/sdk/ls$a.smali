.class final Lcom/flurry/sdk/ls$a;
.super Lcom/flurry/sdk/lh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lh",
        "<",
        "Lcom/flurry/sdk/rg;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/ls$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/flurry/sdk/ls$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ls$a;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ls$a;->a:Lcom/flurry/sdk/ls$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/flurry/sdk/rg;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lh;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static d()Lcom/flurry/sdk/ls$a;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/sdk/ls$a;->a:Lcom/flurry/sdk/ls$a;

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
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ls$a;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/rg;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/rg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls$a;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-class v0, Lcom/flurry/sdk/rg;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0
.end method
