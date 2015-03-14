.class public Lcom/flurry/sdk/ls;
.super Lcom/flurry/sdk/lh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ls$1;,
        Lcom/flurry/sdk/ls$a;,
        Lcom/flurry/sdk/ls$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lh",
        "<",
        "Lcom/flurry/sdk/he;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/flurry/sdk/ls;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/sdk/ls;

    invoke-direct {v0}, Lcom/flurry/sdk/ls;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ls;->a:Lcom/flurry/sdk/ls;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/he;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lh;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/sdk/jd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<+",
            "Lcom/flurry/sdk/he;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/rt;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/flurry/sdk/ls$b;->d()Lcom/flurry/sdk/ls$b;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lcom/flurry/sdk/rg;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lcom/flurry/sdk/ls$a;->d()Lcom/flurry/sdk/ls$a;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ls;->a:Lcom/flurry/sdk/ls;

    goto :goto_0
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ls;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/he;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Lcom/flurry/sdk/he;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/flurry/sdk/ls$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/he;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rt;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->e()Lcom/flurry/sdk/rp;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/ls;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/rp;)Lcom/flurry/sdk/rg;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
