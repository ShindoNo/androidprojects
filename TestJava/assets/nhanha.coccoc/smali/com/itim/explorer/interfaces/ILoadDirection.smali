.class public interface abstract Lcom/itim/explorer/interfaces/ILoadDirection;
.super Ljava/lang/Object;
.source "ILoadDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/itim/explorer/interfaces/ILoadDirection$Status;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itim/explorer/io/model/Direction;",
            ">;)V"
        }
    .end annotation
.end method
