.class public Lcom/itim/explorer/io/model/Direction;
.super Ljava/lang/Object;
.source "Direction.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/io/model/Direction$Polyline;
    }
.end annotation


# instance fields
.field private bounds:Lcom/itim/explorer/io/model/DirectionBound;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bounds"
    .end annotation
.end field

.field private copyright:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "copyrights"
    .end annotation
.end field

.field private legs:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "legs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionLegs;",
            ">;"
        }
    .end annotation
.end field

.field private overview_polyline:Lcom/itim/explorer/io/model/Direction$Polyline;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overview_polyline"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public getBounds()Lcom/itim/explorer/io/model/DirectionBound;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bounds"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction;->bounds:Lcom/itim/explorer/io/model/DirectionBound;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "copyrights"
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getLegs()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "legs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionLegs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction;->legs:Ljava/util/List;

    return-object v0
.end method

.method public getOverview_polyline()Lcom/itim/explorer/io/model/Direction$Polyline;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overview_polyline"
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/itim/explorer/io/model/Direction;->overview_polyline:Lcom/itim/explorer/io/model/Direction$Polyline;

    return-object v0
.end method

.method public setBounds(Lcom/itim/explorer/io/model/DirectionBound;)V
    .locals 0
    .param p1, "bounds"    # Lcom/itim/explorer/io/model/DirectionBound;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bounds"
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction;->bounds:Lcom/itim/explorer/io/model/DirectionBound;

    .line 33
    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0
    .param p1, "copyright"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "copyrights"
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction;->copyright:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLegs(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "legs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/DirectionLegs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "legs":Ljava/util/List;, "Ljava/util/List<Lcom/itim/explorer/io/model/DirectionLegs;>;"
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction;->legs:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setOverview_polyline(Lcom/itim/explorer/io/model/Direction$Polyline;)V
    .locals 0
    .param p1, "overview_polyline"    # Lcom/itim/explorer/io/model/Direction$Polyline;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overview_polyline"
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/itim/explorer/io/model/Direction;->overview_polyline:Lcom/itim/explorer/io/model/Direction$Polyline;

    .line 63
    return-void
.end method
