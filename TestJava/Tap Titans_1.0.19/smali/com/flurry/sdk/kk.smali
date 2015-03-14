.class public abstract Lcom/flurry/sdk/kk;
.super Lcom/flurry/sdk/iy;
.source "SourceFile"


# static fields
.field static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qg;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ji;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/jd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Lcom/flurry/sdk/mi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/flurry/sdk/kt;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kk;->b:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/ly;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kk;->c:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :try_start_0
    const-string v0, "java.util.ConcurrentNavigableMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    const-string v1, "java.util.ConcurrentSkipListMap"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    .line 91
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-string v1, "java.util.Deque"

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableSet"

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/flurry/sdk/lv;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kk;->f:Ljava/util/HashMap;

    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/flurry/sdk/iy;-><init>()V

    .line 117
    sget-object v0, Lcom/flurry/sdk/mi;->a:Lcom/flurry/sdk/mi;

    iput-object v0, p0, Lcom/flurry/sdk/kk;->g:Lcom/flurry/sdk/mi;

    .line 125
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/qf;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/qf;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p3}, Lcom/flurry/sdk/qf;->g()Lcom/flurry/sdk/se;

    move-result-object v8

    .line 200
    invoke-virtual {v8}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/jd;

    .line 201
    if-nez v6, :cond_2

    .line 203
    sget-object v0, Lcom/flurry/sdk/kk;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/flurry/sdk/jd;

    .line 204
    if-eqz v7, :cond_1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, v5

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 236
    :cond_0
    :goto_0
    return-object v7

    .line 216
    :cond_1
    invoke-virtual {v8}, Lcom/flurry/sdk/se;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: primitive type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed, no array deserializer found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    invoke-virtual {v8}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 223
    if-nez v0, :cond_4

    .line 224
    invoke-virtual {p0, p1, v8, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v5

    :goto_1
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 227
    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v7

    .line 228
    if-nez v7, :cond_0

    .line 232
    if-nez v6, :cond_3

    .line 234
    invoke-virtual {p2, p1, v8, p4}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v6

    .line 236
    :cond_3
    new-instance v7, Lcom/flurry/sdk/lu;

    invoke-direct {v7, p3, v6, v5}, Lcom/flurry/sdk/lu;-><init>(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jv;)V

    goto :goto_0

    :cond_4
    move-object v5, v0

    goto :goto_1
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/qh;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/qh;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/qh;

    .line 324
    invoke-virtual {v0}, Lcom/flurry/sdk/qh;->p()Ljava/lang/Class;

    move-result-object v1

    .line 325
    invoke-virtual {p1, v1}, Lcom/flurry/sdk/iv;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/mt;

    .line 327
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 344
    :goto_0
    return-object v0

    .line 332
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/qh;

    .line 334
    invoke-virtual {v1}, Lcom/flurry/sdk/qh;->g()Lcom/flurry/sdk/se;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/jd;

    .line 339
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 341
    if-nez v0, :cond_1

    .line 342
    invoke-virtual {p0, p1, v2, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 344
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/qh;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/qi;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/qi;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/qi;

    .line 247
    invoke-virtual {v0}, Lcom/flurry/sdk/qi;->p()Ljava/lang/Class;

    move-result-object v8

    .line 248
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/mt;

    .line 250
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/qi;

    .line 257
    invoke-virtual {v1}, Lcom/flurry/sdk/qi;->g()Lcom/flurry/sdk/se;

    move-result-object v9

    .line 259
    invoke-virtual {v9}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/jd;

    .line 262
    invoke-virtual {v9}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 264
    if-nez v0, :cond_8

    .line 265
    invoke-virtual {p0, p1, v9, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 269
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 271
    if-nez v0, :cond_0

    .line 275
    if-nez v7, :cond_3

    .line 277
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    new-instance v0, Lcom/flurry/sdk/lp;

    invoke-virtual {v9}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v9, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/lp;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jd;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p2, p1, v9, p4}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v7

    .line 295
    :cond_3
    invoke-virtual {v1}, Lcom/flurry/sdk/qi;->s()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/flurry/sdk/qi;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 297
    :cond_4
    sget-object v0, Lcom/flurry/sdk/kk;->e:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 298
    if-nez v0, :cond_5

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_5
    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/qi;

    .line 304
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/mt;

    move-object v4, v1

    move-object v1, v0

    .line 306
    :cond_6
    invoke-virtual {p0, p1, v4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;

    move-result-object v2

    .line 308
    invoke-virtual {v9}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_7

    .line 310
    new-instance v0, Lcom/flurry/sdk/mb;

    invoke-direct {v0, v1, v7, v2}, Lcom/flurry/sdk/mb;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/ku;)V

    goto/16 :goto_0

    .line 312
    :cond_7
    new-instance v0, Lcom/flurry/sdk/lk;

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/flurry/sdk/lk;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/ku;)V

    goto/16 :goto_0

    :cond_8
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/qk;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/qk;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/qk;

    .line 445
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/mt;

    .line 447
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 471
    :goto_0
    return-object v0

    .line 452
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/qk;

    .line 453
    invoke-virtual {v1}, Lcom/flurry/sdk/qk;->k()Lcom/flurry/sdk/se;

    move-result-object v2

    .line 454
    invoke-virtual {v1}, Lcom/flurry/sdk/qk;->g()Lcom/flurry/sdk/se;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/jd;

    .line 461
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ji;

    .line 462
    if-nez v0, :cond_2

    .line 463
    invoke-virtual {p2, p1, v2, p4}, Lcom/flurry/sdk/iz;->c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;

    move-result-object v6

    .line 466
    :goto_1
    invoke-virtual {v3}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 468
    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0, p1, v3, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v7

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 471
    invoke-virtual/range {v0 .. v8}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ql;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/ql;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ql;

    .line 356
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/mt;

    .line 358
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 434
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    invoke-virtual {v4}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ql;

    .line 364
    invoke-virtual {v1}, Lcom/flurry/sdk/ql;->k()Lcom/flurry/sdk/se;

    move-result-object v9

    .line 365
    invoke-virtual {v1}, Lcom/flurry/sdk/ql;->g()Lcom/flurry/sdk/se;

    move-result-object v10

    .line 369
    invoke-virtual {v10}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/jd;

    .line 372
    invoke-virtual {v9}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ji;

    .line 373
    if-nez v0, :cond_a

    .line 374
    invoke-virtual {p2, p1, v9, p4}, Lcom/flurry/sdk/iz;->c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;

    move-result-object v6

    .line 377
    :goto_1
    invoke-virtual {v10}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 379
    if-nez v0, :cond_9

    .line 380
    invoke-virtual {p0, p1, v10, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v7

    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 384
    invoke-virtual/range {v0 .. v8}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 387
    if-nez v0, :cond_0

    .line 391
    if-nez v8, :cond_2

    .line 393
    invoke-virtual {p2, p1, v10, p4}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v8

    .line 398
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/sdk/ql;->p()Ljava/lang/Class;

    move-result-object v0

    .line 399
    const-class v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    invoke-virtual {v9}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_4

    .line 402
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_4
    new-instance v0, Lcom/flurry/sdk/lo;

    invoke-virtual {v9}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v9, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8}, Lcom/flurry/sdk/lo;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jd;)V

    goto :goto_0

    .line 420
    :cond_5
    invoke-virtual {v1}, Lcom/flurry/sdk/ql;->s()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/flurry/sdk/ql;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 422
    :cond_6
    sget-object v2, Lcom/flurry/sdk/kk;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 423
    if-nez v0, :cond_7

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_7
    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/se;Ljava/lang/Class;)Lcom/flurry/sdk/se;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ql;

    .line 429
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/mt;

    move-object v9, v1

    move-object v1, v0

    .line 431
    :goto_3
    invoke-virtual {p0, p1, v9}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;

    move-result-object v2

    .line 432
    new-instance v0, Lcom/flurry/sdk/lt;

    move-object v3, v6

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/lt;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ku;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jd;Lcom/flurry/sdk/jv;)V

    .line 433
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {v9}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/in;->c(Lcom/flurry/sdk/mk;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v9, v4

    goto :goto_3

    :cond_9
    move-object v7, v0

    goto/16 :goto_2

    :cond_a
    move-object v6, v0

    goto/16 :goto_1
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mj;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
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
    .line 686
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/in;->h(Lcom/flurry/sdk/mj;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 690
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;Ljava/lang/Object;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mj;",
            "Lcom/flurry/sdk/ip;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/flurry/sdk/jd",
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
    .line 698
    instance-of v0, p4, Lcom/flurry/sdk/jd;

    if-eqz v0, :cond_1

    .line 699
    check-cast p4, Lcom/flurry/sdk/jd;

    .line 701
    instance-of v0, p4, Lcom/flurry/sdk/is;

    if-eqz v0, :cond_0

    .line 702
    check-cast p4, Lcom/flurry/sdk/is;

    invoke-interface {p4, p1, p3}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object p4

    .line 721
    :cond_0
    :goto_0
    return-object p4

    .line 709
    :cond_1
    instance-of v0, p4, Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    check-cast p4, Ljava/lang/Class;

    .line 713
    const-class v0, Lcom/flurry/sdk/jd;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<JsonDeserializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_3
    invoke-virtual {p1, p2, p4}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 718
    instance-of v1, v0, Lcom/flurry/sdk/is;

    if-eqz v1, :cond_4

    .line 719
    check-cast v0, Lcom/flurry/sdk/is;

    invoke-interface {v0, p1, p3}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    :cond_4
    move-object p4, v0

    .line 721
    goto :goto_0
.end method

.method protected abstract a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qf;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/flurry/sdk/qh;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qh;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qi;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/qk;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/ji;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ql;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
            "Lcom/flurry/sdk/ji;",
            "Lcom/flurry/sdk/jv;",
            "Lcom/flurry/sdk/jd",
            "<*>;)",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/sdk/he;",
            ">;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 632
    invoke-virtual {v0, p1, p3, p2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v1

    .line 634
    if-nez v1, :cond_0

    .line 635
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    .line 638
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->l()Lcom/flurry/sdk/nd;

    move-result-object v2

    invoke-virtual {v2, p3, p1, v0}, Lcom/flurry/sdk/nd;->a(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/jk;Lcom/flurry/sdk/in;)Ljava/util/Collection;

    move-result-object v0

    .line 639
    invoke-interface {v1, p1, p2, v0, p4}, Lcom/flurry/sdk/nf;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Ljava/util/Collection;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Class;Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/qx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/iv;",
            ")",
            "Lcom/flurry/sdk/qx",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 889
    sget-object v0, Lcom/flurry/sdk/iv$a;->j:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-static {p1}, Lcom/flurry/sdk/qx;->b(Ljava/lang/Class;)Lcom/flurry/sdk/qx;

    move-result-object v0

    .line 892
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/qx;->b(Ljava/lang/Class;Lcom/flurry/sdk/in;)Lcom/flurry/sdk/qx;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/sdk/se;",
            ">(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mj;",
            "TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 749
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v3

    .line 750
    invoke-virtual {v3, p2, p3, p4}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_5

    .line 753
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/flurry/sdk/se;->f(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 760
    :goto_0
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 761
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->k()Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v3, p2, v1, p4}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 762
    if-eqz v4, :cond_1

    .line 764
    instance-of v1, v2, Lcom/flurry/sdk/qk;

    if-nez v1, :cond_0

    .line 765
    new-instance v1, Lcom/flurry/sdk/je;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal key-type annotation: type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Map(-like) type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :catch_0
    move-exception v2

    .line 755
    new-instance v3, Lcom/flurry/sdk/je;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to narrow type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with concrete-type annotation (value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), method \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/flurry/sdk/mj;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\': "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v7, v2}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hd;Ljava/lang/Throwable;)V

    throw v3

    .line 768
    :cond_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/flurry/sdk/qk;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lcom/flurry/sdk/qk;->d(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 773
    :cond_1
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->k()Lcom/flurry/sdk/se;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 779
    invoke-virtual {v3, p2}, Lcom/flurry/sdk/in;->i(Lcom/flurry/sdk/mj;)Ljava/lang/Class;

    move-result-object v4

    .line 780
    if-eqz v4, :cond_2

    const-class v5, Lcom/flurry/sdk/ji$a;

    if-eq v4, v5, :cond_2

    .line 781
    invoke-virtual {p1, p2, v4}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ji;

    move-result-object v4

    .line 787
    invoke-virtual {v1, v4}, Lcom/flurry/sdk/se;->j(Ljava/lang/Object;)V

    .line 792
    :cond_2
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v3, p2, v1, p4}, Lcom/flurry/sdk/in;->c(Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 793
    if-eqz v1, :cond_3

    .line 795
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/flurry/sdk/se;->b(Ljava/lang/Class;)Lcom/flurry/sdk/se;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 801
    :cond_3
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->n()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 803
    invoke-virtual {v3, p2}, Lcom/flurry/sdk/in;->j(Lcom/flurry/sdk/mj;)Ljava/lang/Class;

    move-result-object v1

    .line 804
    if-eqz v1, :cond_4

    const-class v3, Lcom/flurry/sdk/jd$a;

    if-eq v1, v3, :cond_4

    .line 805
    invoke-virtual {p1, p2, v1}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 810
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/se;->j(Ljava/lang/Object;)V

    .line 814
    :cond_4
    return-object v2

    .line 769
    :catch_1
    move-exception v1

    .line 770
    new-instance v3, Lcom/flurry/sdk/je;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow key type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " with key-type annotation ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v7, v1}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hd;Ljava/lang/Throwable;)V

    throw v3

    .line 796
    :catch_2
    move-exception v3

    .line 797
    new-instance v4, Lcom/flurry/sdk/je;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " with content-type annotation ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v7, v3}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hd;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    move-object v2, p3

    goto/16 :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/se;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 834
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 836
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->k()Lcom/flurry/sdk/se;

    move-result-object v1

    .line 837
    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v0, p4}, Lcom/flurry/sdk/in;->i(Lcom/flurry/sdk/mj;)Ljava/lang/Class;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_0

    const-class v3, Lcom/flurry/sdk/ji$a;

    if-eq v2, v3, :cond_0

    .line 840
    invoke-virtual {p1, p4, v2}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ji;

    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/se;->j(Ljava/lang/Object;)V

    .line 850
    :cond_0
    invoke-virtual {v0, p4}, Lcom/flurry/sdk/in;->j(Lcom/flurry/sdk/mj;)Ljava/lang/Class;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_1

    const-class v1, Lcom/flurry/sdk/jd$a;

    if-eq v0, v1, :cond_1

    .line 852
    invoke-virtual {p1, p4, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 857
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/se;->j(Ljava/lang/Object;)V

    .line 864
    :cond_1
    instance-of v0, p4, Lcom/flurry/sdk/mn;

    if-eqz v0, :cond_2

    .line 865
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_2

    .line 868
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/se;->e(Ljava/lang/Object;)Lcom/flurry/sdk/se;

    move-result-object p3

    .line 874
    :cond_2
    instance-of v0, p4, Lcom/flurry/sdk/mn;

    if-eqz v0, :cond_4

    .line 875
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    .line 880
    :goto_0
    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/se;->f(Ljava/lang/Object;)Lcom/flurry/sdk/se;

    move-result-object p3

    .line 883
    :cond_3
    return-object p3

    .line 878
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation
.end method

.method public b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 487
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 513
    :goto_0
    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    .line 493
    invoke-virtual {p0, v2, p1, v0, p4}, Lcom/flurry/sdk/kk;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 495
    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mo;

    .line 500
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->f()I

    move-result v1

    .line 502
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 503
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->d()Ljava/lang/Class;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-static {p1, v2, v0}, Lcom/flurry/sdk/ln;->a(Lcom/flurry/sdk/iv;Ljava/lang/Class;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsuitable method ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_4
    new-instance v0, Lcom/flurry/sdk/ln;

    invoke-virtual {p0, v2, p1}, Lcom/flurry/sdk/kk;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/qx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/qx;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    .line 578
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 579
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v3

    .line 581
    invoke-virtual {v3, p1, v0, p2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mk;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v2

    .line 587
    if-nez v2, :cond_0

    .line 588
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/iv;->d(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v0

    .line 589
    if-nez v0, :cond_2

    .line 603
    :goto_0
    return-object v1

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->l()Lcom/flurry/sdk/nd;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v3}, Lcom/flurry/sdk/nd;->a(Lcom/flurry/sdk/mk;Lcom/flurry/sdk/jk;Lcom/flurry/sdk/in;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    .line 597
    :goto_1
    invoke-interface {v1}, Lcom/flurry/sdk/nf;->a()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/sdk/se;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kk;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 599
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 600
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/flurry/sdk/nf;->a(Ljava/lang/Class;)Lcom/flurry/sdk/nf;

    move-result-object v1

    .line 603
    :cond_1
    invoke-interface {v1, p1, p2, v0, p3}, Lcom/flurry/sdk/nf;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Ljava/util/Collection;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 660
    invoke-virtual {v0, p1, p3, p2}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/nf;

    move-result-object v1

    .line 661
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->g()Lcom/flurry/sdk/se;

    move-result-object v2

    .line 663
    if-nez v1, :cond_0

    .line 664
    invoke-virtual {p0, p1, v2, p4}, Lcom/flurry/sdk/kk;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->l()Lcom/flurry/sdk/nd;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v0}, Lcom/flurry/sdk/nd;->a(Lcom/flurry/sdk/mn;Lcom/flurry/sdk/jk;Lcom/flurry/sdk/in;)Ljava/util/Collection;

    move-result-object v0

    .line 668
    invoke-interface {v1, p1, v2, v0, p4}, Lcom/flurry/sdk/nf;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Ljava/util/Collection;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    .line 524
    invoke-virtual {p0, v1, p1, p4}, Lcom/flurry/sdk/kk;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/flurry/sdk/ls;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/ip;",
            ")",
            "Lcom/flurry/sdk/jd",
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
    .line 542
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    .line 544
    sget-object v0, Lcom/flurry/sdk/kk;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/flurry/sdk/qg;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/qg;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;

    .line 545
    if-eqz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v0

    .line 550
    :cond_1
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->m()Lcom/flurry/sdk/qp;

    move-result-object v0

    .line 553
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3, v1}, Lcom/flurry/sdk/qp;->b(Lcom/flurry/sdk/se;Ljava/lang/Class;)[Lcom/flurry/sdk/se;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 556
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/qp;->b()Lcom/flurry/sdk/se;

    move-result-object v0

    .line 561
    :goto_1
    new-instance v1, Lcom/flurry/sdk/lg;

    invoke-direct {v1, v0, p4}, Lcom/flurry/sdk/lg;-><init>(Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)V

    move-object v0, v1

    .line 562
    goto :goto_0

    .line 558
    :cond_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/kk;->g:Lcom/flurry/sdk/mi;

    invoke-virtual {v0, p3, p1, p2}, Lcom/flurry/sdk/mi;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 566
    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    goto :goto_0
.end method
