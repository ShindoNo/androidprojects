.class final enum Lcom/flurry/sdk/u$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/u$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/u$b;

.field public static final enum b:Lcom/flurry/sdk/u$b;

.field public static final enum c:Lcom/flurry/sdk/u$b;

.field public static final enum d:Lcom/flurry/sdk/u$b;

.field public static final enum e:Lcom/flurry/sdk/u$b;

.field public static final enum f:Lcom/flurry/sdk/u$b;

.field public static final enum g:Lcom/flurry/sdk/u$b;

.field public static final enum h:Lcom/flurry/sdk/u$b;

.field public static final enum i:Lcom/flurry/sdk/u$b;

.field public static final enum j:Lcom/flurry/sdk/u$b;

.field private static final synthetic k:[Lcom/flurry/sdk/u$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    .line 73
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->b:Lcom/flurry/sdk/u$b;

    .line 74
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "CSRTB_AUCTION_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->c:Lcom/flurry/sdk/u$b;

    .line 75
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "CSRTB_AWAIT_AUCTION"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    .line 76
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    .line 77
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "PREPARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->f:Lcom/flurry/sdk/u$b;

    .line 78
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "PRERENDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->g:Lcom/flurry/sdk/u$b;

    .line 79
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "READY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->h:Lcom/flurry/sdk/u$b;

    .line 80
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "PREDISPLAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->i:Lcom/flurry/sdk/u$b;

    .line 81
    new-instance v0, Lcom/flurry/sdk/u$b;

    const-string v1, "DISPLAY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/u$b;->j:Lcom/flurry/sdk/u$b;

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/flurry/sdk/u$b;

    sget-object v1, Lcom/flurry/sdk/u$b;->a:Lcom/flurry/sdk/u$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/u$b;->b:Lcom/flurry/sdk/u$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/u$b;->c:Lcom/flurry/sdk/u$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/u$b;->d:Lcom/flurry/sdk/u$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/u$b;->e:Lcom/flurry/sdk/u$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/u$b;->f:Lcom/flurry/sdk/u$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/u$b;->g:Lcom/flurry/sdk/u$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/u$b;->h:Lcom/flurry/sdk/u$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/u$b;->i:Lcom/flurry/sdk/u$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/u$b;->j:Lcom/flurry/sdk/u$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/u$b;->k:[Lcom/flurry/sdk/u$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/u$b;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/flurry/sdk/u$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/u$b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/u$b;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/flurry/sdk/u$b;->k:[Lcom/flurry/sdk/u$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/u$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/u$b;

    return-object v0
.end method
