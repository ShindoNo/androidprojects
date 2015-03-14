.class public Lcom/flurry/sdk/oh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Lcom/flurry/sdk/of;


# instance fields
.field protected final a:Lcom/flurry/sdk/mt;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;"
        }
    .end annotation
.end field

.field protected c:[Lcom/flurry/sdk/of;

.field protected d:Lcom/flurry/sdk/oc;

.field protected e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/sdk/of;

    sput-object v0, Lcom/flurry/sdk/oh;->f:[Lcom/flurry/sdk/of;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/mt;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/oh;->a:Lcom/flurry/sdk/mt;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/oc;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/flurry/sdk/oh;->d:Lcom/flurry/sdk/oc;

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flurry/sdk/oh;->e:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/of;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    .line 90
    return-void
.end method

.method public a([Lcom/flurry/sdk/of;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/sdk/oh;->c:[Lcom/flurry/sdk/of;

    .line 94
    return-void
.end method

.method public b()Lcom/flurry/sdk/jh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oh;->d:Lcom/flurry/sdk/oc;

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_1
    sget-object v2, Lcom/flurry/sdk/oh;->f:[Lcom/flurry/sdk/of;

    .line 128
    :goto_1
    new-instance v0, Lcom/flurry/sdk/og;

    iget-object v1, p0, Lcom/flurry/sdk/oh;->a:Lcom/flurry/sdk/mt;

    invoke-virtual {v1}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/oh;->c:[Lcom/flurry/sdk/of;

    iget-object v4, p0, Lcom/flurry/sdk/oh;->d:Lcom/flurry/sdk/oc;

    iget-object v5, p0, Lcom/flurry/sdk/oh;->e:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/og;-><init>(Lcom/flurry/sdk/se;[Lcom/flurry/sdk/of;[Lcom/flurry/sdk/of;Lcom/flurry/sdk/oc;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/sdk/oh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/flurry/sdk/of;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/of;

    move-object v2, v0

    goto :goto_1
.end method

.method public c()Lcom/flurry/sdk/og;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/sdk/oh;->a:Lcom/flurry/sdk/mt;

    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/og;->a(Ljava/lang/Class;)Lcom/flurry/sdk/og;

    move-result-object v0

    return-object v0
.end method
