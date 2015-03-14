.class public final Lcom/flurry/sdk/ho;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ho$1;
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/ib;

.field protected final b:Ljava/io/InputStream;

.field protected final c:[B

.field protected d:I

.field protected e:Z

.field protected f:I

.field private g:I

.field private h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ib;Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/flurry/sdk/ho;->e:Z

    .line 76
    iput v1, p0, Lcom/flurry/sdk/ho;->f:I

    .line 86
    iput-object p1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    .line 87
    iput-object p2, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lcom/flurry/sdk/ib;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ho;->c:[B

    .line 89
    iput v1, p0, Lcom/flurry/sdk/ho;->g:I

    iput v1, p0, Lcom/flurry/sdk/ho;->h:I

    .line 90
    iput v1, p0, Lcom/flurry/sdk/ho;->d:I

    .line 91
    iput-boolean v2, p0, Lcom/flurry/sdk/ho;->i:Z

    .line 92
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    sparse-switch p1, :sswitch_data_0

    .line 414
    :goto_0
    ushr-int/lit8 v2, p1, 0x10

    .line 415
    const v3, 0xfeff

    if-ne v2, v3, :cond_0

    .line 416
    iget v1, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flurry/sdk/ho;->g:I

    .line 417
    iput v4, p0, Lcom/flurry/sdk/ho;->f:I

    .line 418
    iput-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    .line 434
    :goto_1
    return v0

    .line 399
    :sswitch_0
    iput-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    .line 400
    iget v1, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/flurry/sdk/ho;->g:I

    .line 401
    iput v3, p0, Lcom/flurry/sdk/ho;->f:I

    goto :goto_1

    .line 404
    :sswitch_1
    iget v2, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/flurry/sdk/ho;->g:I

    .line 405
    iput v3, p0, Lcom/flurry/sdk/ho;->f:I

    .line 406
    iput-boolean v1, p0, Lcom/flurry/sdk/ho;->e:Z

    goto :goto_1

    .line 409
    :sswitch_2
    const-string v2, "2143"

    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->a(Ljava/lang/String;)V

    .line 411
    :sswitch_3
    const-string v2, "3412"

    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    .line 422
    iget v2, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/flurry/sdk/ho;->g:I

    .line 423
    iput v4, p0, Lcom/flurry/sdk/ho;->f:I

    .line 424
    iput-boolean v1, p0, Lcom/flurry/sdk/ho;->e:Z

    goto :goto_1

    .line 428
    :cond_1
    ushr-int/lit8 v2, p1, 0x8

    const v3, 0xefbbbf

    if-ne v2, v3, :cond_2

    .line 429
    iget v1, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/flurry/sdk/ho;->g:I

    .line 430
    iput v0, p0, Lcom/flurry/sdk/ho;->f:I

    .line 431
    iput-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 434
    goto :goto_1

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method private c(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 444
    iput-boolean v1, p0, Lcom/flurry/sdk/ho;->e:Z

    .line 457
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/flurry/sdk/ho;->f:I

    move v0, v1

    .line 458
    :cond_0
    return v0

    .line 445
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 446
    iput-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    goto :goto_0

    .line 447
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 448
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ho;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 450
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ho;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 463
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 464
    iput-boolean v1, p0, Lcom/flurry/sdk/ho;->e:Z

    .line 472
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/ho;->f:I

    move v0, v1

    .line 473
    :cond_0
    return v0

    .line 465
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 466
    iput-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/gz;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x0

    .line 129
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/ho;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v3, p0, Lcom/flurry/sdk/ho;->g:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 135
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 162
    sget-object v0, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ib;->a(Lcom/flurry/sdk/gz;)V

    .line 179
    return-object v0

    .line 144
    :cond_1
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 150
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/ho;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v3, p0, Lcom/flurry/sdk/ho;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 153
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ho;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 164
    :cond_4
    iget v0, p0, Lcom/flurry/sdk/ho;->f:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    goto :goto_1

    .line 169
    :pswitch_2
    iget-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/flurry/sdk/gz;->b:Lcom/flurry/sdk/gz;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/flurry/sdk/gz;->c:Lcom/flurry/sdk/gz;

    goto :goto_1

    .line 172
    :pswitch_3
    iget-boolean v0, p0, Lcom/flurry/sdk/ho;->e:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/gz;->d:Lcom/flurry/sdk/gz;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/flurry/sdk/gz;->e:Lcom/flurry/sdk/gz;

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILcom/flurry/sdk/hk;Lcom/flurry/sdk/rx;Lcom/flurry/sdk/ry;)Lcom/flurry/sdk/hg;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hf;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/flurry/sdk/ho;->a()Lcom/flurry/sdk/gz;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/flurry/sdk/hg$a;->j:Lcom/flurry/sdk/hg$a;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/hg$a;->a(I)Z

    move-result v2

    .line 228
    sget-object v1, Lcom/flurry/sdk/hg$a;->i:Lcom/flurry/sdk/hg$a;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/hg$a;->a(I)Z

    move-result v4

    .line 229
    sget-object v1, Lcom/flurry/sdk/gz;->a:Lcom/flurry/sdk/gz;

    if-ne v0, v1, :cond_0

    .line 233
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p3, v2, v4}, Lcom/flurry/sdk/rx;->a(ZZ)Lcom/flurry/sdk/rx;

    move-result-object v5

    .line 235
    new-instance v0, Lcom/flurry/sdk/hx;

    iget-object v1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    iget-object v3, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v7, p0, Lcom/flurry/sdk/ho;->g:I

    iget v8, p0, Lcom/flurry/sdk/ho;->h:I

    iget-boolean v9, p0, Lcom/flurry/sdk/ho;->i:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/flurry/sdk/hx;-><init>(Lcom/flurry/sdk/ib;ILjava/io/InputStream;Lcom/flurry/sdk/hk;Lcom/flurry/sdk/rx;[BIIZ)V

    .line 238
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/hv;

    iget-object v1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    invoke-virtual {p0}, Lcom/flurry/sdk/ho;->b()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p4, v2, v4}, Lcom/flurry/sdk/ry;->a(ZZ)Lcom/flurry/sdk/ry;

    move-result-object v5

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/hv;-><init>(Lcom/flurry/sdk/ib;ILjava/io/Reader;Lcom/flurry/sdk/hk;Lcom/flurry/sdk/ry;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 500
    iget v1, p0, Lcom/flurry/sdk/ho;->h:I

    iget v2, p0, Lcom/flurry/sdk/ho;->g:I

    sub-int/2addr v1, v2

    move v2, v1

    .line 501
    :goto_0
    if-ge v2, p1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 505
    const/4 v1, -0x1

    .line 509
    :goto_1
    if-ge v1, v0, :cond_2

    .line 510
    const/4 v0, 0x0

    .line 515
    :cond_0
    return v0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->h:I

    iget-object v5, p0, Lcom/flurry/sdk/ho;->c:[B

    array-length v5, v5

    iget v6, p0, Lcom/flurry/sdk/ho;->h:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_1

    .line 512
    :cond_2
    iget v3, p0, Lcom/flurry/sdk/ho;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/flurry/sdk/ho;->h:I

    .line 513
    add-int/2addr v1, v2

    move v2, v1

    .line 514
    goto :goto_0
.end method

.method public b()Ljava/io/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    invoke-virtual {v0}, Lcom/flurry/sdk/ib;->b()Lcom/flurry/sdk/gz;

    move-result-object v6

    .line 192
    sget-object v0, Lcom/flurry/sdk/ho$1;->a:[I

    invoke-virtual {v6}, Lcom/flurry/sdk/gz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_0
    new-instance v0, Lcom/flurry/sdk/ik;

    iget-object v1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    iget-object v2, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    iget v5, p0, Lcom/flurry/sdk/ho;->h:I

    iget-object v6, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    invoke-virtual {v6}, Lcom/flurry/sdk/ib;->b()Lcom/flurry/sdk/gz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/gz;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ik;-><init>(Lcom/flurry/sdk/ib;Ljava/io/InputStream;[BIIZ)V

    .line 215
    :goto_0
    return-object v0

    .line 203
    :pswitch_1
    iget-object v2, p0, Lcom/flurry/sdk/ho;->b:Ljava/io/InputStream;

    .line 205
    if-nez v2, :cond_0

    .line 206
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v2, p0, Lcom/flurry/sdk/ho;->g:I

    iget v3, p0, Lcom/flurry/sdk/ho;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 215
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lcom/flurry/sdk/gz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/ho;->g:I

    iget v1, p0, Lcom/flurry/sdk/ho;->h:I

    if-ge v0, v1, :cond_1

    .line 212
    new-instance v0, Lcom/flurry/sdk/ie;

    iget-object v1, p0, Lcom/flurry/sdk/ho;->a:Lcom/flurry/sdk/ib;

    iget-object v3, p0, Lcom/flurry/sdk/ho;->c:[B

    iget v4, p0, Lcom/flurry/sdk/ho;->g:I

    iget v5, p0, Lcom/flurry/sdk/ho;->h:I

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ie;-><init>(Lcom/flurry/sdk/ib;Ljava/io/InputStream;[BII)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
