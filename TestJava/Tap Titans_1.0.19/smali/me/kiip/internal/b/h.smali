.class public Lme/kiip/internal/b/h;
.super Lme/kiip/internal/a/l;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/kiip/internal/a/l",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Lme/kiip/internal/a/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/kiip/internal/a/n$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/kiip/internal/b/h;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lme/kiip/internal/a/n$b;IILandroid/graphics/Bitmap$Config;Lme/kiip/internal/a/n$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lme/kiip/internal/a/n$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lme/kiip/internal/a/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lme/kiip/internal/a/l;-><init>(ILjava/lang/String;Lme/kiip/internal/a/n$a;)V

    .line 72
    new-instance v0, Lme/kiip/internal/a/d;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000

    invoke-direct {v0, v1, v2, v3}, Lme/kiip/internal/a/d;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lme/kiip/internal/b/h;->a(Lme/kiip/internal/a/p;)Lme/kiip/internal/a/l;

    .line 74
    iput-object p2, p0, Lme/kiip/internal/b/h;->a:Lme/kiip/internal/a/n$b;

    .line 75
    iput-object p5, p0, Lme/kiip/internal/b/h;->b:Landroid/graphics/Bitmap$Config;

    .line 76
    iput p3, p0, Lme/kiip/internal/b/h;->c:I

    .line 77
    iput p4, p0, Lme/kiip/internal/b/h;->d:I

    .line 78
    return-void
.end method

.method static a(IIII)I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 201
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 202
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 203
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 204
    const/high16 v0, 0x3f800000

    .line 205
    :goto_0
    mul-float v3, v0, v6

    float-to-double v3, v3

    cmpg-double v3, v3, v1

    if-gtz v3, :cond_0

    .line 206
    mul-float/2addr v0, v6

    goto :goto_0

    .line 209
    :cond_0
    float-to-int v0, v0

    return v0
.end method

.method private static b(IIII)I
    .locals 6

    .prologue
    .line 99
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    .line 118
    :cond_0
    :goto_0
    return p0

    .line 104
    :cond_1
    if-nez p0, :cond_2

    .line 105
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 106
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    .line 109
    :cond_2
    if-eqz p1, :cond_0

    .line 113
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 115
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 116
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method

.method private b(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/i;",
            ")",
            "Lme/kiip/internal/a/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v0, p1, Lme/kiip/internal/a/i;->b:[B

    .line 139
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    iget v2, p0, Lme/kiip/internal/b/h;->c:I

    if-nez v2, :cond_0

    iget v2, p0, Lme/kiip/internal/b/h;->d:I

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lme/kiip/internal/b/h;->b:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 143
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    :goto_0
    if-nez v0, :cond_3

    .line 178
    new-instance v0, Lme/kiip/internal/a/k;

    invoke-direct {v0, p1}, Lme/kiip/internal/a/k;-><init>(Lme/kiip/internal/a/i;)V

    invoke-static {v0}, Lme/kiip/internal/a/n;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;

    move-result-object v0

    .line 180
    :goto_1
    return-object v0

    .line 146
    :cond_0
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 148
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 149
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 152
    iget v4, p0, Lme/kiip/internal/b/h;->c:I

    iget v5, p0, Lme/kiip/internal/b/h;->d:I

    invoke-static {v4, v5, v2, v3}, Lme/kiip/internal/b/h;->b(IIII)I

    move-result v4

    .line 154
    iget v5, p0, Lme/kiip/internal/b/h;->d:I

    iget v6, p0, Lme/kiip/internal/b/h;->c:I

    invoke-static {v5, v6, v3, v2}, Lme/kiip/internal/b/h;->b(IIII)I

    move-result v5

    .line 158
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 161
    invoke-static {v2, v3, v4, v5}, Lme/kiip/internal/b/h;->a(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 169
    :cond_1
    invoke-static {v1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 173
    goto :goto_0

    .line 180
    :cond_3
    invoke-static {p1}, Lme/kiip/internal/b/e;->a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lme/kiip/internal/a/n;->a(Ljava/lang/Object;Lme/kiip/internal/a/b$a;)Lme/kiip/internal/a/n;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kiip/internal/a/i;",
            ")",
            "Lme/kiip/internal/a/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v1, Lme/kiip/internal/b/h;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lme/kiip/internal/b/h;->b(Lme/kiip/internal/a/i;)Lme/kiip/internal/a/n;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 129
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lme/kiip/internal/a/i;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lme/kiip/internal/b/h;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lme/kiip/internal/a/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v2, Lme/kiip/internal/a/k;

    invoke-direct {v2, v0}, Lme/kiip/internal/a/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lme/kiip/internal/a/n;->a(Lme/kiip/internal/a/s;)Lme/kiip/internal/a/n;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lme/kiip/internal/b/h;->a:Lme/kiip/internal/a/n$b;

    invoke-interface {v0, p1}, Lme/kiip/internal/a/n$b;->a(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lme/kiip/internal/b/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public q()Lme/kiip/internal/a/l$a;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lme/kiip/internal/a/l$a;->a:Lme/kiip/internal/a/l$a;

    return-object v0
.end method
