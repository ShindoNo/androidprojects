.class public Lcom/flurry/sdk/nl;
.super Lcom/flurry/sdk/nh;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/nh;-><init>(Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ip;)V

    .line 30
    iput-object p3, p0, Lcom/flurry/sdk/nl;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/nl;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/nl;->b:Lcom/flurry/sdk/ne;

    invoke-interface {v1, p1}, Lcom/flurry/sdk/ne;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
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
    .line 64
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 65
    return-void
.end method