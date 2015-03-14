.class Lme/kiip/internal/f/i$3;
.super Lme/kiip/internal/d/e;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kiip/internal/f/i;->a(ZIILme/kiip/internal/f/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lme/kiip/internal/f/f;

.field final synthetic e:Lme/kiip/internal/f/i;


# direct methods
.method varargs constructor <init>(Lme/kiip/internal/f/i;Ljava/lang/String;[Ljava/lang/Object;ZIILme/kiip/internal/f/f;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lme/kiip/internal/f/i$3;->e:Lme/kiip/internal/f/i;

    iput-boolean p4, p0, Lme/kiip/internal/f/i$3;->a:Z

    iput p5, p0, Lme/kiip/internal/f/i$3;->b:I

    iput p6, p0, Lme/kiip/internal/f/i$3;->c:I

    iput-object p7, p0, Lme/kiip/internal/f/i$3;->d:Lme/kiip/internal/f/f;

    invoke-direct {p0, p2, p3}, Lme/kiip/internal/d/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lme/kiip/internal/f/i$3;->e:Lme/kiip/internal/f/i;

    iget-boolean v1, p0, Lme/kiip/internal/f/i$3;->a:Z

    iget v2, p0, Lme/kiip/internal/f/i$3;->b:I

    iget v3, p0, Lme/kiip/internal/f/i$3;->c:I

    iget-object v4, p0, Lme/kiip/internal/f/i$3;->d:Lme/kiip/internal/f/f;

    invoke-static {v0, v1, v2, v3, v4}, Lme/kiip/internal/f/i;->a(Lme/kiip/internal/f/i;ZIILme/kiip/internal/f/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method
