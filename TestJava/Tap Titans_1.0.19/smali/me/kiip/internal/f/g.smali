.class final Lme/kiip/internal/f/g;
.super Ljava/lang/Object;
.source "KiipSDK"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lme/kiip/internal/f/g;->d:[I

    return-void
.end method


# virtual methods
.method a(III)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lme/kiip/internal/f/g;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 76
    iget v1, p0, Lme/kiip/internal/f/g;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lme/kiip/internal/f/g;->a:I

    .line 77
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 78
    iget v1, p0, Lme/kiip/internal/f/g;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lme/kiip/internal/f/g;->b:I

    .line 82
    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 83
    iget v1, p0, Lme/kiip/internal/f/g;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lme/kiip/internal/f/g;->c:I

    .line 88
    :goto_2
    iget-object v0, p0, Lme/kiip/internal/f/g;->d:[I

    aput p3, v0, p1

    goto :goto_0

    .line 80
    :cond_1
    iget v1, p0, Lme/kiip/internal/f/g;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lme/kiip/internal/f/g;->b:I

    goto :goto_1

    .line 85
    :cond_2
    iget v1, p0, Lme/kiip/internal/f/g;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lme/kiip/internal/f/g;->c:I

    goto :goto_2
.end method

.method a(Lme/kiip/internal/f/g;)V
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 183
    invoke-virtual {p1, v0}, Lme/kiip/internal/f/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1, v0}, Lme/kiip/internal/f/g;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lme/kiip/internal/f/g;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lme/kiip/internal/f/g;->a(III)V

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    shl-int v1, v0, p1

    .line 94
    iget v2, p0, Lme/kiip/internal/f/g;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lme/kiip/internal/f/g;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method c(I)I
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lme/kiip/internal/f/g;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lme/kiip/internal/f/g;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    return v0
.end method

.method d(I)I
    .locals 2

    .prologue
    .line 146
    const/16 v0, 0x80

    .line 147
    iget v1, p0, Lme/kiip/internal/f/g;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kiip/internal/f/g;->d:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_0
    return p1
.end method

.method e(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 167
    shl-int v1, v0, p1

    .line 168
    iget v2, p0, Lme/kiip/internal/f/g;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 173
    shl-int v1, v0, p1

    .line 174
    iget v2, p0, Lme/kiip/internal/f/g;->c:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
