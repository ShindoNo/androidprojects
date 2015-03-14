.class public final Lme/kiip/internal/c/b;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:Lme/kiip/internal/c/j;

.field private e:Ljava/net/Socket;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;

.field private h:Z

.field private i:Lme/kiip/internal/f/i;

.field private j:I

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lme/kiip/internal/c/b;->a:[B

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lme/kiip/internal/c/b;->b:[B

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lme/kiip/internal/c/b;->c:[B

    return-void

    .line 69
    nop

    :array_0
    .array-data 1
        0x6t
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
        0x8t
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data

    .line 73
    :array_1
    .array-data 1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    .line 76
    nop

    :array_2
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lme/kiip/internal/c/j;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kiip/internal/c/b;->h:Z

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lme/kiip/internal/c/b;->j:I

    .line 91
    iput-object p1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    .line 92
    return-void
.end method

.method private a(Lme/kiip/internal/c/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v4

    .line 126
    invoke-virtual {p0}, Lme/kiip/internal/c/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lme/kiip/internal/c/b;->b(Lme/kiip/internal/c/l;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v0, v0, Lme/kiip/internal/c/a;->d:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    iget-object v5, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v5, v5, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v5, v5, Lme/kiip/internal/c/a;->b:Ljava/lang/String;

    iget-object v6, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v6, v6, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget v6, v6, Lme/kiip/internal/c/a;->c:I

    invoke-virtual {v0, v1, v5, v6, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    .line 133
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 134
    iget-object v1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-boolean v1, v1, Lme/kiip/internal/c/j;->d:Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v1, v1, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v1, v1, Lme/kiip/internal/c/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lme/kiip/internal/d/f;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 140
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-boolean v1, v1, Lme/kiip/internal/c/j;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v1, v1, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v1, v1, Lme/kiip/internal/c/a;->g:Ljava/util/List;

    const-string v5, "spdy/3"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 141
    :goto_1
    if-eqz v1, :cond_1

    .line 142
    sget-object v5, Lme/kiip/internal/c/b;->a:[B

    invoke-virtual {v4, v0, v5}, Lme/kiip/internal/d/f;->a(Ljavax/net/ssl/SSLSocket;[B)V

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 149
    iget-object v5, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v5, v5, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v5, v5, Lme/kiip/internal/c/a;->e:Ljavax/net/ssl/HostnameVerifier;

    iget-object v6, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v6, v6, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v6, v6, Lme/kiip/internal/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 150
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v2, v2, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v2, v2, Lme/kiip/internal/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    invoke-virtual {v4, v0}, Lme/kiip/internal/d/f;->a(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 140
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    .line 154
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    .line 157
    if-eqz v1, :cond_5

    invoke-virtual {v4, v0}, Lme/kiip/internal/d/f;->b(Ljavax/net/ssl/SSLSocket;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 158
    sget-object v4, Lme/kiip/internal/c/b;->b:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 159
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 160
    new-instance v0, Lme/kiip/internal/f/i$a;

    iget-object v1, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v1, v1, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    invoke-virtual {v1}, Lme/kiip/internal/c/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    iget-object v4, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2, v3, v4}, Lme/kiip/internal/f/i$a;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lme/kiip/internal/f/i$a;->a()Lme/kiip/internal/f/i;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    .line 162
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    invoke-virtual {v0}, Lme/kiip/internal/f/i;->d()V

    .line 168
    :cond_5
    return-void

    .line 163
    :cond_6
    sget-object v0, Lme/kiip/internal/c/b;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected NPN transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lme/kiip/internal/c/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Lme/kiip/internal/c/l;->a()Lme/kiip/internal/e/l;

    move-result-object v3

    move-object v0, v3

    .line 307
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->f()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 308
    iget-object v1, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    invoke-static {v1}, Lme/kiip/internal/e/l;->a(Ljava/io/InputStream;)Lme/kiip/internal/e/l;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lme/kiip/internal/e/l;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 325
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lme/kiip/internal/e/l;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :sswitch_0
    new-instance v3, Lme/kiip/internal/e/l;

    invoke-direct {v3, v0}, Lme/kiip/internal/e/l;-><init>(Lme/kiip/internal/e/l;)V

    .line 315
    new-instance v5, Ljava/net/URL;

    const-string v0, "https"

    iget-object v1, p1, Lme/kiip/internal/c/l;->a:Ljava/lang/String;

    iget v4, p1, Lme/kiip/internal/c/l;->b:I

    const-string v6, "/"

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v0, v0, Lme/kiip/internal/c/a;->f:Lme/kiip/internal/c/f;

    const/16 v1, 0x197

    iget-object v4, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v4, v4, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-static/range {v0 .. v5}, Lme/kiip/internal/e/c;->a(Lme/kiip/internal/c/f;ILme/kiip/internal/e/l;Lme/kiip/internal/e/l;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    move-object v0, v3

    .line 320
    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :sswitch_1
    return-void

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lme/kiip/internal/e/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    if-eqz v0, :cond_0

    new-instance v0, Lme/kiip/internal/e/q;

    iget-object v1, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    invoke-direct {v0, p1, v1}, Lme/kiip/internal/e/q;-><init>(Lme/kiip/internal/e/e;Lme/kiip/internal/f/i;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/kiip/internal/e/f;

    iget-object v1, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    invoke-direct {v0, p1, v1, v2}, Lme/kiip/internal/e/f;-><init>(Lme/kiip/internal/e/e;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lme/kiip/internal/c/b;->j:I

    .line 288
    return-void
.end method

.method public a(IILme/kiip/internal/c/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    const/16 v2, 0x400

    .line 96
    iget-boolean v0, p0, Lme/kiip/internal/c/b;->h:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/c/b;->h:Z

    .line 100
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_4

    new-instance v0, Ljava/net/Socket;

    iget-object v3, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v3, v3, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-direct {v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    .line 101
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    iget-object v3, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    iget-object v4, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v4, v4, Lme/kiip/internal/c/j;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v3, v4, p1}, Lme/kiip/internal/d/f;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 102
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    .line 104
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    .line 106
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v0, v0, Lme/kiip/internal/c/a;->d:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, p3}, Lme/kiip/internal/c/b;->a(Lme/kiip/internal/c/l;)V

    .line 111
    :cond_1
    invoke-static {}, Lme/kiip/internal/d/f;->a()Lme/kiip/internal/d/f;

    move-result-object v0

    iget-object v3, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Lme/kiip/internal/d/f;->c(Ljava/net/Socket;)I

    move-result v0

    .line 112
    if-ge v0, v2, :cond_2

    move v0, v2

    .line 113
    :cond_2
    if-le v0, v1, :cond_3

    move v0, v1

    .line 114
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    .line 115
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lme/kiip/internal/c/b;->g:Ljava/io/OutputStream;

    .line 116
    return-void

    .line 100
    :cond_4
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lme/kiip/internal/c/b;->h:Z

    return v0
.end method

.method public a(J)Z
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lme/kiip/internal/c/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lme/kiip/internal/c/b;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lme/kiip/internal/c/j;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    return-object v0
.end method

.method public c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 177
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    iget-object v0, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    move v0, v1

    .line 226
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lme/kiip/internal/c/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/c/b;->f:Ljava/io/InputStream;

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 211
    :try_start_0
    iget-object v3, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 213
    :try_start_1
    iget-object v4, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 214
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 215
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 221
    :try_start_2
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    .line 218
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :try_start_4
    iget-object v0, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lme/kiip/internal/c/b;->e:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 223
    :catch_0
    move-exception v0

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    move v0, v2

    .line 226
    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lme/kiip/internal/c/b;->k:J

    .line 235
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    invoke-virtual {v0}, Lme/kiip/internal/f/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lme/kiip/internal/c/b;->k:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    invoke-virtual {v0}, Lme/kiip/internal/f/i;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lme/kiip/internal/c/b;->i:Lme/kiip/internal/f/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lme/kiip/internal/c/b;->j:I

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->a:Lme/kiip/internal/c/a;

    iget-object v0, v0, Lme/kiip/internal/c/a;->d:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/c/b;->d:Lme/kiip/internal/c/j;

    iget-object v0, v0, Lme/kiip/internal/c/j;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
