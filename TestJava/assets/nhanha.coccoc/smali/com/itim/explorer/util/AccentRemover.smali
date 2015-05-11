.class public Lcom/itim/explorer/util/AccentRemover;
.super Ljava/lang/Object;
.source "AccentRemover.java"


# static fields
.field private static REPLACEMENTS:[C

.field private static SPECIAL_CHARACTERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x94

    .line 7
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itim/explorer/util/AccentRemover;->SPECIAL_CHARACTERS:[C

    .line 20
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itim/explorer/util/AccentRemover;->REPLACEMENTS:[C

    return-void

    .line 7
    nop

    :array_0
    .array-data 2
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2cs
        0x3as
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x60s
        0x7cs
        0x7es
        0xc0s
        0xc1s
        0xc2s
        0xc3s
        0xc8s
        0xc9s
        0xcas
        0xccs
        0xcds
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd9s
        0xdas
        0xdds
        0xe0s
        0xe1s
        0xe2s
        0xe3s
        0xe8s
        0xe9s
        0xeas
        0xecs
        0xeds
        0xf2s
        0xf3s
        0xf4s
        0xf5s
        0xf9s
        0xfas
        0xfds
        0x102s
        0x103s
        0x110s
        0x111s
        0x128s
        0x129s
        0x168s
        0x169s
        0x1a0s
        0x1a1s
        0x1afs
        0x1b0s
        0x1ea0s
        0x1ea1s
        0x1ea2s
        0x1ea3s
        0x1ea4s
        0x1ea5s
        0x1ea6s
        0x1ea7s
        0x1ea8s
        0x1ea9s
        0x1eaas
        0x1eabs
        0x1eacs
        0x1eads
        0x1eaes
        0x1eafs
        0x1eb0s
        0x1eb1s
        0x1eb2s
        0x1eb3s
        0x1eb4s
        0x1eb5s
        0x1eb6s
        0x1eb7s
        0x1eb8s
        0x1eb9s
        0x1ebas
        0x1ebbs
        0x1ebcs
        0x1ebds
        0x1ebes
        0x1ebfs
        0x1ec0s
        0x1ec1s
        0x1ec2s
        0x1ec3s
        0x1ec4s
        0x1ec5s
        0x1ec6s
        0x1ec7s
        0x1ec8s
        0x1ec9s
        0x1ecas
        0x1ecbs
        0x1eccs
        0x1ecds
        0x1eces
        0x1ecfs
        0x1ed0s
        0x1ed1s
        0x1ed2s
        0x1ed3s
        0x1ed4s
        0x1ed5s
        0x1ed6s
        0x1ed7s
        0x1ed8s
        0x1ed9s
        0x1edas
        0x1edbs
        0x1edcs
        0x1edds
        0x1edes
        0x1edfs
        0x1ee0s
        0x1ee1s
        0x1ee2s
        0x1ee3s
        0x1ee4s
        0x1ee5s
        0x1ee6s
        0x1ee7s
        0x1ee8s
        0x1ee9s
        0x1eeas
        0x1eebs
        0x1eecs
        0x1eeds
        0x1eees
        0x1eefs
        0x1ef0s
        0x1ef1s
    .end array-data

    .line 20
    :array_1
    .array-data 2
        0x20s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x5fs
        0x0s
        0x5fs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x5fs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x41s
        0x41s
        0x41s
        0x41s
        0x45s
        0x45s
        0x45s
        0x49s
        0x49s
        0x4fs
        0x4fs
        0x4fs
        0x4fs
        0x55s
        0x55s
        0x59s
        0x61s
        0x61s
        0x61s
        0x61s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x75s
        0x75s
        0x79s
        0x41s
        0x61s
        0x44s
        0x64s
        0x49s
        0x69s
        0x55s
        0x75s
        0x4fs
        0x6fs
        0x55s
        0x75s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x49s
        0x69s
        0x49s
        0x69s
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static removeAccent(C)C
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 35
    sget-object v1, Lcom/itim/explorer/util/AccentRemover;->SPECIAL_CHARACTERS:[C

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 36
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 37
    sget-object v1, Lcom/itim/explorer/util/AccentRemover;->REPLACEMENTS:[C

    aget-char p0, v1, v0

    .line 39
    :cond_0
    return p0
.end method

.method public static removeAccent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/itim/explorer/util/AccentRemover;->removeAccent(C)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
