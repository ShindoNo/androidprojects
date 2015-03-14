.class public final Lcom/flurry/sdk/hx;
.super Lcom/flurry/sdk/hr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/hx$1;
    }
.end annotation


# static fields
.field private static final P:[I

.field private static final Q:[I


# instance fields
.field protected I:Lcom/flurry/sdk/hk;

.field protected final J:Lcom/flurry/sdk/rx;

.field protected K:[I

.field protected L:Z

.field protected M:Ljava/io/InputStream;

.field protected N:[B

.field protected O:Z

.field private R:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/flurry/sdk/sh;->b()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hx;->P:[I

    .line 25
    invoke-static {}, Lcom/flurry/sdk/sh;->a()[I

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hx;->Q:[I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ib;ILjava/io/InputStream;Lcom/flurry/sdk/hk;Lcom/flurry/sdk/rx;[BIIZ)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hr;-><init>(Lcom/flurry/sdk/ib;I)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 110
    iput-object p3, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    .line 111
    iput-object p4, p0, Lcom/flurry/sdk/hx;->I:Lcom/flurry/sdk/hk;

    .line 112
    iput-object p5, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    .line 113
    iput-object p6, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 114
    iput p7, p0, Lcom/flurry/sdk/hx;->f:I

    .line 115
    iput p8, p0, Lcom/flurry/sdk/hx;->g:I

    .line 116
    iput-boolean p9, p0, Lcom/flurry/sdk/hx;->O:Z

    .line 118
    sget-object v0, Lcom/flurry/sdk/hg$a;->j:Lcom/flurry/sdk/hg$a;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/hg$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->U()V

    .line 122
    :cond_0
    return-void
.end method

.method private final a([CIIZI)Lcom/flurry/sdk/hj;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    const/4 v4, 0x0

    .line 1135
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_11

    .line 1136
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1140
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1141
    const/4 v4, 0x1

    .line 1156
    :cond_0
    if-nez v0, :cond_1

    .line 1157
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lcom/flurry/sdk/hx;->a(ILjava/lang/String;)V

    :cond_1
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 1161
    :goto_1
    const/4 v3, 0x0

    .line 1162
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2

    const/16 v2, 0x45

    if-ne p3, v2, :cond_f

    .line 1163
    :cond_2
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 1164
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v1

    .line 1165
    const/4 v0, 0x0

    .line 1167
    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 1169
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v5, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v5, :cond_4

    .line 1170
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 1172
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1174
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_5

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    .line 1175
    :cond_5
    array-length v0, v1

    if-lt v2, v0, :cond_d

    .line 1176
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v1

    .line 1177
    const/4 v0, 0x0

    .line 1179
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1181
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v5, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v5, :cond_6

    .line 1182
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 1184
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 1188
    :goto_3
    const/16 v3, 0x39

    if-gt v5, v3, :cond_c

    const/16 v3, 0x30

    if-lt v5, v3, :cond_c

    .line 1189
    add-int/lit8 v2, v2, 0x1

    .line 1190
    array-length v3, v1

    if-lt v0, v3, :cond_7

    .line 1191
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v1

    .line 1192
    const/4 v0, 0x0

    .line 1194
    :cond_7
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 1195
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v7, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v7, :cond_b

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1196
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 1202
    :goto_4
    if-nez v0, :cond_8

    .line 1203
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lcom/flurry/sdk/hx;->a(ILjava/lang/String;)V

    .line 1208
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 1209
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1211
    :cond_9
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1214
    invoke-virtual {p0, p4, p5, v6, v0}, Lcom/flurry/sdk/hx;->b(ZIII)Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_a
    iget-object v2, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1145
    const/16 v2, 0x30

    if-lt p3, v2, :cond_0

    const/16 v2, 0x39

    if-gt p3, v2, :cond_0

    .line 1148
    add-int/lit8 v0, v0, 0x1

    .line 1149
    array-length v2, p1

    if-lt v1, v2, :cond_10

    .line 1150
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object p1

    .line 1151
    const/4 v1, 0x0

    move v2, v1

    .line 1153
    :goto_6
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    .line 1199
    :cond_b
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_3

    :cond_c
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    move v2, v3

    goto/16 :goto_3

    :cond_f
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_10
    move v2, v1

    goto :goto_6

    :cond_11
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_1
.end method

.method private final a([CIZI)Lcom/flurry/sdk/hj;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1064
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1066
    invoke-virtual {p0, p3, v5}, Lcom/flurry/sdk/hx;->a(ZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 1086
    :goto_1
    return-object v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 1069
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 1070
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 1071
    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([CIIZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 1075
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    .line 1076
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v1

    .line 1077
    const/4 v2, 0x0

    move v0, v2

    .line 1079
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 1080
    add-int/lit8 v5, v5, 0x1

    .line 1081
    goto :goto_0

    .line 1082
    :cond_4
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1083
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1086
    invoke-virtual {p0, p3, v5}, Lcom/flurry/sdk/hx;->a(ZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private final a(III)Lcom/flurry/sdk/rz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lcom/flurry/sdk/rz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1417
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lcom/flurry/sdk/rz;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1768
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1777
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 1778
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1780
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1786
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1}, Lcom/flurry/sdk/sm;->k()[C

    move-result-object v1

    .line 1787
    const/4 v5, 0x0

    .line 1789
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 1790
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1791
    and-int/lit8 v4, v3, 0x3

    .line 1792
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1793
    add-int/lit8 v3, v3, 0x1

    .line 1795
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 1797
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 1798
    and-int/lit8 v4, v2, 0x1f

    .line 1799
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1810
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 1811
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1815
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1816
    and-int/lit8 v8, v3, 0x3

    .line 1817
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1818
    add-int/lit8 v3, v3, 0x1

    .line 1820
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 1821
    invoke-virtual {p0, v7}, Lcom/flurry/sdk/hx;->l(I)V

    .line 1823
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1824
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 1825
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1826
    and-int/lit8 v8, v3, 0x3

    .line 1827
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1828
    add-int/lit8 v3, v3, 0x1

    .line 1830
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 1831
    invoke-virtual {p0, v7}, Lcom/flurry/sdk/hx;->l(I)V

    .line 1833
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1834
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 1835
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1836
    and-int/lit8 v8, v3, 0x3

    .line 1837
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1838
    add-int/lit8 v3, v3, 0x1

    .line 1839
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 1840
    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lcom/flurry/sdk/hx;->l(I)V

    .line 1842
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1845
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 1846
    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    .line 1847
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 1848
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1}, Lcom/flurry/sdk/sm;->n()[C

    move-result-object v1

    .line 1850
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 1851
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 1854
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 1855
    iget-object v4, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v4}, Lcom/flurry/sdk/sm;->n()[C

    move-result-object v4

    .line 1857
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 1858
    goto/16 :goto_1

    .line 1782
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1800
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 1801
    and-int/lit8 v4, v2, 0xf

    .line 1802
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1803
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 1804
    and-int/lit8 v4, v2, 0x7

    .line 1805
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1807
    :cond_a
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hx;->k(I)V

    .line 1808
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 1861
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1863
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 1864
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 1866
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0, v2, p1, p2}, Lcom/flurry/sdk/rx;->a(Ljava/lang/String;[II)Lcom/flurry/sdk/rz;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private final a([IIII)Lcom/flurry/sdk/rz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1743
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1744
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1746
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1747
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/rx;->a([II)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1748
    if-nez v0, :cond_1

    .line 1749
    invoke-direct {p0, p1, v1, p4}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1751
    :cond_1
    return-object v0
.end method

.method private final a([CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1914
    sget-object v4, Lcom/flurry/sdk/hx;->P:[I

    .line 1915
    iget-object v5, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 1922
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1923
    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v2, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 1925
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1927
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 1928
    iget-object v2, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v2}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object p1

    move p2, v1

    .line 1931
    :cond_1
    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1932
    :goto_1
    if-ge v0, v6, :cond_3

    .line 1933
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 1934
    aget v3, v4, v0

    if-eqz v3, :cond_2

    .line 1935
    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1943
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 1989
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1990
    return-void

    .line 1938
    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    .line 1940
    :cond_3
    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    goto :goto_0

    .line 1947
    :cond_4
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    .line 1973
    const/16 v2, 0x20

    if-ge v0, v2, :cond_7

    .line 1975
    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/flurry/sdk/hx;->c(ILjava/lang/String;)V

    .line 1982
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    .line 1983
    iget-object v2, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v2}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object p1

    move v2, v1

    .line 1987
    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    .line 1949
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Q()C

    move-result v0

    goto :goto_2

    .line 1952
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hx;->n(I)I

    move-result v0

    goto :goto_2

    .line 1955
    :pswitch_2
    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 1956
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hx;->p(I)I

    move-result v0

    goto :goto_2

    .line 1958
    :cond_5
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hx;->o(I)I

    move-result v0

    goto :goto_2

    .line 1962
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hx;->q(I)I

    move-result v2

    .line 1964
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 1965
    array-length v3, p1

    if-lt v0, v3, :cond_6

    .line 1966
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object p1

    move v0, v1

    .line 1969
    :cond_6
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 1971
    goto :goto_2

    .line 1978
    :cond_7
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->j(I)V

    goto :goto_2

    :cond_8
    move v2, p2

    goto :goto_3

    .line 1947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2839
    if-nez p0, :cond_0

    .line 2840
    new-array v0, p1, [I

    .line 2846
    :goto_0
    return-object v0

    .line 2843
    :cond_0
    array-length v1, p0

    .line 2844
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 2845
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final ac()Lcom/flurry/sdk/hj;
    .locals 4

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->r:Z

    .line 612
    iget-object v0, p0, Lcom/flurry/sdk/hx;->o:Lcom/flurry/sdk/hj;

    .line 613
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/sdk/hx;->o:Lcom/flurry/sdk/hj;

    .line 615
    sget-object v1, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    iget v2, p0, Lcom/flurry/sdk/hx;->l:I

    iget v3, p0, Lcom/flurry/sdk/hx;->m:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/ht;->b(II)Lcom/flurry/sdk/ht;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    .line 620
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    return-object v0

    .line 617
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    iget v2, p0, Lcom/flurry/sdk/hx;->l:I

    iget v3, p0, Lcom/flurry/sdk/hx;->m:I

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/ht;->c(II)Lcom/flurry/sdk/ht;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    goto :goto_0
.end method

.method private final ad()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1098
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1124
    :cond_0
    :goto_0
    return v0

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1103
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1104
    goto :goto_0

    .line 1107
    :cond_3
    sget-object v2, Lcom/flurry/sdk/hg$a;->g:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1108
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;)V

    .line 1111
    :cond_4
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1112
    if-ne v0, v1, :cond_0

    .line 1113
    :cond_5
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1115
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1116
    goto :goto_0

    .line 1118
    :cond_8
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1119
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final ae()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2287
    :cond_0
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2288
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2289
    if-le v0, v3, :cond_3

    .line 2290
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2291
    return v0

    .line 2293
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ag()V

    goto :goto_0

    .line 2294
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2295
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2296
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->ab()V

    goto :goto_0

    .line 2297
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2298
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->aa()V

    goto :goto_0

    .line 2299
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2300
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->b(I)V

    goto :goto_0

    .line 2304
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v1}, Lcom/flurry/sdk/ht;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;)Lcom/flurry/sdk/hf;

    move-result-object v0

    throw v0
.end method

.method private final af()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 2310
    :cond_0
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2312
    if-le v0, v3, :cond_3

    .line 2313
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 2329
    :goto_1
    return v0

    .line 2316
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ag()V

    goto :goto_0

    .line 2317
    :cond_3
    if-eq v0, v3, :cond_0

    .line 2318
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2319
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->ab()V

    goto :goto_0

    .line 2320
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2321
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->aa()V

    goto :goto_0

    .line 2322
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2323
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->b(I)V

    goto :goto_0

    .line 2328
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->H()V

    .line 2329
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final ag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 2412
    sget-object v0, Lcom/flurry/sdk/hg$a;->b:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2413
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 2416
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2417
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2420
    if-ne v0, v3, :cond_2

    .line 2421
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ai()V

    .line 2427
    :goto_0
    return-void

    .line 2422
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2423
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ah()V

    goto :goto_0

    .line 2425
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final ah()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Lcom/flurry/sdk/sh;->e()[I

    move-result-object v0

    .line 2436
    :cond_0
    :goto_0
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2437
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2438
    aget v2, v0, v1

    .line 2439
    if-eqz v2, :cond_0

    .line 2440
    sparse-switch v2, :sswitch_data_0

    .line 2464
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->j(I)V

    goto :goto_0

    .line 2442
    :sswitch_0
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 2443
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2469
    :goto_1
    return-void

    .line 2448
    :sswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->ab()V

    goto :goto_0

    .line 2451
    :sswitch_2
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->aa()V

    goto :goto_0

    .line 2454
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->r(I)V

    goto :goto_0

    .line 2457
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->s(I)V

    goto :goto_0

    .line 2460
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->t(I)V

    goto :goto_0

    .line 2468
    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 2440
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final ai()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2475
    invoke-static {}, Lcom/flurry/sdk/sh;->e()[I

    move-result-object v0

    .line 2476
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2477
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 2478
    aget v2, v0, v1

    .line 2479
    if-eqz v2, :cond_0

    .line 2480
    sparse-switch v2, :sswitch_data_0

    .line 2500
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->j(I)V

    goto :goto_0

    .line 2482
    :sswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->ab()V

    .line 2504
    :cond_2
    :goto_1
    return-void

    .line 2485
    :sswitch_2
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->aa()V

    goto :goto_1

    .line 2490
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->r(I)V

    goto :goto_0

    .line 2493
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->s(I)V

    goto :goto_0

    .line 2496
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->t(I)V

    goto :goto_0

    .line 2480
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private aj()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2796
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2797
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2799
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final b(II)Lcom/flurry/sdk/rz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/rx;->a(I)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_0

    .line 1723
    :goto_0
    return-object v0

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1723
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(III)Lcom/flurry/sdk/rz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/rx;->a(II)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1731
    if-eqz v0, :cond_0

    .line 1737
    :goto_0
    return-object v0

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1736
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1737
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0
.end method

.method private final m(I)Lcom/flurry/sdk/hj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 564
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 565
    iput-boolean v1, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 566
    sget-object v0, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    .line 606
    :goto_0
    return-object v0

    .line 568
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 606
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->h(I)Lcom/flurry/sdk/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 570
    :sswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    iget v1, p0, Lcom/flurry/sdk/hx;->l:I

    iget v2, p0, Lcom/flurry/sdk/hx;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ht;->b(II)Lcom/flurry/sdk/ht;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    .line 571
    sget-object v0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 573
    :sswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    iget v1, p0, Lcom/flurry/sdk/hx;->l:I

    iget v2, p0, Lcom/flurry/sdk/hx;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ht;->c(II)Lcom/flurry/sdk/ht;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    .line 574
    sget-object v0, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 579
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 581
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 582
    sget-object v0, Lcom/flurry/sdk/hj;->k:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 584
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 585
    sget-object v0, Lcom/flurry/sdk/hj;->l:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 587
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 588
    sget-object v0, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 604
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->d(I)Lcom/flurry/sdk/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private final n(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2617
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2618
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2620
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2621
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2622
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2624
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final o(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2630
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2631
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2633
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 2634
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2635
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2636
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2638
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2639
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_2

    .line 2640
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2642
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2643
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2644
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2646
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2647
    return v0
.end method

.method private final p(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2653
    and-int/lit8 v0, p1, 0xf

    .line 2654
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2655
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 2656
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2658
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2659
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2660
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2661
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2663
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2664
    return v0
.end method

.method private final q(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2674
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2677
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2678
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2679
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2681
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2683
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_2

    .line 2684
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2686
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2687
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2688
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2690
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2691
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_4

    .line 2692
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2694
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2695
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 2696
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2702
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final r(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2708
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2709
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2712
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2713
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2715
    :cond_1
    return-void
.end method

.method private final s(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2723
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2724
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2728
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2729
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2731
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_2

    .line 2732
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2734
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2735
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2736
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2738
    :cond_3
    return-void
.end method

.method private final t(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 2743
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 2744
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2747
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2748
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2750
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_2

    .line 2751
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2753
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2754
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2755
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2757
    :cond_3
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_4

    .line 2758
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2760
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    .line 2761
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 2762
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(II)V

    .line 2764
    :cond_5
    return-void
.end method


# virtual methods
.method protected final E()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-wide v1, p0, Lcom/flurry/sdk/hx;->h:J

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/sdk/hx;->h:J

    .line 169
    iget v1, p0, Lcom/flurry/sdk/hx;->j:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/sdk/hx;->j:I

    .line 171
    iget-object v1, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/flurry/sdk/hx;->N:[B

    iget-object v3, p0, Lcom/flurry/sdk/hx;->N:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 173
    if-lez v1, :cond_1

    .line 174
    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 175
    iput v1, p0, Lcom/flurry/sdk/hx;->g:I

    .line 176
    const/4 v0, 0x1

    .line 185
    :cond_0
    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->F()V

    .line 181
    if-nez v1, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/hx;->N:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected F()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/ib;

    invoke-virtual {v0}, Lcom/flurry/sdk/ib;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/hg$a;->a:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 239
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->M:Ljava/io/InputStream;

    .line 241
    :cond_2
    return-void
.end method

.method protected G()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-super {p0}, Lcom/flurry/sdk/hr;->G()V

    .line 253
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->O:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 257
    iget-object v1, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/ib;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ib;->a([B)V

    .line 260
    :cond_0
    return-void
.end method

.method protected final Q()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2510
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_0

    .line 2511
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2512
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 2515
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2517
    sparse-switch v1, :sswitch_data_0

    .line 2540
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->i(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(C)C

    move-result v0

    .line 2558
    :goto_0
    return v0

    .line 2520
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 2522
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 2524
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 2526
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 2528
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 2534
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 2545
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 2546
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v2, v3, :cond_1

    .line 2547
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2548
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 2551
    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v2, v2, v3

    .line 2552
    invoke-static {v2}, Lcom/flurry/sdk/sh;->a(I)I

    move-result v3

    .line 2553
    if-gez v3, :cond_2

    .line 2554
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 2556
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2558
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 2517
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected V()Lcom/flurry/sdk/rz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 1401
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 1402
    invoke-static {}, Lcom/flurry/sdk/rx;->e()Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1404
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0
.end method

.method protected final W()Lcom/flurry/sdk/rz;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 1604
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v2, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 1610
    if-ne v5, v10, :cond_1

    .line 1611
    invoke-static {}, Lcom/flurry/sdk/rx;->e()Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1704
    :goto_0
    return-object v0

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1620
    sget-object v7, Lcom/flurry/sdk/hx;->Q:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1623
    :goto_1
    if-ne v5, v10, :cond_3

    .line 1694
    if-lez v3, :cond_c

    .line 1695
    array-length v1, v0

    if-lt v2, v1, :cond_2

    .line 1696
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1698
    :cond_2
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 1700
    :goto_2
    iget-object v2, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/rx;->a([II)Lcom/flurry/sdk/rz;

    move-result-object v2

    .line 1701
    if-nez v2, :cond_b

    .line 1702
    invoke-direct {p0, v1, v0, v3}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1627
    :cond_3
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    .line 1628
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_6

    .line 1631
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/flurry/sdk/hx;->c(ILjava/lang/String;)V

    .line 1641
    :goto_3
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    .line 1643
    if-lt v3, v9, :cond_e

    .line 1644
    array-length v3, v0

    if-lt v2, v3, :cond_4

    .line 1645
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1647
    :cond_4
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1651
    :goto_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_7

    .line 1652
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1653
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 1671
    :goto_5
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1675
    :goto_6
    if-ge v2, v9, :cond_9

    .line 1676
    add-int/lit8 v2, v2, 0x1

    .line 1677
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 1686
    :goto_7
    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    iget v6, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v5, v6, :cond_5

    .line 1687
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1688
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1691
    :cond_5
    iget-object v5, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v6, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_1

    .line 1634
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Q()C

    move-result v5

    goto :goto_3

    .line 1656
    :cond_7
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1657
    add-int/lit8 v2, v2, 0x1

    .line 1659
    if-lt v2, v9, :cond_d

    .line 1660
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1661
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1663
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1667
    :goto_8
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1668
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_5

    .line 1679
    :cond_9
    array-length v2, v0

    if-lt v4, v2, :cond_a

    .line 1680
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1682
    :cond_a
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1684
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_8

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_4

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method protected X()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 1880
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1881
    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 1883
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1885
    :cond_0
    const/4 v1, 0x0

    .line 1886
    iget-object v2, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v2}, Lcom/flurry/sdk/sm;->k()[C

    move-result-object v3

    .line 1887
    sget-object v4, Lcom/flurry/sdk/hx;->P:[I

    .line 1889
    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1890
    iget-object v6, p0, Lcom/flurry/sdk/hx;->N:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 1891
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1892
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 1893
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 1894
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 1895
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1896
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1906
    :goto_1
    return-void

    .line 1901
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1902
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 1903
    goto :goto_0

    .line 1904
    :cond_2
    iput v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1905
    invoke-direct {p0, v3, v0}, Lcom/flurry/sdk/hx;->a([CI)V

    goto :goto_1
.end method

.method protected Y()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 2003
    sget-object v3, Lcom/flurry/sdk/hx;->P:[I

    .line 2004
    iget-object v4, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 2012
    :goto_0
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2013
    iget v0, p0, Lcom/flurry/sdk/hx;->g:I

    .line 2014
    if-lt v1, v0, :cond_0

    .line 2015
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2016
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2017
    iget v0, p0, Lcom/flurry/sdk/hx;->g:I

    .line 2019
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2020
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 2021
    aget v5, v3, v1

    if-eqz v5, :cond_4

    .line 2022
    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2029
    const/16 v0, 0x22

    if-ne v1, v0, :cond_2

    .line 2056
    return-void

    .line 2026
    :cond_1
    iput v1, p0, Lcom/flurry/sdk/hx;->f:I

    goto :goto_0

    .line 2033
    :cond_2
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 2047
    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    .line 2049
    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/hx;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 2035
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Q()C

    goto :goto_0

    .line 2038
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->r(I)V

    goto :goto_0

    .line 2041
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->s(I)V

    goto :goto_0

    .line 2044
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/flurry/sdk/hx;->t(I)V

    goto :goto_0

    .line 2052
    :cond_3
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->j(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected Z()Lcom/flurry/sdk/hj;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 2097
    .line 2100
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->k()[C

    move-result-object v0

    .line 2103
    sget-object v6, Lcom/flurry/sdk/hx;->P:[I

    .line 2104
    iget-object v7, p0, Lcom/flurry/sdk/hx;->N:[B

    move v1, v2

    .line 2111
    :cond_0
    :goto_0
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    iget v4, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v3, v4, :cond_1

    .line 2112
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2114
    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 2115
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v0

    move v1, v2

    .line 2118
    :cond_2
    iget v4, p0, Lcom/flurry/sdk/hx;->g:I

    .line 2120
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 2121
    if-ge v3, v4, :cond_b

    .line 2125
    :goto_1
    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    if-ge v4, v3, :cond_0

    .line 2126
    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 2127
    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-eqz v4, :cond_4

    .line 2135
    :cond_3
    if-ne v5, v9, :cond_5

    .line 2181
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sm;->a(I)V

    .line 2183
    sget-object v0, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    return-object v0

    .line 2130
    :cond_4
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 2139
    :cond_5
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    .line 2167
    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    .line 2168
    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/flurry/sdk/hx;->c(ILjava/lang/String;)V

    .line 2171
    :cond_6
    invoke-virtual {p0, v5}, Lcom/flurry/sdk/hx;->j(I)V

    :cond_7
    move v3, v5

    .line 2174
    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_9

    .line 2175
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v0

    move v4, v2

    .line 2179
    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 2141
    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_7

    .line 2142
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Q()C

    move-result v3

    goto :goto_2

    .line 2146
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/flurry/sdk/hx;->n(I)I

    move-result v3

    goto :goto_2

    .line 2149
    :pswitch_2
    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 2150
    invoke-direct {p0, v5}, Lcom/flurry/sdk/hx;->p(I)I

    move-result v3

    goto :goto_2

    .line 2152
    :cond_8
    invoke-direct {p0, v5}, Lcom/flurry/sdk/hx;->o(I)I

    move-result v3

    goto :goto_2

    .line 2156
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/flurry/sdk/hx;->q(I)I

    move-result v4

    .line 2158
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 2159
    array-length v1, v0

    if-lt v3, v1, :cond_a

    .line 2160
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->m()[C

    move-result-object v0

    move v1, v2

    .line 2163
    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 2165
    goto :goto_2

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_1

    .line 2139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(IZ)Lcom/flurry/sdk/hj;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0000000000000L

    const-wide/high16 v1, -0x10000000000000L

    .line 2193
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 2194
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v5, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v5, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2196
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->T()V

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte p1, v0, v5

    .line 2200
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 2201
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 2202
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 2203
    sget-object v5, Lcom/flurry/sdk/hg$a;->h:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2204
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;D)Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 2217
    :goto_2
    return-object v0

    .line 2201
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 2204
    goto :goto_1

    .line 2206
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    .line 2216
    :cond_4
    :goto_3
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hx;->a(ILjava/lang/String;)V

    .line 2217
    const/4 v0, 0x0

    goto :goto_2

    .line 2207
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 2208
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 2209
    :goto_4
    invoke-virtual {p0, v0, v7}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 2210
    sget-object v5, Lcom/flurry/sdk/hg$a;->h:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2211
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;D)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_2

    .line 2208
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v1, v3

    .line 2211
    goto :goto_5

    .line 2213
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a()Lcom/flurry/sdk/hk;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/hx;->I:Lcom/flurry/sdk/hk;

    return-object v0
.end method

.method protected final a(I[I)Lcom/flurry/sdk/rz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 1290
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1291
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 1292
    if-ne v0, v4, :cond_0

    .line 1293
    iget v0, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v0, p1, v5}, Lcom/flurry/sdk/hx;->b(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1323
    :goto_0
    return-object v0

    .line 1295
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/flurry/sdk/hx;->a(IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1297
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 1298
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1299
    aget v2, p2, v1

    if-eqz v2, :cond_3

    .line 1300
    if-ne v1, v4, :cond_2

    .line 1301
    iget v1, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v1, v0, v6}, Lcom/flurry/sdk/hx;->b(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1303
    :cond_2
    iget v2, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v2, v0, v1, v6}, Lcom/flurry/sdk/hx;->a(IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1305
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1306
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1307
    aget v2, p2, v1

    if-eqz v2, :cond_5

    .line 1308
    if-ne v1, v4, :cond_4

    .line 1309
    iget v1, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v1, v0, v7}, Lcom/flurry/sdk/hx;->b(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1311
    :cond_4
    iget v2, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v2, v0, v1, v7}, Lcom/flurry/sdk/hx;->a(IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1313
    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 1314
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1315
    aget v2, p2, v1

    if-eqz v2, :cond_7

    .line 1316
    if-ne v1, v4, :cond_6

    .line 1317
    iget v1, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v1, v0, v8}, Lcom/flurry/sdk/hx;->b(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1319
    :cond_6
    iget v2, p0, Lcom/flurry/sdk/hx;->R:I

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/flurry/sdk/hx;->a(IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1321
    :cond_7
    iget-object v2, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/flurry/sdk/hx;->R:I

    aput v4, v2, v3

    .line 1322
    iget-object v2, p0, Lcom/flurry/sdk/hx;->K:[I

    aput v0, v2, v5

    .line 1323
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->f(I)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0
.end method

.method protected a([IIIII)Lcom/flurry/sdk/rz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 1436
    sget-object v5, Lcom/flurry/sdk/hx;->Q:[I

    .line 1439
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    .line 1440
    const/16 v0, 0x22

    if-ne p4, v0, :cond_3

    .line 1509
    if-lez p5, :cond_1

    .line 1510
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1511
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1513
    :cond_0
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/rx;->a([II)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1516
    if-nez v0, :cond_2

    .line 1517
    invoke-direct {p0, p1, p2, p5}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1519
    :cond_2
    return-object v0

    .line 1444
    :cond_3
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6

    .line 1446
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/flurry/sdk/hx;->c(ILjava/lang/String;)V

    .line 1456
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    .line 1458
    if-lt p5, v7, :cond_c

    .line 1459
    array-length v0, p1

    if-lt p2, v0, :cond_4

    .line 1460
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1462
    :cond_4
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1466
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_7

    .line 1467
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1468
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1486
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1490
    :goto_4
    if-ge p5, v7, :cond_9

    .line 1491
    add-int/lit8 p5, p5, 0x1

    .line 1492
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1501
    :goto_5
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v2, :cond_5

    .line 1502
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1503
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1506
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto/16 :goto_0

    .line 1449
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Q()C

    move-result p4

    goto :goto_1

    .line 1471
    :cond_7
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1472
    add-int/lit8 v2, p5, 0x1

    .line 1474
    if-lt v2, v7, :cond_b

    .line 1475
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1476
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1478
    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1482
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1483
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 1494
    :cond_9
    array-length v2, v0

    if-lt p2, v2, :cond_a

    .line 1495
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1497
    :cond_a
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1499
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_4
.end method

.method protected final a(Lcom/flurry/sdk/hj;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    .line 288
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hx$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/ht;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2833
    iput p2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2834
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->l(I)V

    .line 2835
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2226
    :cond_0
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_1

    .line 2227
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2228
    const-string v1, " in a value"

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 2231
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2232
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_2
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2235
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 2238
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_4

    .line 2239
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2253
    :cond_3
    :goto_0
    return-void

    .line 2243
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2244
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 2248
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->i(I)I

    move-result v0

    int-to-char v0, v0

    .line 2249
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2250
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2251
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2264
    :goto_0
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2275
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    .line 2276
    return-void

    .line 2267
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v2

    .line 2268
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->i(I)I

    move-result v1

    int-to-char v1, v1

    .line 2269
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2272
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/gx;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    sget-object v1, Lcom/flurry/sdk/hj;->g:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hx;->t:[B

    if-nez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v0, :cond_3

    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->b(Lcom/flurry/sdk/gx;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->t:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 415
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->t:[B

    return-object v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;)Lcom/flurry/sdk/hf;

    move-result-object v0

    throw v0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hx;->t:[B

    if-nez v0, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->I()Lcom/flurry/sdk/sg;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/sg;Lcom/flurry/sdk/gx;)V

    .line 412
    invoke-virtual {v0}, Lcom/flurry/sdk/sg;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->t:[B

    goto :goto_0
.end method

.method protected final aa()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2778
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2780
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 2783
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/hx;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->i:I

    .line 2784
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iput v0, p0, Lcom/flurry/sdk/hx;->j:I

    .line 2785
    return-void
.end method

.method protected final ab()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2789
    iget v0, p0, Lcom/flurry/sdk/hx;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->i:I

    .line 2790
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iput v0, p0, Lcom/flurry/sdk/hx;->j:I

    .line 2791
    return-void
.end method

.method public b()Lcom/flurry/sdk/hj;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x7d

    const/16 v7, 0x5d

    const/4 v6, 0x1

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hx;->y:I

    .line 437
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    sget-object v2, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    if-ne v0, v2, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ac()Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Y()V

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->af()I

    move-result v0

    .line 445
    if-gez v0, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->close()V

    .line 450
    iput-object v1, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    move-object v0, v1

    goto :goto_0

    .line 456
    :cond_2
    iget-wide v2, p0, Lcom/flurry/sdk/hx;->h:J

    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/hx;->k:J

    .line 457
    iget v2, p0, Lcom/flurry/sdk/hx;->i:I

    iput v2, p0, Lcom/flurry/sdk/hx;->l:I

    .line 458
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->j:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->m:I

    .line 461
    iput-object v1, p0, Lcom/flurry/sdk/hx;->t:[B

    .line 464
    if-ne v0, v7, :cond_4

    .line 465
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v1}, Lcom/flurry/sdk/ht;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 466
    invoke-virtual {p0, v0, v8}, Lcom/flurry/sdk/hx;->a(IC)V

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/ht;->i()Lcom/flurry/sdk/ht;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    .line 469
    sget-object v0, Lcom/flurry/sdk/hj;->e:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 471
    :cond_4
    if-ne v0, v8, :cond_6

    .line 472
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v1}, Lcom/flurry/sdk/ht;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    invoke-virtual {p0, v0, v7}, Lcom/flurry/sdk/hx;->a(IC)V

    .line 475
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/ht;->i()Lcom/flurry/sdk/ht;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    .line 476
    sget-object v0, Lcom/flurry/sdk/hj;->c:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto :goto_0

    .line 480
    :cond_6
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v1}, Lcom/flurry/sdk/ht;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 481
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v2}, Lcom/flurry/sdk/ht;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 484
    :cond_7
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ae()I

    move-result v0

    .line 491
    :cond_8
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v1}, Lcom/flurry/sdk/ht;->c()Z

    move-result v1

    if-nez v1, :cond_9

    .line 492
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hx;->m(I)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto/16 :goto_0

    .line 495
    :cond_9
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->e(I)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/rz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ht;->a(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/flurry/sdk/hj;->f:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    .line 498
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ae()I

    move-result v0

    .line 499
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a

    .line 500
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 502
    :cond_a
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ae()I

    move-result v0

    .line 505
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 506
    iput-boolean v6, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 507
    sget-object v0, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    iput-object v0, p0, Lcom/flurry/sdk/hx;->o:Lcom/flurry/sdk/hj;

    .line 508
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto/16 :goto_0

    .line 512
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 555
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->h(I)Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 557
    :goto_1
    iput-object v0, p0, Lcom/flurry/sdk/hx;->o:Lcom/flurry/sdk/hj;

    .line 558
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    goto/16 :goto_0

    .line 514
    :sswitch_0
    sget-object v0, Lcom/flurry/sdk/hj;->d:Lcom/flurry/sdk/hj;

    goto :goto_1

    .line 517
    :sswitch_1
    sget-object v0, Lcom/flurry/sdk/hj;->b:Lcom/flurry/sdk/hj;

    goto :goto_1

    .line 523
    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 525
    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 526
    sget-object v0, Lcom/flurry/sdk/hj;->k:Lcom/flurry/sdk/hj;

    goto :goto_1

    .line 529
    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 530
    sget-object v0, Lcom/flurry/sdk/hj;->l:Lcom/flurry/sdk/hj;

    goto :goto_1

    .line 533
    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 534
    sget-object v0, Lcom/flurry/sdk/hj;->m:Lcom/flurry/sdk/hj;

    goto :goto_1

    .line 552
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(I)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected b(Lcom/flurry/sdk/gx;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 2862
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->I()Lcom/flurry/sdk/sg;

    move-result-object v2

    .line 2869
    :cond_0
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_1

    .line 2870
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2872
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 2873
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 2874
    invoke-virtual {p1, v1}, Lcom/flurry/sdk/gx;->b(I)I

    move-result v0

    .line 2875
    if-gez v0, :cond_3

    .line 2876
    if-ne v1, v6, :cond_2

    .line 2877
    invoke-virtual {v2}, Lcom/flurry/sdk/sg;->b()[B

    move-result-object v0

    .line 2945
    :goto_1
    return-object v0

    .line 2879
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/gx;II)I

    move-result v0

    .line 2880
    if-ltz v0, :cond_0

    .line 2888
    :cond_3
    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v1, v3, :cond_4

    .line 2889
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2891
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 2892
    invoke-virtual {p1, v3}, Lcom/flurry/sdk/gx;->b(I)I

    move-result v1

    .line 2893
    if-gez v1, :cond_5

    .line 2894
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v3, v1}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/gx;II)I

    move-result v1

    .line 2896
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 2899
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v3, :cond_6

    .line 2900
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2902
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 2903
    invoke-virtual {p1, v3}, Lcom/flurry/sdk/gx;->b(I)I

    move-result v0

    .line 2906
    if-gez v0, :cond_b

    .line 2907
    if-eq v0, v5, :cond_8

    .line 2909
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lcom/flurry/sdk/gx;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2910
    shr-int/lit8 v0, v1, 0x4

    .line 2911
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/sg;->a(I)V

    .line 2912
    invoke-virtual {v2}, Lcom/flurry/sdk/sg;->b()[B

    move-result-object v0

    goto :goto_1

    .line 2914
    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/gx;II)I

    move-result v0

    .line 2916
    :cond_8
    if-ne v0, v5, :cond_b

    .line 2918
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v3, :cond_9

    .line 2919
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2921
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 2922
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/gx;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected padding character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/sdk/gx;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v7, v1}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/gx;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2926
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 2927
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/sg;->a(I)V

    goto/16 :goto_0

    .line 2932
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 2934
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v3, :cond_c

    .line 2935
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 2937
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 2938
    invoke-virtual {p1, v3}, Lcom/flurry/sdk/gx;->b(I)I

    move-result v0

    .line 2939
    if-gez v0, :cond_f

    .line 2940
    if-eq v0, v5, :cond_e

    .line 2942
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lcom/flurry/sdk/gx;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2943
    shr-int/lit8 v0, v1, 0x2

    .line 2944
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/sg;->b(I)V

    .line 2945
    invoke-virtual {v2}, Lcom/flurry/sdk/sg;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 2947
    :cond_d
    invoke-virtual {p0, p1, v3, v7}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/gx;II)I

    move-result v0

    .line 2949
    :cond_e
    if-ne v0, v5, :cond_f

    .line 2956
    shr-int/lit8 v0, v1, 0x2

    .line 2957
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/sg;->b(I)V

    goto/16 :goto_0

    .line 2962
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 2963
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/sg;->c(I)V

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-super {p0}, Lcom/flurry/sdk/hr;->close()V

    .line 628
    iget-object v0, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v0}, Lcom/flurry/sdk/rx;->b()V

    .line 629
    return-void
.end method

.method protected final d(I)Lcom/flurry/sdk/hj;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v2, 0x2d

    const/4 v0, 0x0

    const/16 v8, 0x30

    const/4 v5, 0x1

    .line 997
    iget-object v1, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v1}, Lcom/flurry/sdk/sm;->k()[C

    move-result-object v1

    .line 999
    if-ne p1, v2, :cond_2

    move v4, v5

    .line 1002
    :goto_0
    if-eqz v4, :cond_b

    .line 1003
    aput-char v2, v1, v0

    .line 1005
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v2, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v2, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->D()V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1010
    if-lt v0, v8, :cond_1

    if-le v0, v9, :cond_3

    .line 1011
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/flurry/sdk/hx;->a(IZ)Lcom/flurry/sdk/hj;

    move-result-object v0

    .line 1051
    :goto_1
    return-object v0

    :cond_2
    move v4, v0

    .line 999
    goto :goto_0

    :cond_3
    move v3, v5

    .line 1016
    :goto_2
    if-ne v0, v8, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->ad()I

    move-result v0

    .line 1021
    :cond_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 1025
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 1026
    iget v3, p0, Lcom/flurry/sdk/hx;->g:I

    if-le v0, v3, :cond_5

    .line 1027
    iget v0, p0, Lcom/flurry/sdk/hx;->g:I

    .line 1032
    :cond_5
    :goto_3
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    if-lt v3, v0, :cond_6

    .line 1034
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/flurry/sdk/hx;->a([CIZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 1036
    :cond_6
    iget-object v3, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v6, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 1037
    if-lt v3, v8, :cond_7

    if-le v3, v9, :cond_9

    .line 1043
    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_a

    :cond_8
    move-object v0, p0

    .line 1044
    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([CIIZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 1040
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 1041
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_3

    .line 1047
    :cond_a
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/hx;->f:I

    .line 1048
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/sm;->a(I)V

    .line 1051
    invoke-virtual {p0, v4, v5}, Lcom/flurry/sdk/hx;->a(ZI)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    :cond_b
    move v3, v0

    move v0, p1

    goto :goto_2
.end method

.method protected final e(I)Lcom/flurry/sdk/rz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 1226
    if-eq p1, v5, :cond_0

    .line 1227
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->g(I)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1283
    :goto_0
    return-object v0

    .line 1230
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-le v0, v1, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->V()Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    .line 1241
    sget-object v1, Lcom/flurry/sdk/hx;->Q:[I

    .line 1243
    iget v2, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1245
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 1246
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1247
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 1248
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1249
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1250
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 1251
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1252
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1253
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 1254
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1255
    iget v3, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1256
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 1257
    iput v2, p0, Lcom/flurry/sdk/hx;->R:I

    .line 1258
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(I[I)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1261
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/flurry/sdk/hx;->b(II)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/flurry/sdk/hx;->a(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1265
    :cond_4
    if-ne v3, v5, :cond_5

    .line 1266
    invoke-direct {p0, v2, v8}, Lcom/flurry/sdk/hx;->b(II)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1268
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lcom/flurry/sdk/hx;->a(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1270
    :cond_6
    if-ne v3, v5, :cond_7

    .line 1271
    invoke-direct {p0, v2, v7}, Lcom/flurry/sdk/hx;->b(II)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1273
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lcom/flurry/sdk/hx;->a(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1275
    :cond_8
    if-ne v3, v5, :cond_9

    .line 1276
    invoke-direct {p0, v2, v6}, Lcom/flurry/sdk/hx;->b(II)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1278
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lcom/flurry/sdk/hx;->a(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1280
    :cond_a
    if-ne v2, v5, :cond_b

    .line 1281
    invoke-static {}, Lcom/flurry/sdk/rx;->e()Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0

    .line 1283
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lcom/flurry/sdk/hx;->a(III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected f(I)Lcom/flurry/sdk/rz;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 1330
    sget-object v1, Lcom/flurry/sdk/hx;->Q:[I

    move v2, v5

    move v4, p1

    .line 1338
    :goto_0
    iget v0, p0, Lcom/flurry/sdk/hx;->g:I

    iget v6, p0, Lcom/flurry/sdk/hx;->f:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1375
    :goto_1
    return-object v0

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v6, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 1344
    aget v0, v1, v9

    if-eqz v0, :cond_2

    .line 1345
    if-ne v9, v8, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lcom/flurry/sdk/hx;->a([IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1348
    :cond_1
    iget-object v6, p0, Lcom/flurry/sdk/hx;->K:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1351
    :cond_2
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 1352
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1353
    aget v0, v1, v4

    if-eqz v0, :cond_4

    .line 1354
    if-ne v4, v8, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/flurry/sdk/hx;->a([IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1357
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1360
    :cond_4
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1361
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1362
    aget v0, v1, v4

    if-eqz v0, :cond_6

    .line 1363
    if-ne v4, v8, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/flurry/sdk/hx;->a([IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1366
    :cond_5
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_1

    .line 1369
    :cond_6
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1370
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1371
    aget v0, v1, v4

    if-eqz v0, :cond_8

    .line 1372
    if-ne v4, v8, :cond_7

    .line 1373
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lcom/flurry/sdk/hx;->a([IIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_1

    .line 1375
    :cond_7
    iget-object v1, p0, Lcom/flurry/sdk/hx;->K:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/hx;->a([IIIII)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto/16 :goto_1

    .line 1379
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 1380
    iget-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    invoke-static {v0, v2}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1382
    :cond_9
    iget-object v7, p0, Lcom/flurry/sdk/hx;->K:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 1384
    goto/16 :goto_0
.end method

.method protected final g(I)Lcom/flurry/sdk/rz;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1532
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/hg$a;->d:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->W()Lcom/flurry/sdk/rz;

    move-result-object v0

    .line 1593
    :goto_0
    return-object v0

    .line 1536
    :cond_0
    sget-object v1, Lcom/flurry/sdk/hg$a;->c:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1537
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 1543
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/sh;->d()[I

    move-result-object v6

    .line 1545
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 1546
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 1553
    :cond_2
    iget-object v3, p0, Lcom/flurry/sdk/hx;->K:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1560
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_6

    .line 1561
    add-int/lit8 v1, v1, 0x1

    .line 1562
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1571
    :goto_2
    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    iget v5, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v4, v5, :cond_3

    .line 1572
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1573
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/flurry/sdk/hx;->c(Ljava/lang/String;)V

    .line 1576
    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v5, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 1577
    aget v4, v6, p1

    if-eqz v4, :cond_8

    .line 1583
    if-lez v0, :cond_5

    .line 1584
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 1585
    array-length v4, v3

    invoke-static {v3, v4}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1587
    :cond_4
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1589
    :cond_5
    iget-object v1, p0, Lcom/flurry/sdk/hx;->J:Lcom/flurry/sdk/rx;

    invoke-virtual {v1, v3, v2}, Lcom/flurry/sdk/rx;->a([II)Lcom/flurry/sdk/rz;

    move-result-object v1

    .line 1590
    if-nez v1, :cond_9

    .line 1591
    invoke-direct {p0, v3, v2, v0}, Lcom/flurry/sdk/hx;->a([III)Lcom/flurry/sdk/rz;

    move-result-object v0

    goto :goto_0

    .line 1564
    :cond_6
    array-length v1, v0

    if-lt v3, v1, :cond_7

    .line 1565
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/flurry/sdk/hx;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hx;->K:[I

    .line 1567
    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1569
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 1580
    :cond_8
    iget v4, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/flurry/sdk/hx;->f:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected h(I)Lcom/flurry/sdk/hj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2068
    sparse-switch p1, :sswitch_data_0

    .line 2090
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/hx;->b(ILjava/lang/String;)V

    .line 2091
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2070
    :sswitch_0
    sget-object v0, Lcom/flurry/sdk/hg$a;->d:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->Z()Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 2075
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;I)V

    .line 2076
    sget-object v0, Lcom/flurry/sdk/hg$a;->h:Lcom/flurry/sdk/hg$a;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hg$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8000000000000L

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;D)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 2079
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :sswitch_2
    iget v0, p0, Lcom/flurry/sdk/hx;->f:I

    iget v1, p0, Lcom/flurry/sdk/hx;->g:I

    if-lt v0, v1, :cond_2

    .line 2083
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->E()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2084
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->T()V

    .line 2087
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->N:[B

    iget v1, p0, Lcom/flurry/sdk/hx;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/sdk/hx;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/hx;->a(IZ)Lcom/flurry/sdk/hj;

    move-result-object v0

    goto :goto_1

    .line 2068
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected i(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 2564
    .line 2565
    if-gez p1, :cond_3

    .line 2569
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    .line 2570
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2584
    :goto_0
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->aj()I

    move-result v3

    .line 2585
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_0

    .line 2586
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p0, v4}, Lcom/flurry/sdk/hx;->l(I)V

    .line 2588
    :cond_0
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2590
    if-le v0, v1, :cond_3

    .line 2591
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->aj()I

    move-result v1

    .line 2592
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 2593
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/flurry/sdk/hx;->l(I)V

    .line 2595
    :cond_1
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2596
    if-le v0, v2, :cond_3

    .line 2597
    invoke-direct {p0}, Lcom/flurry/sdk/hx;->aj()I

    move-result v0

    .line 2598
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_2

    .line 2599
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/hx;->l(I)V

    .line 2601
    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2605
    :cond_3
    return p1

    .line 2572
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_5

    .line 2573
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 2574
    goto :goto_0

    .line 2575
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_6

    .line 2577
    and-int/lit8 p1, p1, 0x7

    .line 2578
    const/4 v0, 0x3

    goto :goto_0

    .line 2580
    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->k(I)V

    move v0, v1

    .line 2581
    goto :goto_0
.end method

.method protected j(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2812
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2813
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->b(I)V

    .line 2815
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hx;->k(I)V

    .line 2816
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    .line 273
    sget-object v1, Lcom/flurry/sdk/hj;->h:Lcom/flurry/sdk/hj;

    if-ne v0, v1, :cond_1

    .line 274
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 276
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->X()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->f()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hj;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected k(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    .line 2822
    return-void
.end method

.method protected l(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hx;->d(Ljava/lang/String;)V

    .line 2828
    return-void
.end method

.method public l()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    if-eqz v0, :cond_4

    .line 306
    sget-object v0, Lcom/flurry/sdk/hx$1;->a:[I

    iget-object v1, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->b()[C

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 309
    :pswitch_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->r:Z

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/ht;->h()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    iget-object v2, p0, Lcom/flurry/sdk/hx;->q:[C

    if-nez v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/flurry/sdk/hx;->d:Lcom/flurry/sdk/ib;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/ib;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/sdk/hx;->q:[C

    .line 317
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/hx;->q:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->r:Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hx;->q:[C

    goto :goto_0

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/flurry/sdk/hx;->q:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 315
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/flurry/sdk/hx;->q:[C

    goto :goto_1

    .line 323
    :pswitch_1
    iget-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v0, :cond_3

    .line 324
    iput-boolean v3, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 325
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->X()V

    .line 330
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->e()[C

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public m()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/flurry/sdk/hx$1;->a:[I

    iget-object v2, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v2}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->b()[C

    move-result-object v0

    array-length v0, v0

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/hx;->n:Lcom/flurry/sdk/ht;

    invoke-virtual {v0}, Lcom/flurry/sdk/ht;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 349
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v1, :cond_1

    .line 350
    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 351
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->X()V

    .line 356
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->c()I

    move-result v0

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public n()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/flurry/sdk/hx$1;->a:[I

    iget-object v2, p0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/hj;

    invoke-virtual {v2}, Lcom/flurry/sdk/hj;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 374
    :pswitch_1
    iget-boolean v1, p0, Lcom/flurry/sdk/hx;->L:Z

    if-eqz v1, :cond_1

    .line 375
    iput-boolean v0, p0, Lcom/flurry/sdk/hx;->L:Z

    .line 376
    invoke-virtual {p0}, Lcom/flurry/sdk/hx;->X()V

    .line 381
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/hx;->p:Lcom/flurry/sdk/sm;

    invoke-virtual {v0}, Lcom/flurry/sdk/sm;->d()I

    move-result v0

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
