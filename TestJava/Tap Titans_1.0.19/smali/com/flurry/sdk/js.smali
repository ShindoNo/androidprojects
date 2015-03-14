.class public abstract Lcom/flurry/sdk/js;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/js$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
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

.method public abstract a()Lcom/flurry/sdk/js$a;
.end method

.method public abstract a(Lcom/flurry/sdk/js$a;)Lcom/flurry/sdk/js;
.end method

.method public final a(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/js$a;->a(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/js;->a(Lcom/flurry/sdk/js$a;)Lcom/flurry/sdk/js;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/js$a;->b(Lcom/flurry/sdk/ju;)Lcom/flurry/sdk/js$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/js;->a(Lcom/flurry/sdk/js$a;)Lcom/flurry/sdk/js;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method public abstract c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jr;",
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
