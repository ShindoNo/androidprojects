.class final Lme/kiip/internal/f/h$a;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Ljava/io/DataInputStream;

.field private final c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    .line 112
    invoke-direct {p0}, Lme/kiip/internal/f/h$a;->a()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/f/h$a;->b:Ljava/io/DataInputStream;

    .line 113
    iput-boolean p2, p0, Lme/kiip/internal/f/h$a;->c:Z

    .line 114
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/f/h$a;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lme/kiip/internal/f/h$a;->d:I

    return v0
.end method

.method static synthetic a(Lme/kiip/internal/f/h$a;I)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lme/kiip/internal/f/h$a;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lme/kiip/internal/f/h$a;->d:I

    return v0
.end method

.method private a()Ljava/io/DataInputStream;
    .locals 4

    .prologue
    .line 247
    new-instance v0, Lme/kiip/internal/f/h$a$1;

    invoke-direct {v0, p0}, Lme/kiip/internal/f/h$a$1;-><init>(Lme/kiip/internal/f/h$a;)V

    .line 265
    new-instance v1, Lme/kiip/internal/f/h$a$2;

    invoke-direct {v1, p0}, Lme/kiip/internal/f/h$a$2;-><init>(Lme/kiip/internal/f/h$a;)V

    .line 277
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 281
    iget v1, p0, Lme/kiip/internal/f/h$a;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lme/kiip/internal/f/h$a;->d:I

    .line 283
    :try_start_0
    iget-object v1, p0, Lme/kiip/internal/f/h$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 284
    mul-int/lit8 v2, v1, 0x2

    if-gez v2, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 286
    const-string v0, "numberOfPairs < 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    :goto_0
    if-ge v0, v1, :cond_2

    .line 290
    invoke-direct {p0}, Lme/kiip/internal/f/h$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-direct {p0}, Lme/kiip/internal/f/h$a;->b()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "name.length == 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 293
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p0, Lme/kiip/internal/f/h$a;->d:I

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressedLimit > 0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lme/kiip/internal/f/h$a;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :cond_3
    return-object v2
.end method

