.class public Lcom/flurry/sdk/le;
.super Lcom/flurry/sdk/ip$a;
.source "SourceFile"


# instance fields
.field protected final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    .line 32
    iput-object p5, p0, Lcom/flurry/sdk/le;->e:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/iw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/le;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/flurry/sdk/iw;->a(Ljava/lang/Object;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/iw;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/le;->c:Lcom/flurry/sdk/mn;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/le;->a(Lcom/flurry/sdk/iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/flurry/sdk/mn;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
