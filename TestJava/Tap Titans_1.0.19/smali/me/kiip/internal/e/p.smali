.class public final Lme/kiip/internal/e/p;
.super Ljava/lang/Object;
.source "KiipSDK"


# instance fields
.field private final a:Lme/kiip/internal/c/a;

.field private final b:Ljava/net/URI;

.field private final c:Ljava/net/ProxySelector;

.field private final d:Lme/kiip/internal/c/c;

.field private final e:Lme/kiip/internal/d/d;

.field private final f:Lme/kiip/internal/c/k;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/net/InetSocketAddress;

.field private i:Z

.field private j:Ljava/net/Proxy;

.field private k:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Ljava/net/InetAddress;

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/kiip/internal/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/a;Ljava/net/URI;Ljava/net/ProxySelector;Lme/kiip/internal/c/c;Lme/kiip/internal/d/d;Lme/kiip/internal/c/k;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lme/kiip/internal/e/p;->o:I

    .line 81
    iput-object p1, p0, Lme/kiip/internal/e/p;->a:Lme/kiip/internal/c/a;

    .line 82
    iput-object p2, p0, Lme/kiip/internal/e/p;->b:Ljava/net/URI;

    .line 83
    iput-object p3, p0, Lme/kiip/internal/e/p;->c:Ljava/net/ProxySelector;

    .line 84
    iput-object p4, p0, Lme/kiip/internal/e/p;->d:Lme/kiip/internal/c/c;

    .line 85
    iput-object p5, p0, Lme/kiip/internal/e/p;->e:Lme/kiip/internal/d/d;

    .line 86
    iput-object p6, p0, Lme/kiip/internal/e/p;->f:Lme/kiip/internal/c/k;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lme/kiip/internal/e/p;->p:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lme/kiip/internal/c/a;->c()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lme/kiip/internal/e/p;->a(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 90
    return-void
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    .line 201
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lme/kiip/internal/e/p;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lme/kiip/internal/e/p;->b:Ljava/net/URI;

    invoke-static {v1}, Lme/kiip/internal/d/h;->a(Ljava/net/URI;)I

    move-result v1

    iput v1, p0, Lme/kiip/internal/e/p;->n:I

    .line 216
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/e/p;->e:Lme/kiip/internal/d/d;

    invoke-interface {v1, v0}, Lme/kiip/internal/d/d;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lme/kiip/internal/e/p;->m:I

    .line 218
    return-void

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 206
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 211
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lme/kiip/internal/e/p;->n:I

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kiip/internal/e/p;->i:Z

    .line 157
    if-eqz p2, :cond_1

    .line 158
    iput-object p2, p0, Lme/kiip/internal/e/p;->j:Ljava/net/Proxy;

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/p;->c:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/e/p;->k:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lme/kiip/internal/e/p;->i:Z

    return v0
.end method

.method private c()Ljava/net/Proxy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lme/kiip/internal/e/p;->j:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v3, p0, Lme/kiip/internal/e/p;->i:Z

    .line 177
    iget-object v0, p0, Lme/kiip/internal/e/p;->j:Ljava/net/Proxy;

    .line 193
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lme/kiip/internal/e/p;->k:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 183
    :cond_1
    iget-object v0, p0, Lme/kiip/internal/e/p;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lme/kiip/internal/e/p;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 185
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 192
    :cond_2
    iput-boolean v3, p0, Lme/kiip/internal/e/p;->i:Z

    .line 193
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/net/InetSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    iget v2, p0, Lme/kiip/internal/e/p;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lme/kiip/internal/e/p;->m:I

    aget-object v1, v1, v2

    iget v2, p0, Lme/kiip/internal/e/p;->n:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 229
    iget v1, p0, Lme/kiip/internal/e/p;->m:I

    iget-object v2, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lme/kiip/internal/e/p;->l:[Ljava/net/InetAddress;

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lme/kiip/internal/e/p;->m:I

    .line 234
    :cond_0
    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lme/kiip/internal/e/p;->a:Lme/kiip/internal/c/a;

    invoke-virtual {v0}, Lme/kiip/internal/c/a;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lme/kiip/internal/e/p;->o:I

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lme/kiip/internal/e/p;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    iget v2, p0, Lme/kiip/internal/e/p;->o:I

    if-ne v2, v0, :cond_0

    .line 250
    iput v1, p0, Lme/kiip/internal/e/p;->o:I

    .line 254
    :goto_0
    return v0

    .line 252
    :cond_0
    iget v0, p0, Lme/kiip/internal/e/p;->o:I

    if-nez v0, :cond_1

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lme/kiip/internal/e/p;->o:I

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lme/kiip/internal/e/p;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Lme/kiip/internal/c/j;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lme/kiip/internal/e/p;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lme/kiip/internal/c/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 107
    :goto_0
    iget-object v1, p0, Lme/kiip/internal/e/p;->d:Lme/kiip/internal/c/c;

    iget-object v2, p0, Lme/kiip/internal/e/p;->a:Lme/kiip/internal/c/a;

    invoke-virtual {v1, v2}, Lme/kiip/internal/c/c;->a(Lme/kiip/internal/c/a;)Lme/kiip/internal/c/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    const-string v2, "GET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lme/kiip/internal/c/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 137
    :goto_1
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {v1}, Lme/kiip/internal/c/b;->close()V

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0}, Lme/kiip/internal/e/p;->g()Z

    move-result v1

    if-nez v1, :cond_6

    .line 114
    invoke-direct {p0}, Lme/kiip/internal/e/p;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 115
    invoke-direct {p0}, Lme/kiip/internal/e/p;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    invoke-direct {p0}, Lme/kiip/internal/e/p;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 119
    :cond_3
    new-instance v0, Lme/kiip/internal/c/b;

    invoke-direct {p0}, Lme/kiip/internal/e/p;->j()Lme/kiip/internal/c/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/kiip/internal/c/b;-><init>(Lme/kiip/internal/c/j;)V

    goto :goto_1

    .line 121
    :cond_4
    invoke-direct {p0}, Lme/kiip/internal/e/p;->c()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/e/p;->g:Ljava/net/Proxy;

    .line 122
    iget-object v1, p0, Lme/kiip/internal/e/p;->g:Ljava/net/Proxy;

    invoke-direct {p0, v1}, Lme/kiip/internal/e/p;->a(Ljava/net/Proxy;)V

    .line 124
    :cond_5
    invoke-direct {p0}, Lme/kiip/internal/e/p;->e()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/e/p;->h:Ljava/net/InetSocketAddress;

    .line 125
    invoke-direct {p0}, Lme/kiip/internal/e/p;->f()V

    .line 128
    :cond_6
    invoke-direct {p0}, Lme/kiip/internal/e/p;->h()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 129
    :goto_2
    new-instance v1, Lme/kiip/internal/c/j;

    iget-object v2, p0, Lme/kiip/internal/e/p;->a:Lme/kiip/internal/c/a;

    iget-object v3, p0, Lme/kiip/internal/e/p;->g:Ljava/net/Proxy;

    iget-object v4, p0, Lme/kiip/internal/e/p;->h:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, v3, v4, v0}, Lme/kiip/internal/c/j;-><init>(Lme/kiip/internal/c/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    .line 130
    iget-object v0, p0, Lme/kiip/internal/e/p;->f:Lme/kiip/internal/c/k;

    invoke-virtual {v0, v1}, Lme/kiip/internal/c/k;->b(Lme/kiip/internal/c/j;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    iget-object v0, p0, Lme/kiip/internal/e/p;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0, p1}, Lme/kiip/internal/e/p;->a(Ljava/lang/String;)Lme/kiip/internal/c/b;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 137
    :cond_8
    new-instance v0, Lme/kiip/internal/c/b;

    invoke-direct {v0, v1}, Lme/kiip/internal/c/b;-><init>(Lme/kiip/internal/c/j;)V

    goto :goto_1
.end method

.method public a(Lme/kiip/internal/c/b;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Lme/kiip/internal/c/b;->b()Lme/kiip/internal/c/j;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lme/kiip/internal/c/j;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lme/kiip/internal/e/p;->c:Ljava/net/ProxySelector;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lme/kiip/internal/e/p;->c:Ljava/net/ProxySelector;

    iget-object v2, p0, Lme/kiip/internal/e/p;->b:Ljava/net/URI;

    invoke-virtual {v0}, Lme/kiip/internal/c/j;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/e/p;->f:Lme/kiip/internal/c/k;

    invoke-virtual {v1, v0, p2}, Lme/kiip/internal/c/k;->a(Lme/kiip/internal/c/j;Ljava/io/IOException;)V

    .line 152
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lme/kiip/internal/e/p;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/e/p;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/e/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lme/kiip/internal/e/p;->i()Z

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
