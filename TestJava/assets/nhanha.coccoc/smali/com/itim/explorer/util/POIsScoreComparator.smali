.class public Lcom/itim/explorer/util/POIsScoreComparator;
.super Ljava/lang/Object;
.source "POIsScoreComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/itim/explorer/io/model/POI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itim/explorer/io/model/POI;Lcom/itim/explorer/io/model/POI;)I
    .locals 4
    .param p1, "lhs"    # Lcom/itim/explorer/io/model/POI;
    .param p2, "rhs"    # Lcom/itim/explorer/io/model/POI;

    .prologue
    .line 10
    invoke-virtual {p2}, Lcom/itim/explorer/io/model/POI;->getScore()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getScore()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/itim/explorer/io/model/POI;->getScore()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/POI;->getScore()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/itim/explorer/io/model/POI;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/itim/explorer/io/model/POI;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/util/POIsScoreComparator;->compare(Lcom/itim/explorer/io/model/POI;Lcom/itim/explorer/io/model/POI;)I

    move-result v0

    return v0
.end method
