.class public Lcom/flurry/sdk/nj;
.super Lcom/flurry/sdk/nv;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/nv;-><init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;)V

    .line 33
    iput-object p3, p0, Lcom/flurry/sdk/nj;->a:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->g(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Ljava/lang/Class;)V
    .locals 0
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
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/nj;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Ljava/lang/Class;)V

    .line 82
    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->g(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 47
    return-void
.end method

.method protected final b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Ljava/lang/Class;)V
    .locals 0
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
    .line 120
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 121
    return-void
.end method

.method public c(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->g(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 61
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
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->h(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 103
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
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->h(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 89
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
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nj;->h(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 96
    return-void
.end method

.method protected final g(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 115
    return-void
.end method

.method protected final h(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/nj;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/nj;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v1, p1}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
