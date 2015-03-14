.class public final enum Lcom/flurry/sdk/cm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/cm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cm;

.field public static final enum b:Lcom/flurry/sdk/cm;

.field public static final enum c:Lcom/flurry/sdk/cm;

.field public static final enum d:Lcom/flurry/sdk/cm;

.field private static final synthetic f:[Lcom/flurry/sdk/cm;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/cm;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/cm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cm;->a:Lcom/flurry/sdk/cm;

    new-instance v0, Lcom/flurry/sdk/cm;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/cm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cm;->b:Lcom/flurry/sdk/cm;

    new-instance v0, Lcom/flurry/sdk/cm;

    const-string v1, "NonLinearAds"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/cm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cm;->c:Lcom/flurry/sdk/cm;

    new-instance v0, Lcom/flurry/sdk/cm;

    const-string v1, "CompanionAds"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/cm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/cm;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/cm;

    sget-object v1, Lcom/flurry/sdk/cm;->a:Lcom/flurry/sdk/cm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/cm;->b:Lcom/flurry/sdk/cm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cm;->c:Lcom/flurry/sdk/cm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/cm;->d:Lcom/flurry/sdk/cm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/cm;->f:[Lcom/flurry/sdk/cm;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/sdk/cm;->e:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cm;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/cm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cm;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/cm;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/cm;->f:[Lcom/flurry/sdk/cm;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cm;

    return-object v0
.end method
