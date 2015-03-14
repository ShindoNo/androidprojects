.class public Lcom/flurry/sdk/oo;
.super Lcom/flurry/sdk/jt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/oo$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final g:Lcom/flurry/sdk/js;

.field protected final h:Lcom/flurry/sdk/ou;

.field protected final i:Lcom/flurry/sdk/re;

.field protected j:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Lcom/flurry/sdk/ot;

.field protected o:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/flurry/sdk/oq;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/oq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/oo;->d:Lcom/flurry/sdk/jh;

    .line 61
    new-instance v0, Lcom/flurry/sdk/py;

    invoke-direct {v0}, Lcom/flurry/sdk/py;-><init>()V

    sput-object v0, Lcom/flurry/sdk/oo;->e:Lcom/flurry/sdk/jh;

    .line 63
    new-instance v0, Lcom/flurry/sdk/ov;

    invoke-direct {v0}, Lcom/flurry/sdk/ov;-><init>()V

    sput-object v0, Lcom/flurry/sdk/oo;->f:Lcom/flurry/sdk/jh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jt;-><init>(Lcom/flurry/sdk/jr;)V

    .line 97
    sget-object v0, Lcom/flurry/sdk/oo;->f:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->j:Lcom/flurry/sdk/jh;

    .line 110
    sget-object v0, Lcom/flurry/sdk/pn;->a:Lcom/flurry/sdk/pn;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->l:Lcom/flurry/sdk/jh;

    .line 119
    sget-object v0, Lcom/flurry/sdk/oo;->d:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->m:Lcom/flurry/sdk/jh;

    .line 154
    iput-object v1, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    .line 155
    new-instance v0, Lcom/flurry/sdk/ou;

    invoke-direct {v0}, Lcom/flurry/sdk/ou;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    .line 157
    iput-object v1, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    .line 158
    new-instance v0, Lcom/flurry/sdk/re;

    invoke-direct {v0}, Lcom/flurry/sdk/re;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/oo;->i:Lcom/flurry/sdk/re;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/oo;Lcom/flurry/sdk/js;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/flurry/sdk/jt;-><init>(Lcom/flurry/sdk/jr;)V

    .line 97
    sget-object v0, Lcom/flurry/sdk/oo;->f:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->j:Lcom/flurry/sdk/jh;

    .line 110
    sget-object v0, Lcom/flurry/sdk/pn;->a:Lcom/flurry/sdk/pn;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->l:Lcom/flurry/sdk/jh;

    .line 119
    sget-object v0, Lcom/flurry/sdk/oo;->d:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->m:Lcom/flurry/sdk/jh;

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_0
    iput-object p3, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    .line 176
    iget-object v0, p2, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    .line 177
    iget-object v0, p2, Lcom/flurry/sdk/oo;->j:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->j:Lcom/flurry/sdk/jh;

    .line 178
    iget-object v0, p2, Lcom/flurry/sdk/oo;->k:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->k:Lcom/flurry/sdk/jh;

    .line 179
    iget-object v0, p2, Lcom/flurry/sdk/oo;->l:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->l:Lcom/flurry/sdk/jh;

    .line 180
    iget-object v0, p2, Lcom/flurry/sdk/oo;->m:Lcom/flurry/sdk/jh;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->m:Lcom/flurry/sdk/jh;

    .line 181
    iget-object v0, p2, Lcom/flurry/sdk/oo;->i:Lcom/flurry/sdk/re;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->i:Lcom/flurry/sdk/re;

    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v0}, Lcom/flurry/sdk/ou;->a()Lcom/flurry/sdk/ot;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    .line 187
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 793
    instance-of v0, p1, Lcom/flurry/sdk/iu;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 796
    check-cast v0, Lcom/flurry/sdk/iu;

    iget-object v1, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-interface {v0, v1, p2}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 797
    if-eq v1, p1, :cond_2

    .line 799
    instance-of v0, v1, Lcom/flurry/sdk/jq;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 800
    check-cast v0, Lcom/flurry/sdk/jq;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/jt;)V

    :cond_1
    :goto_1
    move-object p1, v1

    .line 804
    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ot;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 378
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oo;->c(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oo;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/se;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ot;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ou;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 450
    iget-object v0, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    iget-object v2, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, v2, p1, p3}, Lcom/flurry/sdk/js;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_2

    .line 452
    new-instance v0, Lcom/flurry/sdk/oo$a;

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/oo$a;-><init>(Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;)V

    .line 454
    :goto_1
    if-eqz p2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/flurry/sdk/oo;->j:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ot;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ou;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 339
    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    iget-object v1, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oo;->b(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/oo;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/flurry/sdk/oo;->n:Lcom/flurry/sdk/ot;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ot;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ou;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 415
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/oo;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    iget-object v2, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    iget-object v3, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v3, p1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p3}, Lcom/flurry/sdk/js;->b(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jw;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_2

    .line 424
    new-instance v0, Lcom/flurry/sdk/oo$a;

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/oo$a;-><init>(Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;)V

    .line 426
    :goto_1
    if-eqz p2, :cond_0

    .line 427
    iget-object v1, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/ou;->a(Ljava/lang/Class;Lcom/flurry/sdk/jh;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/js;)Lcom/flurry/sdk/oo;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/flurry/sdk/oo;

    invoke-direct {v0, p1, p0, p2}, Lcom/flurry/sdk/oo;-><init>(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/oo;Lcom/flurry/sdk/js;)V

    return-object v0
.end method

.method public final a(JLcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lcom/flurry/sdk/jr$a;->q:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/hc;->a(J)V

    .line 528
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->n()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/hc;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 595
    if-nez p2, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/flurry/sdk/oo;->d()Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 597
    const/4 v0, 0x0

    .line 610
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p2, p1, p0}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 611
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    :cond_1
    return-void

    .line 599
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 601
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/oo;->a(Ljava/lang/Class;ZLcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 603
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    sget-object v2, Lcom/flurry/sdk/jr$a;->j:Lcom/flurry/sdk/jr$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p1}, Lcom/flurry/sdk/hc;->d()V

    .line 606
    iget-object v2, p0, Lcom/flurry/sdk/oo;->i:Lcom/flurry/sdk/re;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/re;->a(Ljava/lang/Class;Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/ij;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/hc;->a(Lcom/flurry/sdk/ij;)V

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 618
    throw v0

    .line 619
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 622
    if-nez v0, :cond_3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :cond_3
    new-instance v2, Lcom/flurry/sdk/je;

    invoke-direct {v2, v0, v1}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/hc;Ljava/lang/Object;Lcom/flurry/sdk/js;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p4, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null serializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/js;)Lcom/flurry/sdk/oo;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; blueprint of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/hc;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public final a(Ljava/util/Date;Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/flurry/sdk/jr$a;->q:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/hc;->a(J)V

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    iget-object v1, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/sdk/js;->c(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/flurry/sdk/oo;->k:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_2

    .line 477
    invoke-static {p1}, Lcom/flurry/sdk/pz;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 483
    :cond_0
    :goto_0
    instance-of v1, v0, Lcom/flurry/sdk/iu;

    if-eqz v1, :cond_1

    .line 484
    check-cast v0, Lcom/flurry/sdk/iu;

    .line 485
    iget-object v1, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-interface {v0, v1, p2}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 487
    :cond_1
    return-object v0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/oo;->k:Lcom/flurry/sdk/jh;

    goto :goto_0
.end method

.method protected b(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/oo;->d(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v1, p1, v0, p0}, Lcom/flurry/sdk/ou;->a(Ljava/lang/Class;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jt;)V

    .line 746
    :cond_0
    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 740
    new-instance v1, Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hd;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(JLcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 551
    sget-object v0, Lcom/flurry/sdk/jr$a;->r:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Date;Lcom/flurry/sdk/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 567
    sget-object v0, Lcom/flurry/sdk/jr$a;->r:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/oo;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oo;->o:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/flurry/sdk/oo;->m:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method protected c(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 758
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/oo;->d(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/flurry/sdk/oo;->h:Lcom/flurry/sdk/ou;

    invoke-virtual {v1, p1, v0, p0}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jt;)V

    .line 769
    :cond_0
    return-object v0

    .line 759
    :catch_0
    move-exception v0

    .line 763
    new-instance v1, Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hd;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Lcom/flurry/sdk/jh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/flurry/sdk/oo;->l:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method protected d(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/flurry/sdk/oo;->g:Lcom/flurry/sdk/js;

    iget-object v1, p0, Lcom/flurry/sdk/oo;->b:Lcom/flurry/sdk/jr;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/sdk/js;->a(Lcom/flurry/sdk/jr;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    return-object v0
.end method
