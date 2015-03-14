.class Lme/kiip/internal/c/e$1;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Lme/kiip/internal/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/c/e;


# direct methods
.method constructor <init>(Lme/kiip/internal/c/e;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 153
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-virtual {v0, p1, p2}, Lme/kiip/internal/c/e;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

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
    .line 149
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-virtual {v0, p1, p2, p3}, Lme/kiip/internal/c/e;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-static {v0}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/c/e;)V

    .line 167
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-static {v0, p1, p2}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/c/e;Ljava/lang/String;Ljava/net/URI;)Z

    .line 158
    return-void
.end method

.method public a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-static {v0, p1, p2}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/c/e;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    .line 163
    return-void
.end method

.method public a(Lme/kiip/internal/c/i;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lme/kiip/internal/c/e$1;->a:Lme/kiip/internal/c/e;

    invoke-static {v0, p1}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/c/e;Lme/kiip/internal/c/i;)V

    .line 171
    return-void
.end method
