.class Lme/kiip/internal/f/h$a$2;
.super Ljava/util/zip/Inflater;
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
    .line 265
    iput-object p1, p0, Lme/kiip/internal/f/h$a$2;->a:Lme/kiip/internal/f/h$a;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 269
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/kiip/internal/f/h$a$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v0, Lme/kiip/internal/f/h;->a:[B

    invoke-virtual {p0, v0}, Lme/kiip/internal/f/h$a$2;->setDictionary([B)V

    .line 271
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 273
    :cond_0
    return v0
.end method
