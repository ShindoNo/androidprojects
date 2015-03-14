.class public final enum Lcom/flurry/sdk/cl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/cl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cl;

.field public static final enum b:Lcom/flurry/sdk/cl;

.field public static final enum c:Lcom/flurry/sdk/cl;

.field private static final synthetic e:[Lcom/flurry/sdk/cl;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/cl;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cl;->a:Lcom/flurry/sdk/cl;

    new-instance v0, Lcom/flurry/sdk/cl;

    const-string v1, "InLine"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    new-instance v0, Lcom/flurry/sdk/cl;

    const-string v1, "Wrapper"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/cl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/cl;->c:Lcom/flurry/sdk/cl;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/cl;

    sget-object v1, Lcom/flurry/sdk/cl;->a:Lcom/flurry/sdk/cl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/cl;->b:Lcom/flurry/sdk/cl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cl;->c:Lcom/flurry/sdk/cl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/cl;->e:[Lcom/flurry/sdk/cl;

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
    iput p3, p0, Lcom/flurry/sdk/cl;->d:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cl;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/cl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cl;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/cl;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/cl;->e:[Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cl;

    return-object v0
.end method
