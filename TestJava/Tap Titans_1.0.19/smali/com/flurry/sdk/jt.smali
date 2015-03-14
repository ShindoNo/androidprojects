.class public abstract Lcom/flurry/sdk/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/flurry/sdk/se;


# instance fields
.field protected final b:Lcom/flurry/sdk/jr;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/flurry/sdk/qp;->a()Lcom/flurry/sdk/qp;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/qp;->a(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/se;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jr;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    .line 40
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/jt;->c:Ljava/lang/Class;

    .line 41
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->f()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
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
.end method

.method public abstract a(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/ip;",
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
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ip;",
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
.end method

.method public abstract a(Ljava/lang/Class;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lcom/flurry/sdk/ip;",
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
.end method

.method public a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/se;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->m()Lcom/flurry/sdk/qp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/qp;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/jt;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract a(JLcom/flurry/sdk/hc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/flurry/sdk/jt;->d()Lcom/flurry/sdk/jh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 518
    return-void
.end method

.method public abstract a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/hc;Ljava/lang/Object;Lcom/flurry/sdk/js;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/flurry/sdk/jt;->d()Lcom/flurry/sdk/jh;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p0}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method public abstract a(Ljava/util/Date;Lcom/flurry/sdk/hc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/sdk/jr$a;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    return v0
.end method

.method public abstract b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
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
.end method

.method public final b()Lcom/flurry/sdk/ok;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/jt;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->h()Lcom/flurry/sdk/ok;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(JLcom/flurry/sdk/hc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Date;Lcom/flurry/sdk/hc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation
.end method

.method public abstract c()Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
