.class public interface abstract Lcom/itim/explorer/interfaces/MapActivityListener;
.super Ljava/lang/Object;
.source "MapActivityListener.java"


# virtual methods
.method public abstract onDirection()V
.end method

.method public abstract onGetResultList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/POI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onInfoWindowsClick(Lcom/itim/explorer/io/model/POI;)V
.end method

.method public abstract setMapControlVisible(I)V
.end method
