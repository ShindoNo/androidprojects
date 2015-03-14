.class Lme/kiip/internal/d/c$a$a;
.super Ljava/io/FilterOutputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/d/c$a;


# direct methods
.method private constructor <init>(Lme/kiip/internal/d/c$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lme/kiip/internal/d/c$a$a;->a:Lme/kiip/internal/d/c$a;

    .line 834
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 835
    return-void
.end method

.method synthetic constructor <init>(Lme/kiip/internal/d/c$a;Ljava/io/OutputStream;Lme/kiip/internal/d/c$1;)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0, p1, p2}, Lme/kiip/internal/d/c$a$a;-><init>(Lme/kiip/internal/d/c$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->a:Lme/kiip/internal/d/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/d/c$a;->a(Lme/kiip/internal/d/c$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 863
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->a:Lme/kiip/internal/d/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/d/c$a;->a(Lme/kiip/internal/d/c$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I

    .prologue
    .line 839
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->a:Lme/kiip/internal/d/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/d/c$a;->a(Lme/kiip/internal/d/c$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 847
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    iget-object v0, p0, Lme/kiip/internal/d/c$a$a;->a:Lme/kiip/internal/d/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/kiip/internal/d/c$a;->a(Lme/kiip/internal/d/c$a;Z)Z

    goto :goto_0
.end method
