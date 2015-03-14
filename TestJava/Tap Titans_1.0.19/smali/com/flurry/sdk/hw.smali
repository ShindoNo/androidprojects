.class public Lcom/flurry/sdk/hw;
.super Lcom/flurry/sdk/hq;
.source "SourceFile"


# static fields
.field static final g:[B

.field protected static final h:[I

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B


# instance fields
.field protected final i:Lcom/flurry/sdk/ib;

.field protected final j:Ljava/io/OutputStream;

.field protected k:[I

.field protected l:I

.field protected m:Lcom/flurry/sdk/ia;

.field protected n:[B

.field protected o:I

.field protected final p:I

.field protected final q:I

.field protected r:[C

.field protected final s:I

.field protected t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-static {}, Lcom/flurry/sdk/sh;->h()[B

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hw;->g:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flurry/sdk/hw;->u:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/flurry/sdk/hw;->v:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/flurry/sdk/hw;->w:[B

    .line 50
    invoke-static {}, Lcom/flurry/sdk/sh;->f()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hw;->h:[I

    return-void

    .line 42
    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 43
    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 44
    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lcom/flurry/sdk/ib;ILcom/flurry/sdk/hk;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/hq;-><init>(ILcom/flurry/sdk/hk;)V

    .line 77
    sget-object v0, Lcom/flurry/sdk/hw;->h:[I

    iput-object v0, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/hw;->i:Lcom/flurry/sdk/ib;

    .line 164
    iput-object p4, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/hw;->t:Z

    .line 166
    invoke-virtual {p1}, Lcom/flurry/sdk/ib;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    array-length v0, v0

    iput v0, p0, Lcom/flurry/sdk/hw;->p:I

    .line 172
    iget v0, p0, Lcom/flurry/sdk/hw;->p:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/flurry/sdk/hw;->q:I

    .line 173
    invoke-virtual {p1}, Lcom/flurry/sdk/ib;->h()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->r:[C

    .line 174
    iget-object v0, p0, Lcom/flurry/sdk/hw;->r:[C

    array-length v0, v0

    iput v0, p0, Lcom/flurry/sdk/hw;->s:I

    .line 177
    sget-object v0, Lcom/flurry/sdk/hc$a;->g:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(I)Lcom/flurry/sdk/hc;

    .line 180
    :cond_0
    return-void
.end method

.method private final a(I[CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    const v0, 0xd800

    if-lt p1, v0, :cond_1

    .line 1644
    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    .line 1646
    if-lt p3, p4, :cond_0

    .line 1647
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 1649
    :cond_0
    aget-char v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hw;->a(II)V

    .line 1650
    add-int/lit8 p3, p3, 0x1

    .line 1657
    :goto_0
    return p3

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1654
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1655
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1656
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private a([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1482
    array-length v1, p4

    .line 1483
    add-int v0, p2, v1

    if-le v0, p3, :cond_2

    .line 1484
    iput p2, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1485
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1486
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1487
    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 1488
    iget-object v2, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    invoke-virtual {v2, p4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1499
    :cond_0
    :goto_0
    return v0

    .line 1491
    :cond_1
    invoke-static {p4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    add-int/2addr v0, v1

    .line 1495
    :goto_1
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, v0

    if-le v1, p3, :cond_0

    .line 1496
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1497
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_1
.end method

.method private a([BILcom/flurry/sdk/hm;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-interface {p3}, Lcom/flurry/sdk/hm;->c()[B

    move-result-object v4

    .line 1469
    array-length v0, v4

    .line 1470
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 1471
    iget v3, p0, Lcom/flurry/sdk/hw;->p:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hw;->a([BII[BI)I

    move-result v0

    .line 1475
    :goto_0
    return v0

    .line 1474
    :cond_0
    const/4 v1, 0x0

    invoke-static {v4, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1475
    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private final b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 892
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 896
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {p1, p2, v0, v1}, Lcom/flurry/sdk/ig;->a(J[BI)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 897
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 898
    return-void
.end method

.method private final b([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1162
    array-length v0, p1

    .line 1163
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1166
    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    goto :goto_0
.end method

.method private final c(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1687
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    .line 1688
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1689
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1691
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/flurry/sdk/hw;->g:[B

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1692
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/flurry/sdk/hw;->g:[B

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1693
    add-int/lit8 v3, v2, 0x1

    sget-object v0, Lcom/flurry/sdk/hw;->g:[B

    shr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v0, v0, v4

    aput-byte v0, v1, v2

    .line 1694
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lcom/flurry/sdk/hw;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    .line 1700
    :goto_0
    return v0

    .line 1696
    :cond_0
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 1697
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 1698
    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method private final c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 867
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 871
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ig;->a(I[BI)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 872
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 873
    return-void
.end method

.method private final c(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 976
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    .line 981
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 985
    return-void
.end method

.method private final c([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 591
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 595
    iget-object v0, p0, Lcom/flurry/sdk/hw;->r:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/flurry/sdk/hw;->e([CII)V

    .line 596
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 600
    return-void
.end method

.method private d(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1731
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1732
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1733
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1734
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 1735
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 1736
    add-int/lit8 v4, v2, 0x1

    sget-object v0, Lcom/flurry/sdk/hw;->g:[B

    shr-int/lit8 v5, v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v1, v2

    .line 1737
    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lcom/flurry/sdk/hw;->g:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v4

    .line 1738
    and-int/lit16 p1, p1, 0xff

    .line 1744
    :goto_0
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/flurry/sdk/hw;->g:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1745
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/flurry/sdk/hw;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1746
    return v0

    .line 1740
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    .line 1741
    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method private final d([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 787
    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    .line 788
    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    move v0, p2

    .line 791
    :goto_0
    if-ge v0, p3, :cond_4

    .line 794
    :cond_0
    aget-char v3, p1, v0

    .line 795
    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 807
    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v3, v4, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 810
    :cond_1
    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    .line 811
    const/16 v3, 0x800

    if-ge v0, v3, :cond_5

    .line 812
    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 813
    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :goto_1
    move v0, p2

    .line 817
    goto :goto_0

    .line 799
    :cond_2
    iget v4, p0, Lcom/flurry/sdk/hw;->o:I

    if-lt v4, v1, :cond_3

    .line 800
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 802
    :cond_3
    iget v4, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/sdk/hw;->o:I

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 803
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_0

    .line 818
    :cond_4
    return-void

    .line 815
    :cond_5
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/flurry/sdk/hw;->a(I[CII)I

    goto :goto_1
.end method

.method private final e([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1231
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->q:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1232
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1235
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 1236
    add-int/2addr p2, v0

    .line 1237
    sub-int/2addr p3, v0

    .line 1238
    if-gtz p3, :cond_0

    .line 1239
    return-void
.end method

.method private final f([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1261
    add-int v2, p3, p2

    .line 1263
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1264
    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1265
    iget-object v4, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 1267
    :goto_0
    if-ge p2, v2, :cond_0

    .line 1268
    aget-char v5, p1, p2

    .line 1270
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_0

    aget v1, v4, v5

    if-eqz v1, :cond_2

    .line 1276
    :cond_0
    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1277
    if-ge p2, v2, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/flurry/sdk/hw;->m:Lcom/flurry/sdk/ia;

    if-eqz v0, :cond_3

    .line 1280
    invoke-direct {p0, p1, p2, v2}, Lcom/flurry/sdk/hw;->i([CII)V

    .line 1289
    :cond_1
    :goto_1
    return-void

    .line 1273
    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 1274
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 1275
    goto :goto_0

    .line 1282
    :cond_3
    iget v0, p0, Lcom/flurry/sdk/hw;->l:I

    if-nez v0, :cond_4

    .line 1283
    invoke-direct {p0, p1, p2, v2}, Lcom/flurry/sdk/hw;->g([CII)V

    goto :goto_1

    .line 1285
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/flurry/sdk/hw;->h([CII)V

    goto :goto_1
.end method

.method private final g([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1299
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v0, v1, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1303
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1305
    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1306
    iget-object v4, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 1308
    :goto_0
    if-ge p2, p3, :cond_5

    .line 1309
    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    .line 1310
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_3

    .line 1311
    aget v1, v4, v5

    if-nez v1, :cond_1

    .line 1312
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    .line 1313
    goto :goto_0

    .line 1315
    :cond_1
    aget v1, v4, v5

    .line 1316
    if-lez v1, :cond_2

    .line 1317
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    .line 1318
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_0

    .line 1321
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/flurry/sdk/hw;->d(II)I

    move-result v0

    move p2, v2

    .line 1323
    goto :goto_0

    .line 1325
    :cond_3
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_4

    .line 1326
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1327
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    :goto_1
    move p2, v2

    .line 1331
    goto :goto_0

    .line 1329
    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/flurry/sdk/hw;->c(II)I

    move-result v0

    goto :goto_1

    .line 1332
    :cond_5
    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1333
    return-void
.end method

.method private final h([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1353
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v0, v1, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1357
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1359
    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1360
    iget-object v4, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 1361
    iget v5, p0, Lcom/flurry/sdk/hw;->l:I

    .line 1363
    :goto_0
    if-ge p2, p3, :cond_6

    .line 1364
    add-int/lit8 v2, p2, 0x1

    aget-char v6, p1, p2

    .line 1365
    const/16 v1, 0x7f

    if-gt v6, v1, :cond_3

    .line 1366
    aget v1, v4, v6

    if-nez v1, :cond_1

    .line 1367
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    .line 1368
    goto :goto_0

    .line 1370
    :cond_1
    aget v1, v4, v6

    .line 1371
    if-lez v1, :cond_2

    .line 1372
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    .line 1373
    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_0

    .line 1376
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/flurry/sdk/hw;->d(II)I

    move-result v0

    move p2, v2

    .line 1378
    goto :goto_0

    .line 1380
    :cond_3
    if-le v6, v5, :cond_4

    .line 1381
    invoke-direct {p0, v6, v0}, Lcom/flurry/sdk/hw;->d(II)I

    move-result v0

    move p2, v2

    .line 1382
    goto :goto_0

    .line 1384
    :cond_4
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_5

    .line 1385
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    .line 1386
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    :goto_1
    move p2, v2

    .line 1390
    goto :goto_0

    .line 1388
    :cond_5
    invoke-direct {p0, v6, v0}, Lcom/flurry/sdk/hw;->c(II)I

    move-result v0

    goto :goto_1

    .line 1391
    :cond_6
    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1392
    return-void
.end method

.method private final i([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1411
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v0, v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1414
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1416
    iget-object v4, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1417
    iget-object v5, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 1419
    iget v0, p0, Lcom/flurry/sdk/hw;->l:I

    if-gtz v0, :cond_1

    const v0, 0xffff

    .line 1420
    :goto_0
    iget-object v6, p0, Lcom/flurry/sdk/hw;->m:Lcom/flurry/sdk/ia;

    .line 1422
    :goto_1
    if-ge p2, p3, :cond_a

    .line 1423
    add-int/lit8 v3, p2, 0x1

    aget-char v7, p1, p2

    .line 1424
    const/16 v2, 0x7f

    if-gt v7, v2, :cond_6

    .line 1425
    aget v2, v5, v7

    if-nez v2, :cond_2

    .line 1426
    add-int/lit8 v2, v1, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v1

    move v1, v2

    move p2, v3

    .line 1427
    goto :goto_1

    .line 1419
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hw;->l:I

    goto :goto_0

    .line 1429
    :cond_2
    aget v2, v5, v7

    .line 1430
    if-lez v2, :cond_3

    .line 1431
    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x5c

    aput-byte v8, v4, v1

    .line 1432
    add-int/lit8 v1, v7, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    move p2, v3

    goto :goto_1

    .line 1433
    :cond_3
    const/4 v8, -0x2

    if-ne v2, v8, :cond_5

    .line 1434
    invoke-virtual {v6, v7}, Lcom/flurry/sdk/ia;->a(I)Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 1435
    if-nez v2, :cond_4

    .line 1436
    new-instance v0, Lcom/flurry/sdk/hb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", although was supposed to have one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/hb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_4
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/flurry/sdk/hw;->a([BILcom/flurry/sdk/hm;I)I

    move-result v1

    move p2, v3

    .line 1440
    goto :goto_1

    .line 1442
    :cond_5
    invoke-direct {p0, v7, v1}, Lcom/flurry/sdk/hw;->d(II)I

    move-result v1

    move p2, v3

    .line 1444
    goto :goto_1

    .line 1446
    :cond_6
    if-le v7, v0, :cond_7

    .line 1447
    invoke-direct {p0, v7, v1}, Lcom/flurry/sdk/hw;->d(II)I

    move-result v1

    move p2, v3

    .line 1448
    goto :goto_1

    .line 1450
    :cond_7
    invoke-virtual {v6, v7}, Lcom/flurry/sdk/ia;->a(I)Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 1451
    if-eqz v2, :cond_8

    .line 1452
    sub-int v7, p3, v3

    invoke-direct {p0, v4, v1, v2, v7}, Lcom/flurry/sdk/hw;->a([BILcom/flurry/sdk/hm;I)I

    move-result v1

    move p2, v3

    .line 1453
    goto :goto_1

    .line 1455
    :cond_8
    const/16 v2, 0x7ff

    if-gt v7, v2, :cond_9

    .line 1456
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    .line 1457
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    :goto_2
    move p2, v3

    .line 1461
    goto/16 :goto_1

    .line 1459
    :cond_9
    invoke-direct {p0, v7, v1}, Lcom/flurry/sdk/hw;->c(II)I

    move-result v1

    goto :goto_2

    .line 1462
    :cond_a
    iput v1, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1463
    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 577
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 581
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->l(Ljava/lang/String;)V

    .line 582
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 586
    return-void
.end method

.method private final l(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1207
    iget-object v3, p0, Lcom/flurry/sdk/hw;->r:[C

    move v2, v0

    move v0, v1

    .line 1209
    :goto_0
    if-lez v2, :cond_1

    .line 1210
    iget v4, p0, Lcom/flurry/sdk/hw;->q:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1211
    add-int v5, v0, v4

    invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1212
    iget v5, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v5, v6, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1215
    :cond_0
    invoke-direct {p0, v3, v1, v4}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 1216
    add-int/2addr v0, v4

    .line 1217
    sub-int/2addr v2, v4

    .line 1218
    goto :goto_0

    .line 1219
    :cond_1
    return-void
.end method

.method private final p()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1719
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hw;->u:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1720
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1721
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/hc;
    .locals 0

    .prologue
    .line 211
    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/flurry/sdk/hw;->l:I

    .line 212
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/ia;)Lcom/flurry/sdk/hc;
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/flurry/sdk/hw;->m:Lcom/flurry/sdk/ia;

    .line 224
    if-nez p1, :cond_0

    .line 225
    sget-object v0, Lcom/flurry/sdk/hw;->h:[I

    iput-object v0, p0, Lcom/flurry/sdk/hw;->k:[I

    .line 229
    :goto_0
    return-object p0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/ia;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->k:[I

    goto :goto_0
.end method

.method public a(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 766
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 770
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 771
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 778
    :goto_0
    return-void

    .line 772
    :cond_1
    const/16 v1, 0x800

    if-ge p1, v1, :cond_2

    .line 773
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 774
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 776
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/flurry/sdk/hw;->a(I[CII)I

    goto :goto_0
.end method

.method public a(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/hc$a;->d:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->b(Ljava/lang/String;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 928
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/hc$a;->d:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 939
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->b(Ljava/lang/String;)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 944
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/hw;->b(II)I

    move-result v0

    .line 1664
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1667
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1668
    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1669
    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1670
    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1671
    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1672
    return-void
.end method

.method public a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 879
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 880
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hw;->b(J)V

    .line 889
    :goto_0
    return-void

    .line 884
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {p1, p2, v0, v1}, Lcom/flurry/sdk/ig;->a(J[BI)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/gx;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 830
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 836
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/hw;->b(Lcom/flurry/sdk/gx;[BII)V

    .line 838
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 842
    return-void
.end method

.method public final a(Lcom/flurry/sdk/hm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 312
    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-interface {p1}, Lcom/flurry/sdk/hm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hu;->a(Ljava/lang/String;)I

    move-result v1

    .line 313
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 314
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v2, :cond_2

    .line 317
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hm;Z)V

    .line 327
    :goto_1
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_2
    if-ne v1, v0, :cond_4

    .line 321
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 326
    :cond_4
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hw;->c(Lcom/flurry/sdk/hm;)V

    goto :goto_1
.end method

.method protected final a(Lcom/flurry/sdk/hm;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 510
    if-eqz p2, :cond_4

    .line 511
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->c(Lcom/flurry/sdk/hc;)V

    .line 516
    :goto_0
    sget-object v0, Lcom/flurry/sdk/hc$a;->c:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    .line 517
    if-eqz v0, :cond_1

    .line 518
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v1, v2, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v1, v2

    .line 523
    :cond_1
    invoke-interface {p1}, Lcom/flurry/sdk/hm;->d()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/hw;->b([B)V

    .line 524
    if-eqz v0, :cond_3

    .line 525
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v0, v1

    .line 530
    :cond_3
    return-void

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->h(Lcom/flurry/sdk/hc;)V

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/ij;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hu;->a(Ljava/lang/String;)I

    move-result v1

    .line 291
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 292
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v2, :cond_2

    .line 295
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hm;Z)V

    .line 305
    :goto_1
    return-void

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :cond_2
    if-ne v1, v0, :cond_4

    .line 299
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 304
    :cond_4
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hw;->c(Lcom/flurry/sdk/hm;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 268
    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/hu;->a(Ljava/lang/String;)I

    move-result v1

    .line 269
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 270
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v2, :cond_2

    .line 273
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hw;->b(Ljava/lang/String;Z)V

    .line 283
    :goto_1
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_2
    if-ne v1, v0, :cond_4

    .line 277
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 282
    :cond_4
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hw;->j(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hw;->a(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/hw;->b(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 952
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 953
    if-nez p1, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/flurry/sdk/hw;->p()V

    .line 960
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-eqz v0, :cond_1

    .line 956
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 904
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 905
    if-nez p1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/flurry/sdk/hw;->p()V

    .line 912
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-eqz v0, :cond_1

    .line 908
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 991
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 992
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 995
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/flurry/sdk/hw;->v:[B

    .line 996
    :goto_0
    array-length v1, v0

    .line 997
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v4, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 999
    return-void

    .line 995
    :cond_1
    sget-object v0, Lcom/flurry/sdk/hw;->w:[B

    goto :goto_0
.end method

.method public a([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 606
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 607
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 612
    iget v0, p0, Lcom/flurry/sdk/hw;->q:I

    if-gt p3, v0, :cond_3

    .line 613
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v0, v1, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 616
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 621
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 625
    return-void

    .line 618
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/hw;->e([CII)V

    goto :goto_0
.end method

.method protected final b(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xdc00

    .line 1706
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1707
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1708
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 1710
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    .line 1711
    return v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 338
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->h()Lcom/flurry/sdk/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    .line 340
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->e(Lcom/flurry/sdk/hc;)V

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 854
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-eqz v0, :cond_1

    .line 860
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->c(I)V

    .line 864
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ig;->a(I[BI)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    goto :goto_0
.end method

.method protected b(Lcom/flurry/sdk/gx;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1591
    add-int/lit8 v1, p4, -0x3

    .line 1593
    iget v0, p0, Lcom/flurry/sdk/hw;->p:I

    add-int/lit8 v2, v0, -0x6

    .line 1594
    invoke-virtual {p1}, Lcom/flurry/sdk/gx;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1597
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1598
    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    if-le v3, v2, :cond_1

    .line 1599
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1602
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1603
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1604
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1605
    iget-object v4, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v5, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/flurry/sdk/gx;->a(I[BI)I

    move-result v3

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1606
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v4, 0x5c

    aput-byte v4, v0, v3

    .line 1609
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v4, 0x6e

    aput-byte v4, v0, v3

    .line 1610
    invoke-virtual {p1}, Lcom/flurry/sdk/gx;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1615
    :cond_2
    sub-int v1, p4, p3

    .line 1616
    if-lez v1, :cond_5

    .line 1617
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    if-le v0, v2, :cond_3

    .line 1618
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1620
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1621
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1622
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1624
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/flurry/sdk/gx;->a(II[BI)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1626
    :cond_5
    return-void
.end method

.method public final b(Lcom/flurry/sdk/hm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 631
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 632
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 636
    invoke-interface {p1}, Lcom/flurry/sdk/hm;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hw;->b([B)V

    .line 637
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v3, v0, v1

    .line 641
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 542
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/flurry/sdk/hw;->p()V

    .line 572
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/flurry/sdk/hw;->s:I

    if-le v0, v1, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget v1, p0, Lcom/flurry/sdk/hw;->q:I

    if-le v0, v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/flurry/sdk/hw;->c([CII)V

    goto :goto_0

    .line 560
    :cond_2
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v1, v2, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 563
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v5, v1, v2

    .line 564
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v4, v0}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 568
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_4

    .line 569
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 571
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v5, v0, v1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1054
    packed-switch p2, :pswitch_data_0

    .line 1073
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->m()V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1056
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->f(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 1059
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->d(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 1062
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->a(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 1066
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->g(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->h(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x0

    .line 472
    if-eqz p2, :cond_3

    .line 473
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->c(Lcom/flurry/sdk/hc;)V

    .line 478
    :goto_0
    sget-object v0, Lcom/flurry/sdk/hc$a;->c:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 479
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v0, v1

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 484
    iget v1, p0, Lcom/flurry/sdk/hw;->s:I

    if-gt v0, v1, :cond_5

    .line 485
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 487
    iget v1, p0, Lcom/flurry/sdk/hw;->q:I

    if-gt v0, v1, :cond_4

    .line 488
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 498
    :goto_1
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v0, v1

    .line 505
    :goto_2
    return-void

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->h(Lcom/flurry/sdk/hc;)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/flurry/sdk/hw;->e([CII)V

    goto :goto_1

    .line 496
    :cond_5
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->l(Ljava/lang/String;)V

    goto :goto_1

    .line 503
    :cond_6
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->l(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 725
    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 726
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_2

    .line 728
    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-ge v1, v0, :cond_1

    .line 729
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/hw;->d([CII)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 736
    :cond_2
    add-int v1, p3, p2

    move v0, p2

    .line 740
    :goto_1
    if-ge v0, v1, :cond_0

    .line 743
    :cond_3
    aget-char v2, p1, v0

    .line 744
    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    .line 752
    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    .line 753
    const/16 v2, 0x800

    if-ge v0, v2, :cond_5

    .line 754
    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 755
    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v3, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hw;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    :goto_2
    move v0, p2

    .line 759
    goto :goto_1

    .line 747
    :cond_4
    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v4, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/sdk/hw;->o:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 748
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 757
    :cond_5
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/flurry/sdk/hw;->a(I[CII)I

    goto :goto_2
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v1}, Lcom/flurry/sdk/hu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v1}, Lcom/flurry/sdk/hu;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/hl;->b(Lcom/flurry/sdk/hc;I)V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->j()Lcom/flurry/sdk/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    .line 365
    return-void

    .line 359
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected final c(Lcom/flurry/sdk/hm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 440
    invoke-interface {p1}, Lcom/flurry/sdk/hm;->d()[B

    move-result-object v0

    .line 441
    sget-object v1, Lcom/flurry/sdk/hc$a;->c:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hw;->b([B)V

    .line 463
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v1, v2, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v5, v1, v2

    .line 451
    array-length v1, v0

    .line 452
    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/flurry/sdk/hw;->p:I

    if-ge v2, v3, :cond_2

    .line 453
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v4, p0, Lcom/flurry/sdk/hw;->o:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 455
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v5, v0, v1

    goto :goto_0

    .line 457
    :cond_2
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hw;->b([B)V

    .line 458
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v5, v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 690
    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    .line 692
    :goto_0
    if-lez v1, :cond_1

    .line 693
    iget-object v4, p0, Lcom/flurry/sdk/hw;->r:[C

    .line 694
    array-length v0, v4

    .line 695
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 696
    :cond_0
    add-int v5, v2, v0

    invoke-virtual {p1, v2, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 697
    invoke-virtual {p0, v4, v3, v0}, Lcom/flurry/sdk/hw;->b([CII)V

    .line 698
    add-int/2addr v2, v0

    .line 699
    sub-int/2addr v1, v0

    .line 700
    goto :goto_0

    .line 701
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/flurry/sdk/hq;->close()V

    .line 1106
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/hc$a;->b:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->h()Lcom/flurry/sdk/hu;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->c()V

    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->e()V

    goto :goto_0

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1127
    iget-object v0, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/flurry/sdk/hw;->i:Lcom/flurry/sdk/ib;

    invoke-virtual {v0}, Lcom/flurry/sdk/ib;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/hc$a;->a:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1136
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->n()V

    .line 1137
    return-void

    .line 1130
    :cond_4
    sget-object v0, Lcom/flurry/sdk/hc$a;->f:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 370
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->i()Lcom/flurry/sdk/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    .line 372
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/hl;->b(Lcom/flurry/sdk/hc;)V

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v1}, Lcom/flurry/sdk/hu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->j()Lcom/flurry/sdk/hu;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    iget-object v1, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v1}, Lcom/flurry/sdk/hu;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/hl;->a(Lcom/flurry/sdk/hc;I)V

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 966
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 967
    iget-boolean v0, p0, Lcom/flurry/sdk/hw;->d:Z

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->c(Ljava/lang/Object;)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1005
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->h(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0}, Lcom/flurry/sdk/hw;->p()V

    .line 1007
    return-void
.end method

.method public final g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1089
    iget-object v0, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1090
    sget-object v0, Lcom/flurry/sdk/hc$a;->f:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1094
    :cond_0
    return-void
.end method

.method protected final h(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/flurry/sdk/hw;->e:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->k()I

    move-result v0

    .line 1020
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hw;->i(Ljava/lang/String;)V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hw;->a:Lcom/flurry/sdk/hl;

    if-nez v1, :cond_2

    .line 1025
    packed-switch v0, :pswitch_data_0

    .line 1048
    :goto_0
    return-void

    .line 1027
    :pswitch_0
    const/16 v0, 0x2c

    .line 1039
    :goto_1
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v1, v2, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 1042
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v0, v1, v2

    .line 1043
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hw;->o:I

    goto :goto_0

    .line 1030
    :pswitch_1
    const/16 v0, 0x3a

    .line 1031
    goto :goto_1

    .line 1033
    :pswitch_2
    const/16 v0, 0x20

    .line 1034
    goto :goto_1

    .line 1047
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hw;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final j(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hb;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x0

    .line 405
    sget-object v0, Lcom/flurry/sdk/hc$a;->c:Lcom/flurry/sdk/hc$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hc$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->l(Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 409
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v0, v1

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    iget v1, p0, Lcom/flurry/sdk/hw;->s:I

    if-gt v0, v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 418
    iget v1, p0, Lcom/flurry/sdk/hw;->q:I

    if-gt v0, v1, :cond_4

    .line 419
    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/flurry/sdk/hw;->p:I

    if-le v1, v2, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/flurry/sdk/hw;->f([CII)V

    .line 431
    :goto_1
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    iget v1, p0, Lcom/flurry/sdk/hw;->p:I

    if-lt v0, v1, :cond_3

    .line 432
    invoke-virtual {p0}, Lcom/flurry/sdk/hw;->o()V

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    iget v1, p0, Lcom/flurry/sdk/hw;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hw;->o:I

    aput-byte v4, v0, v1

    goto :goto_0

    .line 424
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/hw;->r:[C

    invoke-direct {p0, v1, v3, v0}, Lcom/flurry/sdk/hw;->e([CII)V

    goto :goto_1

    .line 427
    :cond_5
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hw;->l(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1142
    iget-object v0, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1143
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/hw;->t:Z

    if-eqz v1, :cond_0

    .line 1144
    iput-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    .line 1145
    iget-object v1, p0, Lcom/flurry/sdk/hw;->i:Lcom/flurry/sdk/ib;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ib;->b([B)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hw;->r:[C

    .line 1148
    if-eqz v0, :cond_1

    .line 1149
    iput-object v2, p0, Lcom/flurry/sdk/hw;->r:[C

    .line 1150
    iget-object v1, p0, Lcom/flurry/sdk/hw;->i:Lcom/flurry/sdk/ib;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ib;->b([C)V

    .line 1152
    :cond_1
    return-void
.end method

.method protected final o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1751
    iget v0, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1752
    if-lez v0, :cond_0

    .line 1753
    iput v3, p0, Lcom/flurry/sdk/hw;->o:I

    .line 1754
    iget-object v1, p0, Lcom/flurry/sdk/hw;->j:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/flurry/sdk/hw;->n:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1756
    :cond_0
    return-void
.end method
