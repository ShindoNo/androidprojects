.class public interface abstract Lcom/itim/explorer/interfaces/ILoadCategory;
.super Ljava/lang/Object;
.source "ILoadCategory.java"


# virtual methods
.method public abstract onFailed(Lcom/itim/explorer/interfaces/ILoad$Error;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itim/explorer/io/model/Category;",
            ">;)V"
        }
    .end annotation
.end method
