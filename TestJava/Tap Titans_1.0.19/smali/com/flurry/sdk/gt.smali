.class public abstract Lcom/flurry/sdk/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gs;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gs;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/sdk/gs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/gs;)I
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->a()Lcom/flurry/sdk/fk;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/sdk/gp;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/sdk/fk;)I

    move-result v0

    return v0
.end method

.method public abstract a()Lcom/flurry/sdk/fk;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/flurry/sdk/gs;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gt;->a(Lcom/flurry/sdk/gs;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p1, p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    instance-of v2, p1, Lcom/flurry/sdk/gs;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    check-cast p1, Lcom/flurry/sdk/gs;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gt;->a(Lcom/flurry/sdk/gs;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gt;->a()Lcom/flurry/sdk/fk;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/gp;->b(Ljava/lang/Object;Lcom/flurry/sdk/fk;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/flurry/sdk/gp;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/gp;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
