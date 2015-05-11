.class public interface abstract Lcom/itim/explorer/interfaces/ILoadUsersPOI;
.super Ljava/lang/Object;
.source "ILoadUsersPOI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/UsersPOI;",
            ">;)V"
        }
    .end annotation
.end method
