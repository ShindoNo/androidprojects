.class final Lcom/flurry/sdk/lv$h;
.super Lcom/flurry/sdk/lv$a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lv$a",
        "<[J>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 452
    const-class v0, [J

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lv$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->e()Lcom/flurry/sdk/hj;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/flurry/sdk/iv$a;->q:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 489
    :goto_0
    return-object v0

    .line 486
    :cond_0
    sget-object v0, Lcom/flurry/sdk/iv$a;->o:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/flurry/sdk/lv$h;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/je;

    move-result-object v0

    throw v0

    .line 489
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv$h;->w(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv$h;->b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[J

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/lv$h;->c(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)[J

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 461
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iw;->h()Lcom/flurry/sdk/qt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/qt;->e()Lcom/flurry/sdk/qt$g;

    move-result-object v4

    .line 462
    invoke-virtual {v4}, Lcom/flurry/sdk/qt$g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    move-object v2, v0

    move v0, v1

    .line 465
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hg;->b()Lcom/flurry/sdk/hj;

    move-result-object v3

    sget-object v5, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    if-eq v3, v5, :cond_1

    .line 466
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv$h;->w(Lcom/flurry/sdk/hg;Lcom/flurry/sdk/iw;)J

    move-result-wide v5

    .line 467
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 468
    invoke-virtual {v4, v2, v0}, Lcom/flurry/sdk/qt$g;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    move v3, v1

    move-object v2, v0

    .line 471
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-wide v5, v2, v3

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v4, v2, v0}, Lcom/flurry/sdk/qt$g;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_2
.end method
