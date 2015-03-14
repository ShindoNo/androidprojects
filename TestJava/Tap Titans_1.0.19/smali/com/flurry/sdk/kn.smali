.class public Lcom/flurry/sdk/kn;
.super Lcom/flurry/sdk/kk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kn$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/flurry/sdk/kn;

.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final i:Lcom/flurry/sdk/iy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/kn;->j:[Ljava/lang/Class;

    .line 227
    new-instance v0, Lcom/flurry/sdk/kn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/kn;-><init>(Lcom/flurry/sdk/iy$a;)V

    sput-object v0, Lcom/flurry/sdk/kn;->h:Lcom/flurry/sdk/kn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kn;-><init>(Lcom/flurry/sdk/iy$a;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/iy$a;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/flurry/sdk/kk;-><init>()V

    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance p1, Lcom/flurry/sdk/kn$a;

    invoke-direct {p1}, Lcom/flurry/sdk/kn$a;-><init>()V

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    .line 250
    return-void
.end method

.method static synthetic b()[Lcom/flurry/sdk/ja;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/flurry/sdk/kn;->a:[Lcom/flurry/sdk/ja;

    return-object v0
.end method

.method private c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 332
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    .line 333
    invoke-virtual {p0, v1, p1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/qx;

    move-result-object v2

    .line 335
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mo;

    .line 336
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->f()I

    move-result v3

    .line 338
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 339
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->d()Ljava/lang/Class;

    move-result-object v3

    .line 341
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/mo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_1

    .line 344
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter #0 type for factory method ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") not suitable, must be java.lang.String"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->i()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/qv;->a(Ljava/lang/reflect/Member;)V

    .line 349
    :cond_2
    invoke-static {v2, v0}, Lcom/flurry/sdk/ly;->a(Lcom/flurry/sdk/qx;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/ji;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 352
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

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

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_4
    invoke-static {v2}, Lcom/flurry/sdk/ly;->a(Lcom/flurry/sdk/qx;)Lcom/flurry/sdk/ji;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/flurry/sdk/iy$a;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iy$a;)Lcom/flurry/sdk/iy;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    if-ne v0, p1, :cond_0

    .line 282
    :goto_0
    return-object p0

    .line 277
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/kn;

    if-eq v0, v1, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance p0, Lcom/flurry/sdk/kn;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/kn;-><init>(Lcom/flurry/sdk/iy$a;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 7
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
    const/4 v6, 0x0

    .line 582
    invoke-virtual {p3}, Lcom/flurry/sdk/se;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object p3

    .line 587
    :cond_0
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 588
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 636
    :cond_1
    :goto_0
    return-object v0

    .line 593
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3, v6}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 596
    invoke-virtual {p1, v1}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    move-object v4, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 599
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 600
    if-nez v0, :cond_1

    .line 607
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    invoke-virtual {p0, p1, v1, v4, p4}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_3
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 615
    invoke-virtual {p0, p1, v4}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 616
    if-eqz v2, :cond_4

    .line 620
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/iv;->b(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 621
    invoke-virtual {p0, p1, v2, v0, p4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/flurry/sdk/kn;->d(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 627
    if-nez v0, :cond_1

    .line 632
    invoke-virtual {v1}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v6

    .line 633
    goto :goto_0

    .line 636
    :cond_5
    invoke-virtual {p0, p1, v1, v4, p4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v4, v0

    move-object v1, p3

    goto :goto_1
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/mt;",
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
    .line 696
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;

    move-result-object v1

    .line 698
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v1}, Lcom/flurry/sdk/ku;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    new-instance v1, Lcom/flurry/sdk/kj;

    invoke-direct {v1, p2}, Lcom/flurry/sdk/kj;-><init>(Lcom/flurry/sdk/se;)V

    .line 726
    :cond_0
    :goto_0
    return-object v1

    .line 704
    :cond_1
    invoke-virtual {p0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/km;

    move-result-object v0

    .line 705
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/ku;)V

    .line 707
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V

    .line 709
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V

    .line 710
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/kn;->c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V

    .line 713
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ko;

    .line 715
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/sdk/ko;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)Lcom/flurry/sdk/km;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 718
    :cond_3
    invoke-virtual {v1, p4}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ko;

    .line 723
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/sdk/ko;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 8
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

    .prologue
    .line 367
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 368
    invoke-interface/range {v0 .. v6}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/qf;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/qh;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 9
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

    .prologue
    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 402
    invoke-interface/range {v0 .. v7}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/qh;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 9
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

    .prologue
    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 385
    invoke-interface/range {v0 .. v7}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/qi;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 10
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

    .prologue
    .line 451
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 452
    invoke-interface/range {v0 .. v8}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/qk;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 458
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;
    .locals 10
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

    .prologue
    .line 433
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 434
    invoke-interface/range {v0 .. v8}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ql;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;Lcom/flurry/sdk/ji;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/iz;",
            "Lcom/flurry/sdk/mt;",
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
    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 482
    invoke-interface/range {v0 .. v5}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 2
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

    .prologue
    .line 466
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    .line 467
    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/sdk/ja;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 2
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

    .prologue
    .line 416
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    .line 417
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/ja;->a(Ljava/lang/Class;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 300
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jj;

    .line 301
    invoke-interface {v1, p2, p1, v0, p3}, Lcom/flurry/sdk/jj;->a(Lcom/flurry/sdk/se;Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 324
    :cond_1
    :goto_0
    return-object v0

    .line 309
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v0

    .line 310
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 311
    :cond_3
    invoke-static {p1, p2}, Lcom/flurry/sdk/ly;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ji;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_4
    sget-object v0, Lcom/flurry/sdk/kn;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ji;

    .line 315
    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/kn;->c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/ji;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {p1, p2}, Lcom/flurry/sdk/ly;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ji;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/km;
    .locals 1

    .prologue
    .line 804
    new-instance v0, Lcom/flurry/sdk/km;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/km;-><init>(Lcom/flurry/sdk/mt;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1284
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p3}, Lcom/flurry/sdk/mo;->k()V

    .line 1288
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/mo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/qo;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v3

    .line 1289
    new-instance v5, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p3}, Lcom/flurry/sdk/mo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v1

    invoke-direct {v5, v0, v3, v1, p3}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1290
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/se;

    move-result-object v1

    .line 1297
    invoke-virtual {p0, p1, p3, v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v2

    .line 1298
    if-eqz v2, :cond_1

    .line 1299
    new-instance v0, Lcom/flurry/sdk/kp;

    invoke-direct {v0, v5, p3, v1, v2}, Lcom/flurry/sdk/kp;-><init>(Lcom/flurry/sdk/ip;Lcom/flurry/sdk/mo;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jd;)V

    .line 1305
    :goto_0
    return-object v0

    .line 1304
    :cond_1
    invoke-virtual {v5}, Lcom/flurry/sdk/ip$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v1, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v1

    .line 1305
    new-instance v0, Lcom/flurry/sdk/kp;

    const/4 v2, 0x0

    invoke-direct {v0, v5, p3, v1, v2}, Lcom/flurry/sdk/kp;-><init>(Lcom/flurry/sdk/ip;Lcom/flurry/sdk/mo;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jd;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mm;)Lcom/flurry/sdk/kq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1361
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {p4}, Lcom/flurry/sdk/mm;->k()V

    .line 1364
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v0

    invoke-virtual {p4}, Lcom/flurry/sdk/mm;->c()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/qo;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v3

    .line 1365
    new-instance v5, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v0

    invoke-direct {v5, p3, v3, v0, p4}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 1366
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 1368
    if-eq v0, v3, :cond_1

    .line 1369
    invoke-virtual {v5, v0}, Lcom/flurry/sdk/ip$a;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ip$a;

    move-result-object v5

    .line 1374
    :cond_1
    invoke-virtual {p0, p1, p4, v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v6

    .line 1375
    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 1376
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/jv;

    .line 1377
    new-instance v0, Lcom/flurry/sdk/kq$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mm;)V

    .line 1379
    if-eqz v6, :cond_2

    .line 1380
    invoke-virtual {v0, v6}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 1383
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/in$a;

    move-result-object v1

    .line 1384
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/flurry/sdk/in$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1385
    invoke-virtual {v1}, Lcom/flurry/sdk/in$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;)V

    .line 1387
    :cond_3
    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1324
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p4}, Lcom/flurry/sdk/mo;->k()V

    .line 1329
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/flurry/sdk/mo;->b(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/qo;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v3

    .line 1330
    new-instance v5, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v0

    invoke-direct {v5, p3, v3, v0, p4}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 1331
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 1333
    if-eq v0, v3, :cond_1

    .line 1334
    invoke-virtual {v5, v0}, Lcom/flurry/sdk/ip$a;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ip$a;

    move-result-object v5

    .line 1340
    :cond_1
    invoke-virtual {p0, p1, p4, v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v6

    .line 1341
    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 1342
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/jv;

    .line 1343
    new-instance v0, Lcom/flurry/sdk/kq$d;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$d;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mo;)V

    .line 1345
    if-eqz v6, :cond_2

    .line 1346
    invoke-virtual {v0, v6}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 1349
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mn;)Lcom/flurry/sdk/in$a;

    move-result-object v1

    .line 1350
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/flurry/sdk/in$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1351
    invoke-virtual {v1}, Lcom/flurry/sdk/in$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;)V

    .line 1353
    :cond_3
    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v1

    .line 535
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/in;->j(Lcom/flurry/sdk/mk;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_4

    .line 537
    instance-of v2, v0, Lcom/flurry/sdk/ku;

    if-eqz v2, :cond_1

    .line 538
    check-cast v0, Lcom/flurry/sdk/ku;

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kv;

    .line 559
    invoke-interface {v0, p1, p2, v1}, Lcom/flurry/sdk/kv;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/io;Lcom/flurry/sdk/ku;)Lcom/flurry/sdk/ku;

    move-result-object v1

    .line 561
    if-nez v1, :cond_0

    .line 562
    new-instance v1, Lcom/flurry/sdk/je;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken registered ValueInstantiators (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): returned null ValueInstantiator"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/je;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_1
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value instantiator returned for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": neither a Class nor ValueInstantiator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_2
    check-cast v0, Ljava/lang/Class;

    .line 544
    const-class v2, Lcom/flurry/sdk/ku;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid instantiator Class<?> returned for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not a ValueInstantiator"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/iv;->c(Lcom/flurry/sdk/mj;Ljava/lang/Class;)Lcom/flurry/sdk/ku;

    move-result-object v0

    goto/16 :goto_0

    .line 553
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kn;->c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    .line 568
    :cond_6
    return-object v1
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;ILcom/flurry/sdk/mq;Ljava/lang/Object;)Lcom/flurry/sdk/ky;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->m()Lcom/flurry/sdk/qp;

    move-result-object v0

    invoke-virtual {p5}, Lcom/flurry/sdk/mq;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/qp;->a(Ljava/lang/reflect/Type;Lcom/flurry/sdk/qo;)Lcom/flurry/sdk/se;

    move-result-object v3

    .line 1072
    new-instance v5, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v0

    invoke-direct {v5, p3, v3, v0, p5}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    .line 1073
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mn;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 1074
    if-eq v0, v3, :cond_0

    .line 1075
    invoke-virtual {v5, v0}, Lcom/flurry/sdk/ip$a;->a(Lcom/flurry/sdk/se;)Lcom/flurry/sdk/ip$a;

    move-result-object v5

    .line 1078
    :cond_0
    invoke-virtual {p0, p1, p5, v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v8

    .line 1080
    invoke-virtual {p0, p1, p5, v0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 1083
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jv;

    .line 1085
    if-nez v0, :cond_2

    .line 1086
    invoke-virtual {p0, p1, v2, v5}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jv;

    move-result-object v3

    .line 1088
    :goto_0
    new-instance v0, Lcom/flurry/sdk/ky;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v4

    move-object v1, p3

    move-object v5, p5

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ky;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mq;ILjava/lang/Object;)V

    .line 1090
    if-eqz v8, :cond_1

    .line 1091
    invoke-virtual {v0, v8}, Lcom/flurry/sdk/ky;->b(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/ky;

    move-result-object v0

    .line 1093
    :cond_1
    return-object v0

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 505
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 506
    if-nez v0, :cond_0

    .line 507
    return-object p2

    .line 513
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v2

    .line 515
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid abstract type resolution from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": latter is not a subtype of former"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object p2, v0

    .line 519
    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->d()Ljava/util/List;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    .line 1112
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/mk;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1113
    if-eqz v2, :cond_0

    .line 1114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1115
    invoke-virtual {p3, v2}, Lcom/flurry/sdk/km;->a(Z)V

    .line 1119
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/in;->c(Lcom/flurry/sdk/mk;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/qt;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 1120
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1121
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->l()Lcom/flurry/sdk/mo;

    move-result-object v3

    .line 1130
    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->f()Ljava/util/Set;

    move-result-object v0

    .line 1132
    :goto_1
    if-eqz v0, :cond_3

    .line 1133
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1136
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 1130
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->g()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 1140
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 1144
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->a()Ljava/lang/String;

    move-result-object v6

    .line 1145
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1152
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1154
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/iq;)V

    goto :goto_3

    .line 1158
    :cond_5
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1159
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->h()Lcom/flurry/sdk/mo;

    move-result-object v0

    .line 1161
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/mo;->a(I)Ljava/lang/Class;

    move-result-object v7

    .line 1162
    invoke-virtual {p0, p1, p2, v7, v4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1164
    invoke-virtual {p3, v6}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 1167
    :cond_6
    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_4

    .line 1169
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/kq;)V

    goto :goto_3

    .line 1173
    :cond_7
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1174
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->i()Lcom/flurry/sdk/mm;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcom/flurry/sdk/mm;->d()Ljava/lang/Class;

    move-result-object v7

    .line 1177
    invoke-virtual {p0, p1, p2, v7, v4}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1179
    invoke-virtual {p3, v6}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 1182
    :cond_8
    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mm;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_4

    .line 1184
    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/kq;)V

    goto :goto_3

    .line 1189
    :cond_9
    if-eqz v3, :cond_a

    .line 1190
    invoke-virtual {p0, p1, p2, v3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kp;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/kp;)V

    .line 1199
    :cond_a
    sget-object v0, Lcom/flurry/sdk/iv$a;->e:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 1206
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1207
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->a()Ljava/lang/String;

    move-result-object v3

    .line 1208
    invoke-virtual {p3, v3}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1211
    invoke-virtual {v0}, Lcom/flurry/sdk/iq;->g()Lcom/flurry/sdk/mo;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Lcom/flurry/sdk/mo;->d()Ljava/lang/Class;

    move-result-object v4

    .line 1214
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_c

    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1215
    :cond_c
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p3, v3}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1216
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/kq;)V

    goto :goto_4

    .line 1222
    :cond_d
    return-void
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/nb",
            "<*>;",
            "Lcom/flurry/sdk/in;",
            "Lcom/flurry/sdk/kx;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/sdk/mt;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/ml;

    .line 852
    invoke-virtual {v7}, Lcom/flurry/sdk/ml;->f()I

    move-result v4

    .line 853
    const/4 v1, 0x1

    if-lt v4, v1, :cond_0

    .line 856
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v8

    .line 857
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v9

    .line 859
    const/4 v1, 0x1

    if-ne v4, v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 860
    invoke-virtual/range {v1 .. v9}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;Lcom/flurry/sdk/ml;ZZ)Z

    goto :goto_0

    .line 864
    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_0

    .line 875
    :cond_2
    const/4 v3, 0x0

    .line 876
    const/4 v2, 0x0

    .line 877
    const/4 v1, 0x0

    .line 878
    new-array v5, v4, [Lcom/flurry/sdk/ky;

    .line 879
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_7

    .line 880
    invoke-virtual {v7, v13}, Lcom/flurry/sdk/ml;->c(I)Lcom/flurry/sdk/mq;

    move-result-object v14

    .line 881
    if-nez v14, :cond_4

    const/4 v12, 0x0

    .line 882
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/mn;)Ljava/lang/Object;

    move-result-object v15

    .line 883
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 884
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 885
    invoke-virtual/range {v9 .. v15}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;ILcom/flurry/sdk/mq;Ljava/lang/Object;)Lcom/flurry/sdk/ky;

    move-result-object v6

    aput-object v6, v5, v13

    move-object v14, v3

    .line 879
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object v3, v14

    goto :goto_1

    .line 881
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mq;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 886
    :cond_5
    if-eqz v15, :cond_6

    .line 887
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 888
    invoke-virtual/range {v9 .. v15}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;ILcom/flurry/sdk/mq;Ljava/lang/Object;)Lcom/flurry/sdk/ky;

    move-result-object v6

    aput-object v6, v5, v13

    move-object v14, v3

    goto :goto_3

    .line 889
    :cond_6
    if-eqz v3, :cond_3

    move-object v14, v3

    goto :goto_3

    .line 895
    :cond_7
    if-nez v8, :cond_8

    if-gtz v2, :cond_8

    if-lez v1, :cond_0

    .line 897
    :cond_8
    add-int v6, v2, v1

    if-ne v6, v4, :cond_9

    .line 898
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v5}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;[Lcom/flurry/sdk/ky;)V

    goto/16 :goto_0

    .line 899
    :cond_9
    if-nez v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_a

    .line 902
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/flurry/sdk/mq;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_b
    return-void
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;Lcom/flurry/sdk/ml;ZZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/nb",
            "<*>;",
            "Lcom/flurry/sdk/in;",
            "Lcom/flurry/sdk/kx;",
            "Lcom/flurry/sdk/ml;",
            "ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/flurry/sdk/ml;->c(I)Lcom/flurry/sdk/mq;

    move-result-object v5

    .line 922
    invoke-virtual {p4, v5}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mq;)Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-virtual {p4, v5}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/mn;)Ljava/lang/Object;

    move-result-object v6

    .line 925
    if-nez v6, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 927
    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [Lcom/flurry/sdk/ky;

    .line 928
    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;ILcom/flurry/sdk/mq;Ljava/lang/Object;)Lcom/flurry/sdk/ky;

    move-result-object v0

    aput-object v0, v7, v8

    .line 929
    invoke-virtual {p5, p6, v7}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;[Lcom/flurry/sdk/ky;)V

    .line 930
    const/4 v0, 0x1

    .line 965
    :goto_0
    return v0

    .line 934
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/flurry/sdk/ml;->a(I)Ljava/lang/Class;

    move-result-object v0

    .line 935
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 936
    if-nez p7, :cond_2

    if-eqz p8, :cond_3

    .line 937
    :cond_2
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;)V

    .line 939
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 941
    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    .line 942
    :cond_5
    if-nez p7, :cond_6

    if-eqz p8, :cond_7

    .line 943
    :cond_6
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->b(Lcom/flurry/sdk/mr;)V

    .line 945
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 947
    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_c

    .line 948
    :cond_9
    if-nez p7, :cond_a

    if-eqz p8, :cond_b

    .line 949
    :cond_a
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->c(Lcom/flurry/sdk/mr;)V

    .line 951
    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    .line 953
    :cond_c
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_10

    .line 954
    :cond_d
    if-nez p7, :cond_e

    if-eqz p8, :cond_f

    .line 955
    :cond_e
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->d(Lcom/flurry/sdk/mr;)V

    .line 957
    :cond_f
    const/4 v0, 0x1

    goto :goto_0

    .line 961
    :cond_10
    if-eqz p7, :cond_11

    .line 962
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->f(Lcom/flurry/sdk/mr;)V

    .line 963
    const/4 v0, 0x1

    goto :goto_0

    .line 965
    :cond_11
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;Lcom/flurry/sdk/mo;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/nb",
            "<*>;",
            "Lcom/flurry/sdk/in;",
            "Lcom/flurry/sdk/kx;",
            "Lcom/flurry/sdk/mo;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p6, v1}, Lcom/flurry/sdk/mo;->a(I)Ljava/lang/Class;

    move-result-object v2

    .line 1023
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2

    .line 1024
    if-nez p7, :cond_0

    invoke-interface {p3, p6}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;)V

    .line 1057
    :cond_1
    :goto_0
    return v0

    .line 1029
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_3

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_5

    .line 1030
    :cond_3
    if-nez p7, :cond_4

    invoke-interface {p3, p6}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    :cond_4
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->b(Lcom/flurry/sdk/mr;)V

    goto :goto_0

    .line 1035
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_6

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_8

    .line 1036
    :cond_6
    if-nez p7, :cond_7

    invoke-interface {p3, p6}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    :cond_7
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->c(Lcom/flurry/sdk/mr;)V

    goto :goto_0

    .line 1041
    :cond_8
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_b

    .line 1042
    :cond_9
    if-nez p7, :cond_a

    invoke-interface {p3, p6}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    :cond_a
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->d(Lcom/flurry/sdk/mr;)V

    goto :goto_0

    .line 1047
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_c

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_e

    .line 1048
    :cond_c
    if-nez p7, :cond_d

    invoke-interface {p3, p6}, Lcom/flurry/sdk/nb;->a(Lcom/flurry/sdk/mn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1049
    :cond_d
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->e(Lcom/flurry/sdk/mr;)V

    goto :goto_0

    .line 1053
    :cond_e
    invoke-virtual {p4, p6}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1054
    invoke-virtual {p5, p6}, Lcom/flurry/sdk/kx;->f(Lcom/flurry/sdk/mr;)V

    goto :goto_0

    :cond_f
    move v0, v1

    .line 1057
    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1463
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1464
    if-nez v0, :cond_0

    .line 1465
    invoke-virtual {p1, p3}, Lcom/flurry/sdk/iv;->c(Ljava/lang/Class;)Lcom/flurry/sdk/io;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mt;

    .line 1466
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/in;->e(Lcom/flurry/sdk/mk;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1468
    if-nez v0, :cond_0

    .line 1469
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1472
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1439
    invoke-static {p1}, Lcom/flurry/sdk/qv;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_0

    .line 1441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") as a Bean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1443
    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/qv;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize Proxy class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a Bean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_1
    invoke-static {p1, v1}, Lcom/flurry/sdk/qv;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 1450
    if-eqz v0, :cond_2

    .line 1451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") as a Bean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    :cond_2
    return v1
.end method

.method public b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/se;",
            "Lcom/flurry/sdk/mt;",
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
    .line 736
    invoke-virtual {p0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/km;

    move-result-object v0

    .line 737
    invoke-virtual {p0, p1, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/ku;)V

    .line 739
    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V

    .line 746
    const-string v1, "initCause"

    sget-object v2, Lcom/flurry/sdk/kn;->j:[Ljava/lang/Class;

    invoke-virtual {p3, v1, v2}, Lcom/flurry/sdk/mt;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/sdk/mo;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_0

    .line 748
    const-string v2, "cause"

    invoke-virtual {p0, p1, p3, v2, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;

    move-result-object v1

    .line 749
    if-eqz v1, :cond_0

    .line 754
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/kq;Z)V

    .line 759
    :cond_0
    const-string v1, "localizedMessage"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    .line 763
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ko;

    .line 768
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/sdk/ko;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)Lcom/flurry/sdk/km;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 771
    :cond_2
    invoke-virtual {v1, p4}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v0

    .line 776
    instance-of v1, v0, Lcom/flurry/sdk/kl;

    if-eqz v1, :cond_3

    .line 777
    new-instance v1, Lcom/flurry/sdk/md;

    check-cast v0, Lcom/flurry/sdk/kl;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/md;-><init>(Lcom/flurry/sdk/kl;)V

    move-object v0, v1

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 782
    iget-object v1, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/iy$a;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ko;

    .line 783
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/sdk/ko;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jd;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 786
    :cond_5
    return-object v1
.end method

.method protected b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1402
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p4}, Lcom/flurry/sdk/mo;->k()V

    .line 1406
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->j()Lcom/flurry/sdk/qo;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/flurry/sdk/mo;->a(Lcom/flurry/sdk/qo;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 1410
    new-instance v1, Lcom/flurry/sdk/ip$a;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v2

    invoke-direct {v1, p3, v0, v2, p4}, Lcom/flurry/sdk/ip$a;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;)V

    .line 1412
    invoke-virtual {p0, p1, p4, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jd;

    move-result-object v6

    .line 1413
    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mj;Lcom/flurry/sdk/se;Ljava/lang/String;)Lcom/flurry/sdk/se;

    move-result-object v2

    .line 1414
    invoke-virtual {v2}, Lcom/flurry/sdk/se;->o()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/jv;

    .line 1415
    new-instance v0, Lcom/flurry/sdk/kq$f;

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$f;-><init>(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/jv;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mo;)V

    .line 1417
    if-eqz v6, :cond_1

    .line 1418
    invoke-virtual {v0, v6}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/kq;

    move-result-object v0

    .line 1420
    :cond_1
    return-object v0
.end method

.method protected b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/se;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v1

    .line 667
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 668
    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    .line 673
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p2}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v1

    .line 647
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/flurry/sdk/kn;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy$a;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 649
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/se;)Lcom/flurry/sdk/se;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/se;->p()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 655
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->q()Ljava/util/Map;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_1

    .line 1237
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mn;

    .line 1240
    instance-of v3, v0, Lcom/flurry/sdk/mo;

    if-eqz v3, :cond_0

    .line 1241
    invoke-virtual {v0}, Lcom/flurry/sdk/mn;->b()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/flurry/sdk/mo;

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mo;)Lcom/flurry/sdk/kq;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Lcom/flurry/sdk/kq;)V

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/mn;->b()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/flurry/sdk/mm;

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;Lcom/flurry/sdk/mm;)Lcom/flurry/sdk/kq;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Lcom/flurry/sdk/kq;)V

    goto :goto_0

    .line 1249
    :cond_1
    return-void
