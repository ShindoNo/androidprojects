.class public Lcom/itim/explorer/io/SearchQueryHistory;
.super Ljava/lang/Object;
.source "SearchQueryHistory.java"


# instance fields
.field private id:I

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/itim/explorer/io/SearchQueryHistory;->id:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/itim/explorer/io/SearchQueryHistory;->query:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/itim/explorer/io/SearchQueryHistory;->id:I

    .line 13
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/itim/explorer/io/SearchQueryHistory;->query:Ljava/lang/String;

    .line 21
    return-void
.end method
