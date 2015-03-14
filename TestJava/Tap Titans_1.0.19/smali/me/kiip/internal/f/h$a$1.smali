.class Lme/kiip/internal/f/h$a$1;
.super Ljava/io/InputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/f/h$a;->a()Ljava/io/DataInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/kiip/internal/f/h$a;


# direct methods
.method constructor <init>(Lme/kiip/internal/f/h$a;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lme/kiip/internal/f/h$a$1;->a:Lme/kiip/internal/f/h$a;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

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
    .line 260
    iget-object v0, p0, Lme/kiip/internal/f/h$a$1;->a:Lme/kiip/internal/f/h$a;

    invoke-static {v0}, Lme/kiip/internal/f/h$a;->b(Lme/kiip/internal/f/h$a;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 261
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Lme/kiip/internal/d/h;->a(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lme/kiip/internal/f/h$a$1;->a:Lme/kiip/internal/f/h$a;

    invoke-static {v0}, Lme/kiip/internal/f/h$a;->a(Lme/kiip/internal/f/h$a;)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 254
    iget-object v0, p0, Lme/kiip/internal/f/h$a$1;->a:Lme/kiip/internal/f/h$a;

    invoke-static {v0}, Lme/kiip/internal/f/h$a;->b(Lme/kiip/internal/f/h$a;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 255
    iget-object v1, p0, Lme/kiip/internal/f/h$a$1;->a:Lme/kiip/internal/f/h$a;

    invoke-static {v1, v0}, Lme/kiip/internal/f/h$a;->a(Lme/kiip/internal/f/h$a;I)I

    .line 256
    return v0
.end method