.end method

.method protected b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iv;",
            "Lcom/flurry/sdk/mt;",
            "Lcom/flurry/sdk/nb",
            "<*>;",
            "Lcom/flurry/sdk/in;",
            "Lcom/flurry/sdk/kx;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 974
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/sdk/mt;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/mo;

    .line 975
    invoke-virtual {v7}, Lcom/flurry/sdk/mo;->f()I

    move-result v1

    .line 976
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 979
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v8

    .line 981
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 982
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/flurry/sdk/mo;->c(I)Lcom/flurry/sdk/mq;

    move-result-object v2

    .line 983
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mq;)Ljava/lang/String;

    move-result-object v3

    .line 984
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/mn;)Ljava/lang/Object;

    move-result-object v2

    .line 986
    if-nez v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 987
    invoke-virtual/range {v1 .. v8}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;Lcom/flurry/sdk/mo;Z)Z

    goto :goto_0

    .line 995
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/in;->k(Lcom/flurry/sdk/mj;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    :cond_3
    new-array v2, v1, [Lcom/flurry/sdk/ky;

    .line 1001
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_6

    .line 1002
    invoke-virtual {v7, v12}, Lcom/flurry/sdk/mo;->c(I)Lcom/flurry/sdk/mq;

    move-result-object v13

    .line 1003
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mq;)Ljava/lang/String;

    move-result-object v11

    .line 1004
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/flurry/sdk/in;->d(Lcom/flurry/sdk/mn;)Ljava/lang/Object;

    move-result-object v14

    .line 1006
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-nez v14, :cond_5

    .line 1007
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of factory method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1009
    invoke-virtual/range {v8 .. v14}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Ljava/lang/String;ILcom/flurry/sdk/mq;Ljava/lang/Object;)Lcom/flurry/sdk/ky;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1001
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1011
    :cond_6
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v2}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/mr;[Lcom/flurry/sdk/ky;)V

    goto/16 :goto_0

    .line 1013
    :cond_7
    return-void
