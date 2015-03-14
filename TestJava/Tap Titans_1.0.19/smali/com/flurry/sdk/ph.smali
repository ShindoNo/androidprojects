.class public final Lcom/flurry/sdk/ph;
.super Lcom/flurry/sdk/pu;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pu",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ip;)V
    .locals 1

    .prologue
    .line 34
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/pu;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/ip;)V

    .line 35
    return-void
.end method

.method private final b(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 81
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 84
    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/sdk/ph;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 95
    :cond_1
    return-void
.end method

.method private final c(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    const/4 v1, 0x0

    .line 100
    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    iget-object v3, p0, Lcom/flurry/sdk/ph;->a:Lcom/flurry/sdk/jh;

    .line 104
    :goto_0
    if-ge v1, v2, :cond_1

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v3, v0, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {p0, p3, v0, p1, v1}, Lcom/flurry/sdk/ph;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/ph;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ph;->a(Lcom/flurry/sdk/jh;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iput-object v0, p0, Lcom/flurry/sdk/ph;->a:Lcom/flurry/sdk/jh;

    .line 49
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/ph;->a(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/ph;->a(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    iget-object v0, p0, Lcom/flurry/sdk/ph;->a:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ph;->b(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 61
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->c()V

    .line 62
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ph;->c(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 69
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->c(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/ph;->a:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ph;->b(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 75
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->f(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 76
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ph;->c(Ljava/util/List;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method
