.class Lcom/flurry/sdk/aw$a;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aw$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/flurry/sdk/aw$a;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/flurry/sdk/aw$a;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/aw$a;)Z
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/flurry/sdk/aw$a;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 189
    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 199
    throw v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 209
    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 219
    throw v0
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/aw$a;->a:Z

    .line 229
    throw v0
.end method
