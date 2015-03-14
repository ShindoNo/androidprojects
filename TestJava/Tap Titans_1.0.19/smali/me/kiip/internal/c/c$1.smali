.class Lme/kiip/internal/c/c$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/c/c;


# direct methods
.method constructor <init>(Lme/kiip/internal/c/c;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    const/4 v1, 0x0

    .line 90
    iget-object v3, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v0}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/c;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v4}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/c;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 92
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/b;

    .line 94
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v5}, Lme/kiip/internal/c/c;->b(Lme/kiip/internal/c/c;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lme/kiip/internal/c/b;->a(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 103
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v0}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/c;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v4}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/c;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 104
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/kiip/internal/c/c$1;->a:Lme/kiip/internal/c/c;

    invoke-static {v0}, Lme/kiip/internal/c/c;->c(Lme/kiip/internal/c/c;)I

    move-result v0

    if-le v1, v0, :cond_3

    .line 105
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/b;

    .line 106
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 109
    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    .line 111
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lme/kiip/internal/c/b;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 101
    goto :goto_0

    .line 112
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/b;

    .line 114
    invoke-static {v0}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 116
    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lme/kiip/internal/c/c$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
