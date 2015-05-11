.class public Lcom/itim/explorer/util/UserPOIsComparator;
.super Ljava/lang/Object;
.source "UserPOIsComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/itim/explorer/io/model/UsersPOI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itim/explorer/io/model/UsersPOI;Lcom/itim/explorer/io/model/UsersPOI;)I
    .locals 2
    .param p1, "lhs"    # Lcom/itim/explorer/io/model/UsersPOI;
    .param p2, "rhs"    # Lcom/itim/explorer/io/model/UsersPOI;

    .prologue
    .line 12
    invoke-virtual {p2}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itim/explorer/io/model/UsersPOI;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/itim/explorer/io/model/UsersPOI;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/itim/explorer/io/model/UsersPOI;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/itim/explorer/util/UserPOIsComparator;->compare(Lcom/itim/explorer/io/model/UsersPOI;Lcom/itim/explorer/io/model/UsersPOI;)I

    move-result v0

    return v0
.end method
