.class public interface abstract Lcom/itim/explorer/interfaces/ILoad;
.super Ljava/lang/Object;
.source "ILoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/ILoad$Error;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
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
            "Lcom/itim/explorer/io/model/POI;",
            ">;)V"
        }
    .end annotation
.end method
