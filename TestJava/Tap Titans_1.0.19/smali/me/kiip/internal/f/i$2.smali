.class Lme/kiip/internal/f/i$2;
.super Lme/kiip/internal/d/e;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/f/i;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lme/kiip/internal/f/i;


# direct methods
.method varargs constructor <init>(Lme/kiip/internal/f/i;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lme/kiip/internal/f/i$2;->c:Lme/kiip/internal/f/i;

    iput p4, p0, Lme/kiip/internal/f/i$2;->a:I

    iput p5, p0, Lme/kiip/internal/f/i$2;->b:I

    invoke-direct {p0, p2, p3}, Lme/kiip/internal/d/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i$2;->c:Lme/kiip/internal/f/i;

    iget v1, p0, Lme/kiip/internal/f/i$2;->a:I

    iget v2, p0, Lme/kiip/internal/f/i$2;->b:I

    invoke-virtual {v0, v1, v2}, Lme/kiip/internal/f/i;->b(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method
