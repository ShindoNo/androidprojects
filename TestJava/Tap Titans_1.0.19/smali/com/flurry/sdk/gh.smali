.class public abstract Lcom/flurry/sdk/gh;
.super Lcom/flurry/sdk/gc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;
.implements Lcom/flurry/sdk/gm$a;


# instance fields
.field protected final a:Lcom/flurry/sdk/gm;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/gn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/sdk/gc;-><init>()V

    .line 34
    new-instance v0, Lcom/flurry/sdk/gm;

    invoke-direct {v0, p1, p0, p0}, Lcom/flurry/sdk/gm;-><init>(Lcom/flurry/sdk/gn;Lcom/flurry/sdk/gk$a;Lcom/flurry/sdk/gm$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gm;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()Lcom/flurry/sdk/gn;

    .line 42
    return-void
.end method

.method public t()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/gh;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->d()Lcom/flurry/sdk/gn;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/flurry/sdk/gn;->c:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->b()V

    .line 49
    :cond_0
    sget-object v1, Lcom/flurry/sdk/gn;->d:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->c()Z

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    sget-object v1, Lcom/flurry/sdk/gn;->e:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->d()I

    goto :goto_0

    .line 53
    :cond_3
    sget-object v1, Lcom/flurry/sdk/gn;->f:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->e()J

    goto :goto_0

    .line 55
    :cond_4
    sget-object v1, Lcom/flurry/sdk/gn;->g:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_5

    .line 56
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->f()F

    goto :goto_0

    .line 57
    :cond_5
    sget-object v1, Lcom/flurry/sdk/gn;->h:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_6

    .line 58
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->g()D

    goto :goto_0

    .line 59
    :cond_6
    sget-object v1, Lcom/flurry/sdk/gn;->i:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_7

    .line 60
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->i()V

    goto :goto_0

    .line 61
    :cond_7
    sget-object v1, Lcom/flurry/sdk/gn;->j:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_8

    .line 62
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->j()V

    goto :goto_0

    .line 63
    :cond_8
    sget-object v1, Lcom/flurry/sdk/gn;->l:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_9

    .line 64
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->k()I

    goto :goto_0

    .line 65
    :cond_9
    sget-object v1, Lcom/flurry/sdk/gn;->k:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_a

    .line 66
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->a()V

    goto :goto_0

    .line 67
    :cond_a
    sget-object v1, Lcom/flurry/sdk/gn;->m:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_b

    .line 68
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->s()I

    goto :goto_0

    .line 69
    :cond_b
    sget-object v1, Lcom/flurry/sdk/gn;->n:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_c

    .line 70
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->o()J

    goto :goto_0

    .line 71
    :cond_c
    sget-object v1, Lcom/flurry/sdk/gn;->p:Lcom/flurry/sdk/gn;

    if-ne v0, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->r()J

    goto :goto_0
.end method
