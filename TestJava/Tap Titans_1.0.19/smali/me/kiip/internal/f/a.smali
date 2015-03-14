.class public final enum Lme/kiip/internal/f/a;
.super Ljava/lang/Enum;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kiip/internal/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lme/kiip/internal/f/a;

.field public static final enum b:Lme/kiip/internal/f/a;

.field public static final enum c:Lme/kiip/internal/f/a;

.field public static final enum d:Lme/kiip/internal/f/a;

.field public static final enum e:Lme/kiip/internal/f/a;

.field public static final enum f:Lme/kiip/internal/f/a;

.field public static final enum g:Lme/kiip/internal/f/a;

.field public static final enum h:Lme/kiip/internal/f/a;

.field public static final enum i:Lme/kiip/internal/f/a;

.field public static final enum j:Lme/kiip/internal/f/a;

.field public static final enum k:Lme/kiip/internal/f/a;

.field public static final enum l:Lme/kiip/internal/f/a;

.field public static final enum m:Lme/kiip/internal/f/a;

.field public static final enum n:Lme/kiip/internal/f/a;

.field private static final synthetic r:[Lme/kiip/internal/f/a;


# instance fields
.field public final o:I

.field public final p:I

.field public final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 5
    new-instance v0, Lme/kiip/internal/f/a;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lme/kiip/internal/f/a;->a:Lme/kiip/internal/f/a;

    .line 7
    new-instance v5, Lme/kiip/internal/f/a;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;

    .line 10
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->c:Lme/kiip/internal/f/a;

    .line 13
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->d:Lme/kiip/internal/f/a;

    .line 16
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->e:Lme/kiip/internal/f/a;

    .line 19
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->f:Lme/kiip/internal/f/a;

    .line 21
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->g:Lme/kiip/internal/f/a;

    .line 23
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->h:Lme/kiip/internal/f/a;

    .line 25
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->i:Lme/kiip/internal/f/a;

    .line 27
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->j:Lme/kiip/internal/f/a;

    .line 29
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->k:Lme/kiip/internal/f/a;

    .line 31
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;

    .line 33
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->m:Lme/kiip/internal/f/a;

    .line 35
    new-instance v8, Lme/kiip/internal/f/a;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0xd

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lme/kiip/internal/f/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lme/kiip/internal/f/a;->n:Lme/kiip/internal/f/a;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lme/kiip/internal/f/a;

    sget-object v1, Lme/kiip/internal/f/a;->a:Lme/kiip/internal/f/a;

    aput-object v1, v0, v2

    sget-object v1, Lme/kiip/internal/f/a;->b:Lme/kiip/internal/f/a;

    aput-object v1, v0, v7

    sget-object v1, Lme/kiip/internal/f/a;->c:Lme/kiip/internal/f/a;

    aput-object v1, v0, v14

    sget-object v1, Lme/kiip/internal/f/a;->d:Lme/kiip/internal/f/a;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lme/kiip/internal/f/a;->e:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lme/kiip/internal/f/a;->f:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lme/kiip/internal/f/a;->g:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lme/kiip/internal/f/a;->h:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lme/kiip/internal/f/a;->i:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lme/kiip/internal/f/a;->j:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lme/kiip/internal/f/a;->k:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lme/kiip/internal/f/a;->l:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lme/kiip/internal/f/a;->m:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lme/kiip/internal/f/a;->n:Lme/kiip/internal/f/a;

    aput-object v2, v0, v1

    sput-object v0, Lme/kiip/internal/f/a;->r:[Lme/kiip/internal/f/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lme/kiip/internal/f/a;->o:I

    .line 43
    iput p4, p0, Lme/kiip/internal/f/a;->p:I

    .line 44
    iput p5, p0, Lme/kiip/internal/f/a;->q:I

    .line 45
    return-void
.end method

.method public static a(I)Lme/kiip/internal/f/a;
    .locals 5

    .prologue
    .line 48
    invoke-static {}, Lme/kiip/internal/f/a;->values()[Lme/kiip/internal/f/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 49
    iget v4, v0, Lme/kiip/internal/f/a;->p:I

    if-ne v4, p0, :cond_0

    .line 51
    :goto_1
    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(I)Lme/kiip/internal/f/a;
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lme/kiip/internal/f/a;->values()[Lme/kiip/internal/f/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 56
    iget v4, v0, Lme/kiip/internal/f/a;->o:I

    if-ne v4, p0, :cond_0

    .line 58
    :goto_1
    return-object v0

    .line 55
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(I)Lme/kiip/internal/f/a;
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lme/kiip/internal/f/a;->values()[Lme/kiip/internal/f/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 63
    iget v4, v0, Lme/kiip/internal/f/a;->q:I

    if-ne v4, p0, :cond_0

    .line 65
    :goto_1
    return-object v0

    .line 62
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kiip/internal/f/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lme/kiip/internal/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/f/a;

    return-object v0
.end method

.method public static values()[Lme/kiip/internal/f/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lme/kiip/internal/f/a;->r:[Lme/kiip/internal/f/a;

    invoke-virtual {v0}, [Lme/kiip/internal/f/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/f/a;

    return-object v0
.end method
