.class public Lcom/flurry/sdk/aw$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aw;

.field private final b:Lcom/flurry/sdk/fe$a;

.field private final c:Ljava/io/OutputStream;

.field private final d:Ljava/util/zip/GZIPOutputStream;

.field private final e:Lcom/flurry/sdk/aw$a;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    iput-object p1, p0, Lcom/flurry/sdk/aw$c;->a:Lcom/flurry/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p2, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Editor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fe$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/aw$c;->c:Ljava/io/OutputStream;

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Editor outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    if-eqz p3, :cond_3

    .line 118
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->c:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$c;->d:Ljava/util/zip/GZIPOutputStream;

    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->d:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip outputstream is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Lcom/flurry/sdk/aw$a;

    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->d:Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aw$a;-><init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aw$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_3
    iput-object v2, p0, Lcom/flurry/sdk/aw$c;->d:Ljava/util/zip/GZIPOutputStream;

    .line 129
    new-instance v0, Lcom/flurry/sdk/aw$a;

    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->c:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/aw$a;-><init>(Ljava/io/OutputStream;Lcom/flurry/sdk/aw$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$a;ZLcom/flurry/sdk/aw$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/aw$c;-><init>(Lcom/flurry/sdk/aw;Lcom/flurry/sdk/fe$a;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    return-object v0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-boolean v1, p0, Lcom/flurry/sdk/aw$c;->f:Z

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/aw$c;->f:Z

    .line 152
    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 153
    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->d:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 154
    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->c:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 156
    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    if-nez v1, :cond_2

    .line 160
    :goto_1
    if-eqz v0, :cond_3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/fe$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/aw;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing editor for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/aw$c;->a:Lcom/flurry/sdk/aw;

    invoke-static {v4}, Lcom/flurry/sdk/aw;->a(Lcom/flurry/sdk/aw;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->e:Lcom/flurry/sdk/aw$a;

    invoke-static {v0}, Lcom/flurry/sdk/aw$a;->a(Lcom/flurry/sdk/aw$a;)Z

    move-result v0

    goto :goto_1

    .line 163
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/aw$c;->b:Lcom/flurry/sdk/fe$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/fe$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

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
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 137
    invoke-virtual {p0}, Lcom/flurry/sdk/aw$c;->close()V

    .line 138
    return-void
.end method
