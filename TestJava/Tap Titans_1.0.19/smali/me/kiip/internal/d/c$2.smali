.class final Lme/kiip/internal/d/c$2;
.super Ljava/io/OutputStream;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    return-void
.end method