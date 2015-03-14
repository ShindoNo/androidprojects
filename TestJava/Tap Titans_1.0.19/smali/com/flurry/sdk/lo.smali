.class public Lcom/flurry/sdk/lo;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lw",
        "<",
        "Ljava/util/EnumMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jd",
            "<*>;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lw;-><init>(Ljava/lang/Class;)V

    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/lo;->a:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lcom/flurry/sdk/lo;->b:Lcom/flurry/sdk/jd;

    .line 47
    iput-object p3, p0, Lcom/flurry/sdk/lo;->c:Lcom/flurry/sdk/jd;

    .line 48
    return-void
.end method

.method private d()Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/flurry/sdk/lo;->a:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
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
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;Lcom/flurry/sdk/jv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jv;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/util/EnumMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hg;",
            "Lcom/flurry/sdk/iw;",
            ")",
            "Ljava/util/EnumMap",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_0

    .line 56
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/lo;->d()Ljava/util/EnumMap;

    move-result-object v2

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->c:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_3

    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/lo;->b:Lcom/flurry/sdk/jd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 62
    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/lo;->a:Ljava/lang/Class;

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v1

    .line 70
    sget-object v3, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    .line 72
    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/lo;->c:Lcom/flurry/sdk/jd;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jd;->a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_3
    return-object v2
.end method
