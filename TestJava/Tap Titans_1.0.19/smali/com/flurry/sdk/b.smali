.class public final enum Lcom/flurry/sdk/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/b;

.field public static final enum b:Lcom/flurry/sdk/b;

.field public static final enum c:Lcom/flurry/sdk/b;

.field public static final enum d:Lcom/flurry/sdk/b;

.field public static final enum e:Lcom/flurry/sdk/b;

.field public static final enum f:Lcom/flurry/sdk/b;

.field public static final enum g:Lcom/flurry/sdk/b;

.field public static final enum h:Lcom/flurry/sdk/b;

.field public static final enum i:Lcom/flurry/sdk/b;

.field public static final enum j:Lcom/flurry/sdk/b;

.field public static final enum k:Lcom/flurry/sdk/b;

.field public static final enum l:Lcom/flurry/sdk/b;

.field public static final enum m:Lcom/flurry/sdk/b;

.field public static final enum n:Lcom/flurry/sdk/b;

.field public static final enum o:Lcom/flurry/sdk/b;

.field public static final enum p:Lcom/flurry/sdk/b;

.field public static final enum q:Lcom/flurry/sdk/b;

.field public static final enum r:Lcom/flurry/sdk/b;

.field private static final synthetic t:[Lcom/flurry/sdk/b;


# instance fields
.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/b;

    .line 8
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kSuccess"

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->b:Lcom/flurry/sdk/b;

    .line 9
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kNoNetworkConnectivity"

    invoke-direct {v0, v1, v6, v5}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->c:Lcom/flurry/sdk/b;

    .line 10
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kMissingAdUnit"

    invoke-direct {v0, v1, v7, v6}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/b;

    .line 11
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kNoContext"

    invoke-direct {v0, v1, v8, v7}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/b;

    .line 12
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kInvalidAdUnit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->f:Lcom/flurry/sdk/b;

    .line 13
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kInvalidVASTAd"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->g:Lcom/flurry/sdk/b;

    .line 14
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrecachingDownloadFailed"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->h:Lcom/flurry/sdk/b;

    .line 15
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrecachingCopyFailed"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->i:Lcom/flurry/sdk/b;

    .line 16
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrecachingMissingAssets"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->j:Lcom/flurry/sdk/b;

    .line 17
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrerenderDownloadFailed"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->k:Lcom/flurry/sdk/b;

    .line 18
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kAdRequestTimeout"

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->l:Lcom/flurry/sdk/b;

    .line 19
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kVASTResolveTimeout"

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->m:Lcom/flurry/sdk/b;

    .line 20
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kCSRTBAuctionTimeout"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->n:Lcom/flurry/sdk/b;

    .line 21
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrerenderDownloadTimeout"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->o:Lcom/flurry/sdk/b;

    .line 22
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kPrepareFailed"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->p:Lcom/flurry/sdk/b;

    .line 23
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kAdDisplayError"

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->q:Lcom/flurry/sdk/b;

    .line 24
    new-instance v0, Lcom/flurry/sdk/b;

    const-string v1, "kVideoPlaybackError"

    const/16 v2, 0x11

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/b;->r:Lcom/flurry/sdk/b;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/flurry/sdk/b;

    sget-object v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/b;->b:Lcom/flurry/sdk/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/b;->c:Lcom/flurry/sdk/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/b;->f:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/b;->g:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/b;->h:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/b;->i:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/b;->j:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/sdk/b;->k:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/sdk/b;->l:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/sdk/b;->m:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/sdk/b;->n:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/sdk/b;->o:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/flurry/sdk/b;->p:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/flurry/sdk/b;->q:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/flurry/sdk/b;->r:Lcom/flurry/sdk/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/b;->t:[Lcom/flurry/sdk/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/flurry/sdk/b;->s:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/b;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/b;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/b;->t:[Lcom/flurry/sdk/b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/flurry/sdk/b;->s:I

    return v0
.end method
