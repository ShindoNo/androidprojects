.class public final Lme/kiip/internal/e/j;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/c/h;


# instance fields
.field private final a:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lme/kiip/internal/e/j;->a:Ljava/net/ResponseCache;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lme/kiip/internal/e/j;->a:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lme/kiip/internal/e/j;->a:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public a(Lme/kiip/internal/c/i;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
