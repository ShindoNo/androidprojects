.class public Lcom/flurry/sdk/gn$a;
.super Lcom/flurry/sdk/gn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final A:[Ljava/lang/String;

.field public final z:[Lcom/flurry/sdk/gn;


# direct methods
.method private constructor <init>([Lcom/flurry/sdk/gn;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/flurry/sdk/gn$i;->e:Lcom/flurry/sdk/gn$i;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn;-><init>(Lcom/flurry/sdk/gn$i;)V

    .line 359
    iput-object p1, p0, Lcom/flurry/sdk/gn$a;->z:[Lcom/flurry/sdk/gn;

    .line 360
    iput-object p2, p0, Lcom/flurry/sdk/gn$a;->A:[Ljava/lang/String;

    .line 361
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/sdk/gn;[Ljava/lang/String;Lcom/flurry/sdk/gn$1;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gn$a;-><init>([Lcom/flurry/sdk/gn;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/gn;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flurry/sdk/gn$a;->z:[Lcom/flurry/sdk/gn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gn$a;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gn$m;",
            "Lcom/flurry/sdk/gn$m;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gn$m;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gn$f;",
            ">;>;)",
            "Lcom/flurry/sdk/gn$a;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/gn$a;->z:[Lcom/flurry/sdk/gn;

    array-length v0, v0

    new-array v1, v0, [Lcom/flurry/sdk/gn;

    .line 390
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/flurry/sdk/gn$a;->z:[Lcom/flurry/sdk/gn;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/gn;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;

    move-result-object v2

    aput-object v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Lcom/flurry/sdk/gn$a;

    iget-object v2, p0, Lcom/flurry/sdk/gn$a;->A:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gn$a;-><init>([Lcom/flurry/sdk/gn;[Ljava/lang/String;)V

    return-object v0
.end method
