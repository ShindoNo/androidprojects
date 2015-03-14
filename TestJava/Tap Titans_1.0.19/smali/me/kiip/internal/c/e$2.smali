.class final Lme/kiip/internal/c/e$2;
.super Ljava/io/FilterInputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/c/e;->b(Lme/kiip/internal/d/c$c;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/d/c$c;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lme/kiip/internal/d/c$c;)V
    .locals 0

    .prologue
    .line 667
    iput-object p2, p0, Lme/kiip/internal/c/e$2;->a:Lme/kiip/internal/d/c$c;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lme/kiip/internal/c/e$2;->a:Lme/kiip/internal/d/c$c;

    invoke-virtual {v0}, Lme/kiip/internal/d/c$c;->close()V

    .line 670
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 671
    return-void
.end method
