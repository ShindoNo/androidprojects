.class public Lme/kiip/internal/n/b;
.super Lme/kiip/internal/b/g;
.source "KiipSDK"


# instance fields
.field private final a:Lme/kiip/internal/c/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lme/kiip/internal/c/g;

    invoke-direct {v0}, Lme/kiip/internal/c/g;-><init>()V

    invoke-direct {p0, v0}, Lme/kiip/internal/n/b;-><init>(Lme/kiip/internal/c/g;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lme/kiip/internal/c/g;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lme/kiip/internal/b/g;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lme/kiip/internal/n/b;->a:Lme/kiip/internal/c/g;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lme/kiip/internal/n/b;->a:Lme/kiip/internal/c/g;

    invoke-virtual {v0, p1}, Lme/kiip/internal/c/g;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
