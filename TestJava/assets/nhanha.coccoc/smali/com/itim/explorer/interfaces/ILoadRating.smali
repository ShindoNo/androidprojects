.class public interface abstract Lcom/itim/explorer/interfaces/ILoadRating;
.super Ljava/lang/Object;
.source "ILoadRating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/ILoadRating$Error;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/itim/explorer/interfaces/ILoadRating$Error;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Lcom/itim/explorer/io/model/PoiRating;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/itim/explorer/io/model/PoiRating;",
            ")V"
        }
    .end annotation
.end method
