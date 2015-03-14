.class public Lcom/flurry/sdk/pl;
.super Lcom/flurry/sdk/pc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jq;


# annotations
.annotation runtime Lcom/flurry/sdk/jy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pc",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lcom/flurry/sdk/jq;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/se;


# instance fields
.field protected final b:Lcom/flurry/sdk/ip;

.field protected final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Z

.field protected final e:Lcom/flurry/sdk/se;

.field protected final f:Lcom/flurry/sdk/se;

.field protected g:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Lcom/flurry/sdk/jw;

.field protected j:Lcom/flurry/sdk/os;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/flurry/sdk/qp;->b()Lcom/flurry/sdk/se;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/pl;->a:Lcom/flurry/sdk/se;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 88
    move-object v1, v2

    check-cast v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/pl;-><init>(Ljava/util/HashSet;Lcom/flurry/sdk/se;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/flurry/sdk/se;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/ip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/pc;-><init>(Ljava/lang/Class;Z)V

    .line 98
    iput-object p8, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    .line 99
    iput-object p1, p0, Lcom/flurry/sdk/pl;->c:Ljava/util/HashSet;

    .line 100
    iput-object p2, p0, Lcom/flurry/sdk/pl;->e:Lcom/flurry/sdk/se;

    .line 101
    iput-object p3, p0, Lcom/flurry/sdk/pl;->f:Lcom/flurry/sdk/se;

    .line 102
    iput-boolean p4, p0, Lcom/flurry/sdk/pl;->d:Z

    .line 103
    iput-object p5, p0, Lcom/flurry/sdk/pl;->i:Lcom/flurry/sdk/jw;

    .line 104
    iput-object p6, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    .line 105
    iput-object p7, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    .line 106
    invoke-static {}, Lcom/flurry/sdk/os;->a()Lcom/flurry/sdk/os;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pl;->j:Lcom/flurry/sdk/os;

    .line 107
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/pl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/se;",
            "Z",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/pl;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lcom/flurry/sdk/pl;->a([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 146
    if-nez p1, :cond_0

    .line 147
    sget-object v2, Lcom/flurry/sdk/pl;->a:Lcom/flurry/sdk/se;

    move-object v3, v2

    .line 153
    :goto_0
    if-nez p2, :cond_2

    .line 154
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/flurry/sdk/se;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v4, v0

    .line 156
    :goto_2
    new-instance v0, Lcom/flurry/sdk/pl;

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/pl;-><init>(Ljava/util/HashSet;Lcom/flurry/sdk/se;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)V

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/se;->k()Lcom/flurry/sdk/se;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v4, p2

    goto :goto_2
.end method

.method private static a([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 168
    :cond_1
    return-object v0

    .line 164
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 165
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/os;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jt;",
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
    .line 414
    iget-object v0, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 415
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 416
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/pl;->j:Lcom/flurry/sdk/os;

    .line 418
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method protected final a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/os;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jt;",
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
    .line 403
    iget-object v0, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/os$d;

    move-result-object v0

    .line 405
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    if-eq p1, v1, :cond_0

    .line 406
    iget-object v1, v0, Lcom/flurry/sdk/os$d;->b:Lcom/flurry/sdk/os;

    iput-object v1, p0, Lcom/flurry/sdk/pl;->j:Lcom/flurry/sdk/os;

    .line 408
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/os$d;->a:Lcom/flurry/sdk/jh;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/pc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/pc",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/flurry/sdk/pl;

    iget-object v1, p0, Lcom/flurry/sdk/pl;->c:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/flurry/sdk/pl;->e:Lcom/flurry/sdk/se;

    iget-object v3, p0, Lcom/flurry/sdk/pl;->f:Lcom/flurry/sdk/se;

    iget-boolean v4, p0, Lcom/flurry/sdk/pl;->d:Z

    iget-object v6, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    iget-object v7, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    iget-object v8, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/pl;-><init>(Ljava/util/HashSet;Lcom/flurry/sdk/se;Lcom/flurry/sdk/se;ZLcom/flurry/sdk/jw;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/jh;Lcom/flurry/sdk/ip;)V

    .line 114
    iget-object v1, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    iput-object v1, v0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    .line 117
    :cond_0
    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/flurry/sdk/pl;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/flurry/sdk/pl;->f:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/pl;->e:Lcom/flurry/sdk/se;

    iget-object v1, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jt;->b(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    .line 392
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pl;->a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hh;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/pl;->a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->d()V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pl;->a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hc;->e()V

    .line 190
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pl;->b(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jh",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v2, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    .line 282
    iget-object v3, p0, Lcom/flurry/sdk/pl;->c:Ljava/util/HashSet;

    .line 283
    iget-object v4, p0, Lcom/flurry/sdk/pl;->i:Lcom/flurry/sdk/jw;

    .line 284
    sget-object v0, Lcom/flurry/sdk/jr$a;->v:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 286
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 289
    if-nez v7, :cond_2

    .line 290
    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->c()Lcom/flurry/sdk/jh;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 297
    :goto_2
    if-nez v6, :cond_5

    .line 298
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    goto :goto_1

    .line 284
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 293
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_0

    .line 294
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :cond_4
    invoke-virtual {v2, v7, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_2

    .line 301
    :cond_5
    if-nez v4, :cond_6

    .line 302
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {p0, p3, v0, p1, v6}, Lcom/flurry/sdk/pl;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_6
    :try_start_1
    invoke-virtual {p4, v6, p2, p3, v4}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :cond_7
    return-void
.end method

.method public a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/flurry/sdk/pl;->h:Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pl;->a(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jh;)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jw;->e(Ljava/lang/Object;Lcom/flurry/sdk/hc;)V

    .line 206
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pl;->b(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/pl;->i:Lcom/flurry/sdk/jw;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pl;->c(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 270
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    .line 227
    iget-object v4, p0, Lcom/flurry/sdk/pl;->c:Ljava/util/HashSet;

    .line 228
    sget-object v0, Lcom/flurry/sdk/jr$a;->v:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/pl;->j:Lcom/flurry/sdk/os;

    .line 232
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 236
    if-nez v7, :cond_4

    .line 237
    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->c()Lcom/flurry/sdk/jh;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 247
    :goto_2
    if-nez v6, :cond_7

    .line 248
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 269
    goto :goto_1

    .line 228
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 240
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v6, :cond_2

    .line 242
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_6
    invoke-virtual {v3, v7, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_2

    .line 250
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 251
    invoke-virtual {v2, v8}, Lcom/flurry/sdk/os;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 252
    if-nez v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/flurry/sdk/pl;->f:Lcom/flurry/sdk/se;

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/flurry/sdk/pl;->f:Lcom/flurry/sdk/se;

    invoke-virtual {p3, v0, v8}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p3}, Lcom/flurry/sdk/pl;->a(Lcom/flurry/sdk/os;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 259
    :goto_4
    iget-object v2, p0, Lcom/flurry/sdk/pl;->j:Lcom/flurry/sdk/os;

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 262
    :goto_5
    :try_start_0
    invoke-virtual {v2, v6, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 263
    :catch_0
    move-exception v2

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual {p0, p3, v2, p1, v6}, Lcom/flurry/sdk/pl;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 257
    :cond_8
    invoke-virtual {p0, v2, v8, p3}, Lcom/flurry/sdk/pl;->a(Lcom/flurry/sdk/os;Ljava/lang/Class;Lcom/flurry/sdk/jt;)Lcom/flurry/sdk/jh;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_5
.end method

.method protected c(Ljava/util/Map;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/flurry/sdk/hc;",
            "Lcom/flurry/sdk/jt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v5, p0, Lcom/flurry/sdk/pl;->g:Lcom/flurry/sdk/jh;

    .line 321
    iget-object v6, p0, Lcom/flurry/sdk/pl;->c:Ljava/util/HashSet;

    .line 322
    sget-object v0, Lcom/flurry/sdk/jr$a;->v:Lcom/flurry/sdk/jr$a;

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jr$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 324
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v4

    move-object v3, v4

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 328
    if-nez v9, :cond_2

    .line 329
    invoke-virtual {p3}, Lcom/flurry/sdk/jt;->c()Lcom/flurry/sdk/jh;

    move-result-object v0

    invoke-virtual {v0, v4, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    .line 339
    :goto_2
    if-nez v8, :cond_5

    .line 340
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/hc;)V

    move-object v0, v2

    move-object v2, v3

    :goto_3
    move-object v3, v2

    move-object v2, v0

    .line 359
    goto :goto_1

    .line 322
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 332
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v8, :cond_0

    .line 334
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :cond_4
    invoke-virtual {v5, v9, p2, p3}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;)V

    goto :goto_2

    .line 342
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 344
    if-ne v0, v2, :cond_6

    move-object v0, v2

    move-object v2, v3

    .line 352
    :goto_4
    :try_start_0
    iget-object v10, p0, Lcom/flurry/sdk/pl;->i:Lcom/flurry/sdk/jw;

    invoke-virtual {v3, v8, p2, p3, v10}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Object;Lcom/flurry/sdk/hc;Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 353
    :catch_0
    move-exception v3

    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    invoke-virtual {p0, p3, v3, p1, v8}, Lcom/flurry/sdk/pl;->a(Lcom/flurry/sdk/jt;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/pl;->b:Lcom/flurry/sdk/ip;

    invoke-virtual {p3, v0, v2}, Lcom/flurry/sdk/jt;->a(Ljava/lang/Class;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jh;

    move-result-object v3

    move-object v2, v3

    .line 349
    goto :goto_4

    .line 360
    :cond_7
    return-void
.end method
