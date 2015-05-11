.class public interface abstract Lcom/itim/explorer/interfaces/ILoadFacebookPost;
.super Ljava/lang/Object;
.source "ILoadFacebookPost.java"


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
            "Lcom/itim/explorer/io/model/FacebookPost;",
            ">;)V"
        }
    .end annotation
.end method
