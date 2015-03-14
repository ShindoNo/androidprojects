.class public final enum Lcom/flurry/sdk/ap$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ap$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ap$a;

.field public static final enum b:Lcom/flurry/sdk/ap$a;

.field public static final enum c:Lcom/flurry/sdk/ap$a;

.field public static final enum d:Lcom/flurry/sdk/ap$a;

.field public static final enum e:Lcom/flurry/sdk/ap$a;

.field public static final enum f:Lcom/flurry/sdk/ap$a;

.field private static final synthetic h:[Lcom/flurry/sdk/ap$a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    .line 77
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->b:Lcom/flurry/sdk/ap$a;

    .line 78
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "INCOMPLETE"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->c:Lcom/flurry/sdk/ap$a;

    .line 79
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    .line 80
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "EVICTED"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    .line 81
    new-instance v0, Lcom/flurry/sdk/ap$a;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ap$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/ap$a;

    sget-object v1, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ap$a;->b:Lcom/flurry/sdk/ap$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ap$a;->c:Lcom/flurry/sdk/ap$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ap$a;->h:[Lcom/flurry/sdk/ap$a;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/flurry/sdk/ap$a;->g:I

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ap$a;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/flurry/sdk/ap$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ap$a;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/flurry/sdk/ap$a;->h:[Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ap$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ap$a;

    return-object v0
.end method
