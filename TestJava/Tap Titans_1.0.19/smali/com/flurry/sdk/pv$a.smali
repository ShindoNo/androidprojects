.class public abstract Lcom/flurry/sdk/pv$a;
.super Lcom/flurry/sdk/pc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/pc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final e:Lcom/flurry/sdk/jw;

.field protected final f:Lcom/flurry/sdk/ip;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/ip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/flurry/sdk/pc;-><init>(Ljava/lang/Class;)V

    .line 47
    iput-object p2, p0, Lcom/flurry/sdk/pv$a;->e:Lcom/flurry/sdk/jw;

    .line 48
    iput-object p3, p0, Lcom/flurry/sdk/pv$a;->f:Lcom/flurry/sdk/ip;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv$a;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 57
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->c(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv$a;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 67
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->f(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 68
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation
.end method
