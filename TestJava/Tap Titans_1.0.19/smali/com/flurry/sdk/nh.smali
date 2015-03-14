.class public Lcom/flurry/sdk/nh;
.super Lcom/flurry/sdk/nv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/nv;-><init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/nh;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/hc;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/nh;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v0, p1, p3}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/nh;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 36
    return-void
.end method

.method public c(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/nh;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 55
    return-void
.end method

.method public d(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 109
    return-void
.end method

.method public e(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 91
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 92
    return-void
.end method

.method public f(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 100
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 101
    return-void
.end method
