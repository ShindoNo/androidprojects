.class Lme/kiip/internal/d/f$c;
.super Lme/kiip/internal/d/f;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lme/kiip/internal/d/f;-><init>()V

    .line 214
    iput-object p1, p0, Lme/kiip/internal/d/f$c;->a:Ljava/lang/reflect/Method;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Lme/kiip/internal/d/f$1;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lme/kiip/internal/d/f$c;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/net/Socket;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1}, Lme/kiip/internal/d/f;->c(Ljava/net/Socket;)I

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v1, p0, Lme/kiip/internal/d/f$c;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    invoke-super {p0, p1}, Lme/kiip/internal/d/f;->c(Ljava/net/Socket;)I

    move-result v0

    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 230
    invoke-super {p0, p1}, Lme/kiip/internal/d/f;->c(Ljava/net/Socket;)I

    move-result v0

    goto :goto_0

    .line 231
    :catch_2
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 233
    :catch_3
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 235
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
