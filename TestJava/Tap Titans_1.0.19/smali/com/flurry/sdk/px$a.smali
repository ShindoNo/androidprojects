.class public final Lcom/flurry/sdk/px$a;
.super Lcom/flurry/sdk/pq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/px;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pq",
        "<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/pq;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 68
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/px$a;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->a(Z)V

    .line 78
    return-void
.end method