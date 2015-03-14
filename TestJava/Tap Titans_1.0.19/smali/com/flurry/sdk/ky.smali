.class public Lcom/flurry/sdk/ky;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/sdk/mq;

.field protected final j:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/ky;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ky;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/kq;-><init>(Lcom/flurry/sdk/kq;Lcom/flurry/sdk/jd;)V

    .line 73
    iget-object v0, p1, Lcom/flurry/sdk/ky;->i:Lcom/flurry/sdk/mq;

    iput-object v0, p0, Lcom/flurry/sdk/ky;->i:Lcom/flurry/sdk/mq;

    .line 74
    iget-object v0, p1, Lcom/flurry/sdk/ky;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/sdk/ky;->j:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mq;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;)V

    .line 66
    iput-object p5, p0, Lcom/flurry/sdk/ky;->i:Lcom/flurry/sdk/mq;

    .line 67
    iput p6, p0, Lcom/flurry/sdk/ky;->h:I

    .line 68
    iput-object p7, p0, Lcom/flurry/sdk/ky;->j:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ky;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/ky;

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
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ky;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/sdk/ky;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/ky;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/ky;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/flurry/sdk/ky;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/ky;Lcom/flurry/sdk/jd;)V

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/mn;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/ky;->i:Lcom/flurry/sdk/mq;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/sdk/ky;->j:Ljava/lang/Object;

    return-object v0
.end method
