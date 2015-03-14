.class public Lcom/flurry/sdk/gn$j;
.super Lcom/flurry/sdk/gn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final z:Lcom/flurry/sdk/gn;


# direct methods
.method private varargs constructor <init>(Lcom/flurry/sdk/gn;[Lcom/flurry/sdk/gn;)V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/flurry/sdk/gn$i;->d:Lcom/flurry/sdk/gn$i;

    invoke-static {p2}, Lcom/flurry/sdk/gn$j;->c([Lcom/flurry/sdk/gn;)[Lcom/flurry/sdk/gn;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gn;-><init>(Lcom/flurry/sdk/gn$i;[Lcom/flurry/sdk/gn;)V

    .line 333
    iput-object p1, p0, Lcom/flurry/sdk/gn$j;->z:Lcom/flurry/sdk/gn;

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/gn$j;->b:[Lcom/flurry/sdk/gn;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gn;[Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn$1;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gn$j;-><init>(Lcom/flurry/sdk/gn;[Lcom/flurry/sdk/gn;)V

    return-void
.end method

.method private static c([Lcom/flurry/sdk/gn;)[Lcom/flurry/sdk/gn;
    .locals 4

    .prologue
    .line 338
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/flurry/sdk/gn;

    .line 339
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gn$j;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$j;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$j;
    .locals 7
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
            "Lcom/flurry/sdk/gn$j;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 346
    new-instance v6, Lcom/flurry/sdk/gn$j;

    iget-object v0, p0, Lcom/flurry/sdk/gn$j;->z:Lcom/flurry/sdk/gn;

    iget-object v2, p0, Lcom/flurry/sdk/gn$j;->b:[Lcom/flurry/sdk/gn;

    invoke-static {v2, v1}, Lcom/flurry/sdk/gn$j;->a([Lcom/flurry/sdk/gn;I)I

    move-result v2

    new-array v2, v2, [Lcom/flurry/sdk/gn;

    invoke-direct {v6, v0, v2}, Lcom/flurry/sdk/gn$j;-><init>(Lcom/flurry/sdk/gn;[Lcom/flurry/sdk/gn;)V

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/gn$j;->b:[Lcom/flurry/sdk/gn;

    iget-object v2, v6, Lcom/flurry/sdk/gn$j;->b:[Lcom/flurry/sdk/gn;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/gn$j;->a([Lcom/flurry/sdk/gn;I[Lcom/flurry/sdk/gn;ILjava/util/Map;Ljava/util/Map;)V

    .line 349
    return-object v6
.end method
