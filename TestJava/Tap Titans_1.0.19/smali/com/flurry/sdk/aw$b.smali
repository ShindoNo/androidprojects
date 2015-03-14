.class public Lcom/flurry/sdk/aw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aw;

.field private final b:Lcom/flurry/sdk/fe$c;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/util/zip/GZIPInputStream;

.field private final e:Ljava/io/BufferedInputStream;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/aw$b;->a:Lcom/flurry/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Snapshot cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/aw$b;->b:Lcom/flurry/sdk/fe$c;

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->b:Lcom/flurry/sdk/fe$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fe$c;->a(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aw$b;->c:Ljava/io/InputStream;

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->c:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Snapshot inputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    if-eqz p3, :cond_3

    .line 53
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aw$b;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$b;->d:Ljava/util/zip/GZIPInputStream;

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->d:Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip inputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aw$b;->d:Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$b;->e:Ljava/io/BufferedInputStream;

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/aw$b;->d:Ljava/util/zip/GZIPInputStream;

    .line 64
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aw$b;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$b;->e:Ljava/io/BufferedInputStream;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$c;ZLcom/flurry/sdk/aw$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/aw$b;-><init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$c;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->e:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/flurry/sdk/aw$b;->f:Z

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/aw$b;->f:Z

    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->e:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->d:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/aw$b;->b:Lcom/flurry/sdk/fe$c;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    invoke-virtual {p0}, Lcom/flurry/sdk/aw$b;->close()V

    .line 73
    return-void
.end method