.method private a(Lme/kiip/internal/f/b$a;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 196
    iget-object v3, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 197
    iget-object v3, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 198
    and-int v3, v2, v5

    .line 199
    and-int/2addr v4, v5

    .line 200
    const v2, 0xe000

    and-int/2addr v2, v6

    ushr-int/lit8 v5, v2, 0xd

    .line 201
    and-int/lit16 v6, v6, 0xff

    .line 202
    add-int/lit8 v2, p3, -0xa

    invoke-direct {p0, v2}, Lme/kiip/internal/f/h$a;->a(I)Ljava/util/List;

    move-result-object v7

    .line 204
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    .line 205
    :goto_0
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_1

    :goto_1
    move-object v0, p1

    .line 206
    invoke-interface/range {v0 .. v7}, Lme/kiip/internal/f/b$a;->a(ZZIIIILjava/util/List;)V

    .line 208
    return-void

    :cond_0
    move v2, v0

    .line 204
    goto :goto_0

    :cond_1
    move v1, v0

    .line 205
    goto :goto_1
.end method

.method static synthetic b(Lme/kiip/internal/f/h$a;)Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 309
    new-array v1, v0, [B

    .line 310
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->b:Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;[B)V

    .line 311
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private b(Lme/kiip/internal/f/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 212
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 213
    add-int/lit8 v0, p3, -0x4

    invoke-direct {p0, v0}, Lme/kiip/internal/f/h$a;->a(I)Ljava/util/List;

    move-result-object v2

    .line 214
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lme/kiip/internal/f/b$a;->a(ZILjava/util/List;)V

    .line 216
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lme/kiip/internal/f/b$a;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 221
    iget-object v1, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 222
    invoke-static {v1}, Lme/kiip/internal/f/a;->a(I)Lme/kiip/internal/f/a;

    move-result-object v2

    .line 223
    if-nez v2, :cond_1

    .line 224
    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 226
    :cond_1
    invoke-interface {p1, v0, v2}, Lme/kiip/internal/f/b$a;->a(ILme/kiip/internal/f/a;)V

    .line 227
    return-void
.end method

.method private d(Lme/kiip/internal/f/b$a;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 231
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 232
    add-int/lit8 v1, p3, -0x4

    invoke-direct {p0, v1}, Lme/kiip/internal/f/h$a;->a(I)Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-interface {p1, v0, v1}, Lme/kiip/internal/f/b$a;->a(ILjava/util/List;)V

    .line 234
    return-void
.end method

.method private e(Lme/kiip/internal/f/b$a;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    const/4 v3, 0x0

    .line 237
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 239
    iget-object v1, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 240
    and-int/2addr v0, v2

    .line 241
    and-int/2addr v1, v2

    .line 242
    invoke-interface {p1, v0, v1, v3}, Lme/kiip/internal/f/b$a;->a(IIZ)V

    .line 243
    return-void
.end method

.method private f(Lme/kiip/internal/f/b$a;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 316
    :cond_0
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 317
    iget-boolean v4, p0, Lme/kiip/internal/f/h$a;->c:Z

    rem-int/lit8 v2, v3, 0x2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_2

    .line 318
    :goto_1
    invoke-interface {p1, v0, v3, v1}, Lme/kiip/internal/f/b$a;->a(ZII)V

    .line 319
    return-void

    :cond_1
    move v2, v1

    .line 317
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private g(Lme/kiip/internal/f/b$a;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 324
    iget-object v1, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 325
    invoke-static {v1}, Lme/kiip/internal/f/a;->c(I)Lme/kiip/internal/f/a;

    move-result-object v2

    .line 326
    if-nez v2, :cond_1

    .line 327
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 329
    :cond_1
    invoke-interface {p1, v0, v2}, Lme/kiip/internal/f/b$a;->b(ILme/kiip/internal/f/a;)V

    .line 330
    return-void
.end method

.method private h(Lme/kiip/internal/f/b$a;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 334
    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_0

    .line 335
    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 337
    :cond_0
    new-instance v4, Lme/kiip/internal/f/g;

    invoke-direct {v4}, Lme/kiip/internal/f/g;-><init>()V

    move v2, v1

    .line 338
    :goto_0
    if-ge v2, v3, :cond_1

    .line 339
    iget-object v5, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 340
    iget-object v6, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 341
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 342
    const v8, 0xffffff

    and-int/2addr v5, v8

    .line 343
    invoke-virtual {v4, v5, v7, v6}, Lme/kiip/internal/f/g;->a(III)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 346
    :goto_1
    invoke-interface {p1, v0, v4}, Lme/kiip/internal/f/b$a;->a(ZLme/kiip/internal/f/g;)V

    .line 347
    return-void

    :cond_2
    move v0, v1

    .line 345
    goto :goto_1
.end method


# virtual methods
.method public a(Lme/kiip/internal/f/b$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    :try_start_0
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 127
    iget-object v2, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 129
    const/high16 v2, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move v2, v1

    .line 130
    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x18

    .line 131
    const v6, 0xffffff

    and-int/2addr v4, v6

    .line 133
    if-eqz v2, :cond_3

    .line 134
    const/high16 v2, 0x7fff0000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x10

    .line 135
    const v6, 0xffff

    and-int/2addr v3, v6

    .line 137
    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    .line 138
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version != 3: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :catch_0
    move-exception v1

    move v1, v0

    .line 190
    :goto_1
    return v1

    :cond_0
    move v2, v0

    .line 129
    goto :goto_0

    .line 141
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected frame"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_1
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->a(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 147
    :pswitch_2
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->b(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 151
    :pswitch_3
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->c(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 155
    :pswitch_4
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->h(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 159
    :pswitch_5
    if-eqz v4, :cond_2

    const-string v2, "TYPE_NOOP length: %d != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lme/kiip/internal/f/h$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 160
    :cond_2
    invoke-interface {p1}, Lme/kiip/internal/f/b$a;->a()V

    goto :goto_1

    .line 164
    :pswitch_6
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->f(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 168
    :pswitch_7
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->g(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 172
    :pswitch_8
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->d(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 176
    :pswitch_9
    invoke-direct {p0, p1, v5, v4}, Lme/kiip/internal/f/h$a;->e(Lme/kiip/internal/f/b$a;II)V

    goto :goto_1

    .line 180
    :pswitch_a
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    int-to-long v1, v4

    invoke-static {v0, v1, v2}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;J)J

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    const v2, 0x7fffffff

    and-int/2addr v2, v3

    .line 188
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_4

    move v0, v1

    .line 189
    :cond_4
    iget-object v3, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    invoke-interface {p1, v0, v2, v3, v4}, Lme/kiip/internal/f/b$a;->a(ZILjava/io/InputStream;I)V

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lme/kiip/internal/f/h$a;->a:Ljava/io/DataInputStream;

    iget-object v1, p0, Lme/kiip/internal/f/h$a;->b:Ljava/io/DataInputStream;

    invoke-static {v0, v1}, Lme/kiip/internal/d/h;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 355
    return-void
.end method
