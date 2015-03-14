.class public abstract Lcom/flurry/sdk/os;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/os$c;,
        Lcom/flurry/sdk/os$a;,
        Lcom/flurry/sdk/os$e;,
        Lcom/flurry/sdk/os$b;,
        Lcom/flurry/sdk/os$f;,
        Lcom/flurry/sdk/os$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static a()Lcom/flurry/sdk/os;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/flurry/sdk/os$b;->a:Lcom/flurry/sdk/os$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/flurry/sdk/os$d;

    invoke-virtual {p1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/os$d;-><init>(Lcom/flurry/sdk/jh;Lcom/flurry/sdk/os;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Class;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/os$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/flurry/sdk/os$d;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/os$d;-><init>(Lcom/flurry/sdk/jh;Lcom/flurry/sdk/os;)V

    return-object v1
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/os;"
        }
    .end annotation
.end method
