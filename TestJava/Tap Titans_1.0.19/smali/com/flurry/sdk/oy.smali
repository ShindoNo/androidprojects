.class public abstract Lcom/flurry/sdk/oy;
.super Lcom/flurry/sdk/pc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/pc",
        "<TT;>;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/sdk/se;

.field protected final c:Lcom/flurry/sdk/jw;

.field protected d:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/flurry/sdk/ip;

.field protected f:Lcom/flurry/sdk/os;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/pc;-><init>(Ljava/lang/Class;Z)V

    .line 72
    iput-object p2, p0, Lcom/flurry/sdk/oy;->b:Lcom/flurry/sdk/se;

    .line 74
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/sdk/se;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/oy;->a:Z

    .line 75
    iput-object p4, p0, Lcom/flurry/sdk/oy;->c:Lcom/flurry/sdk/jw;

    .line 76
    iput-object p5, p0, Lcom/flurry/sdk/oy;->e:Lcom/flurry/sdk/ip;

    .line 77
    iput-object p6, p0, Lcom/flurry/sdk/oy;->d:Lcom/flurry/sdk/jh;

    .line 78
    invoke-static {}, Lcom/flurry/sdk/os;->a()Lcom/flurry/sdk/os;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/oy;->f:Lcom/flurry/sdk/os;

    .line 79
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/os;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/oy;->e:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 180
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 181
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/oy;->f:Lcom/flurry/sdk/os;

    .line 183
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method protected final a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/oy;->e:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 167
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/oy;->f:Lcom/flurry/sdk/os;

    .line 170
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/flurry/sdk/oy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/oy;->b:Lcom/flurry/sdk/se;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/oy;->d:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/oy;->b:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/oy;->e:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/oy;->d:Lcom/flurry/sdk/jh;

    .line 157
    :cond_0
    return-void
.end method

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
    .line 85
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->b()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oy;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 87
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 88
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
    .line 95
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->c(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oy;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 97
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->f(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 98
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