.end method

.method protected c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;)Lcom/flurry/sdk/ku;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 817
    sget-object v0, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v0

    .line 818
    new-instance v5, Lcom/flurry/sdk/kx;

    invoke-direct {v5, p2, v0}, Lcom/flurry/sdk/kx;-><init>(Lcom/flurry/sdk/mt;Z)V

    .line 819
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v4

    .line 823
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->a()Lcom/flurry/sdk/se;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/se;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->k()Lcom/flurry/sdk/ml;

    move-result-object v1

    .line 825
    if-eqz v1, :cond_1

    .line 826
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v1}, Lcom/flurry/sdk/ml;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/qv;->a(Ljava/lang/reflect/Member;)V

    .line 829
    :cond_0
    invoke-virtual {v5, v1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/ml;)V

    .line 834
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->e()Lcom/flurry/sdk/nb;

    move-result-object v0

    .line 835
    invoke-virtual {p1}, Lcom/flurry/sdk/iv;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->c()Lcom/flurry/sdk/mk;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/mk;Lcom/flurry/sdk/nb;)Lcom/flurry/sdk/nb;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 840
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->b(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 841
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/nb;Lcom/flurry/sdk/in;Lcom/flurry/sdk/kx;)V

    .line 843
    invoke-virtual {v5, p1}, Lcom/flurry/sdk/kx;->a(Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/ku;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/flurry/sdk/iv;Lcom/flurry/sdk/mt;Lcom/flurry/sdk/km;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/je;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->m()Ljava/util/Map;

    move-result-object v0

    .line 1262
    if-eqz v0, :cond_1

    .line 1263
    sget-object v1, Lcom/flurry/sdk/iv$a;->f:Lcom/flurry/sdk/iv$a;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/iv;->a(Lcom/flurry/sdk/iv$a;)Z

    move-result v6

    .line 1264
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/mn;

    .line 1266
    if-eqz v6, :cond_0

    .line 1267
    invoke-virtual {v4}, Lcom/flurry/sdk/mn;->k()V

    .line 1269
    :cond_0
    invoke-virtual {v4}, Lcom/flurry/sdk/mn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/flurry/sdk/mn;->c()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/flurry/sdk/mt;->a(Ljava/lang/reflect/Type;)Lcom/flurry/sdk/se;

    move-result-object v2

    invoke-virtual {p2}, Lcom/flurry/sdk/mt;->i()Lcom/flurry/sdk/qs;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Lcom/flurry/sdk/se;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/mn;Ljava/lang/Object;)V

    goto :goto_0

    .line 1273
    :cond_1
    return-void
.end method
