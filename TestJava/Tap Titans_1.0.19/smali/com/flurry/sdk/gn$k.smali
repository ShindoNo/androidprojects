.class public Lcom/flurry/sdk/gn$k;
.super Lcom/flurry/sdk/gn$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final B:Lcom/flurry/sdk/gn;

.field public final z:Lcom/flurry/sdk/gn;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gn$g;-><init>(Lcom/flurry/sdk/gn$1;)V

    .line 427
    iput-object p1, p0, Lcom/flurry/sdk/gn$k;->z:Lcom/flurry/sdk/gn;

    .line 428
    iput-object p2, p0, Lcom/flurry/sdk/gn$k;->B:Lcom/flurry/sdk/gn;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn$1;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gn$k;-><init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gn$k;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn$k;
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
            "Lcom/flurry/sdk/gn$k;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/flurry/sdk/gn$k;

    iget-object v1, p0, Lcom/flurry/sdk/gn$k;->z:Lcom/flurry/sdk/gn;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/gn;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gn$k;->B:Lcom/flurry/sdk/gn;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/sdk/gn;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gn;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gn$k;-><init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gn;)V

    return-object v0
.end method
