.class Lcom/flurry/sdk/fk$o;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/flurry/sdk/fk$m;",
        "Lcom/flurry/sdk/fk;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fk$o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/fk$o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/fk$m;Lcom/flurry/sdk/fk;)Lcom/flurry/sdk/fk;
    .locals 3

    .prologue
    .line 1071
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/fk$o;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Lcom/flurry/sdk/fl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t redefine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/flurry/sdk/fk;
    .locals 2

    .prologue
    .line 1054
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1055
    sget-object v1, Lcom/flurry/sdk/fk;->e:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk$v;

    .line 1056
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/fk;->a(Lcom/flurry/sdk/fk$v;)Lcom/flurry/sdk/fk;

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    .line 1057
    :cond_0
    new-instance v0, Lcom/flurry/sdk/fk$m;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/fk$m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 1061
    :goto_1
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fk;

    goto :goto_0

    .line 1059
    :cond_1
    check-cast p1, Lcom/flurry/sdk/fk$m;

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/flurry/sdk/fk$o;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/flurry/sdk/fk;)Z
    .locals 1

    .prologue
    .line 1064
    check-cast p1, Lcom/flurry/sdk/fk$n;

    iget-object v0, p1, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/Object;)Lcom/flurry/sdk/fk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/fk;)V
    .locals 1

    .prologue
    .line 1067
    move-object v0, p1

    check-cast v0, Lcom/flurry/sdk/fk$n;

    iget-object v0, v0, Lcom/flurry/sdk/fk$n;->f:Lcom/flurry/sdk/fk$m;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/fk$o;->a(Lcom/flurry/sdk/fk$m;Lcom/flurry/sdk/fk;)Lcom/flurry/sdk/fk;

    .line 1068
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1042
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/fk$o;->a(Ljava/lang/Object;)Lcom/flurry/sdk/fk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1042
    check-cast p1, Lcom/flurry/sdk/fk$m;

    check-cast p2, Lcom/flurry/sdk/fk;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/fk$o;->a(Lcom/flurry/sdk/fk$m;Lcom/flurry/sdk/fk;)Lcom/flurry/sdk/fk;

    move-result-object v0

    return-object v0
.end method
