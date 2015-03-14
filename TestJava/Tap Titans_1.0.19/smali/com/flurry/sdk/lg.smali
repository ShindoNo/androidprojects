.class public Lcom/flurry/sdk/lg;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;",
        "Lcom/flurry/sdk/jp;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/se;

.field protected final b:Lcom/flurry/sdk/ip;

.field protected c:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)V
    .locals 1

    .prologue
    .line 29
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/flurry/sdk/lg;->a:Lcom/flurry/sdk/se;

    .line 31
    iput-object p2, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/ip;

    .line 32
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
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lg;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/jd;

    .line 46
    return-void
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
