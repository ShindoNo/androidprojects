.class final enum Lcom/flurry/sdk/t$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/t$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/t$b;

.field public static final enum b:Lcom/flurry/sdk/t$b;

.field public static final enum c:Lcom/flurry/sdk/t$b;

.field public static final enum d:Lcom/flurry/sdk/t$b;

.field private static final synthetic e:[Lcom/flurry/sdk/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/flurry/sdk/t$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    .line 83
    new-instance v0, Lcom/flurry/sdk/t$b;

    const-string v1, "BUILD_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/t$b;->b:Lcom/flurry/sdk/t$b;

    .line 84
    new-instance v0, Lcom/flurry/sdk/t$b;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/t$b;->c:Lcom/flurry/sdk/t$b;

    .line 85
    new-instance v0, Lcom/flurry/sdk/t$b;

    const-string v1, "PREPROCESS"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/t$b;->d:Lcom/flurry/sdk/t$b;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/t$b;

    sget-object v1, Lcom/flurry/sdk/t$b;->a:Lcom/flurry/sdk/t$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/t$b;->b:Lcom/flurry/sdk/t$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/t$b;->c:Lcom/flurry/sdk/t$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/t$b;->d:Lcom/flurry/sdk/t$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/t$b;->e:[Lcom/flurry/sdk/t$b;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/t$b;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/flurry/sdk/t$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/t$b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/t$b;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/sdk/t$b;->e:[Lcom/flurry/sdk/t$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/t$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/t$b;

    return-object v0
.end method
