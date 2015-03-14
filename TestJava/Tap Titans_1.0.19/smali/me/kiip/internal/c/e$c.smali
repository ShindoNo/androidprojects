.class Lme/kiip/internal/c/e$c;
.super Ljava/net/CacheResponse;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lme/kiip/internal/c/e$b;

.field private final b:Lme/kiip/internal/d/c$c;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lme/kiip/internal/c/e$b;Lme/kiip/internal/d/c$c;)V
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 681
    iput-object p1, p0, Lme/kiip/internal/c/e$c;->a:Lme/kiip/internal/c/e$b;

    .line 682
    iput-object p2, p0, Lme/kiip/internal/c/e$c;->b:Lme/kiip/internal/d/c$c;

    .line 683
    invoke-static {p2}, Lme/kiip/internal/c/e;->a(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$c;->c:Ljava/io/InputStream;

    .line 684
    return-void
.end method

.method static synthetic a(Lme/kiip/internal/c/e$c;)Lme/kiip/internal/d/c$c;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lme/kiip/internal/c/e$c;->b:Lme/kiip/internal/d/c$c;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lme/kiip/internal/c/e$c;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lme/kiip/internal/c/e$c;->a:Lme/kiip/internal/c/e$b;

    invoke-static {v0}, Lme/kiip/internal/c/e$b;->b(Lme/kiip/internal/c/e$b;)Lme/kiip/internal/e/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
