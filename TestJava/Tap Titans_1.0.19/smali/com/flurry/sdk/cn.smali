.class public final enum Lcom/flurry/sdk/cn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/cn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cn;

.field public static final enum b:Lcom/flurry/sdk/cn;

.field public static final enum c:Lcom/flurry/sdk/cn;

.field private static final synthetic e:[Lcom/flurry/sdk/cn;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/cn;

    const-string v1, "Unknown"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/cn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/cn;->a:Lcom/flurry/sdk/cn;

    new-instance v0, Lcom/flurry/sdk/cn;

    const-string v1, "Streaming"

    const-string v2, "streaming"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/cn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/cn;->b:Lcom/flurry/sdk/cn;

    new-instance v0, Lcom/flurry/sdk/cn;

    const-string v1, "Progressive"

    const-string v2, "progressive"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/cn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/cn;->c:Lcom/flurry/sdk/cn;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/cn;

    sget-object v1, Lcom/flurry/sdk/cn;->a:Lcom/flurry/sdk/cn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cn;->b:Lcom/flurry/sdk/cn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/cn;->c:Lcom/flurry/sdk/cn;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/cn;->e:[Lcom/flurry/sdk/cn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/cn;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/sdk/cn;->b:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/flurry/sdk/cn;->b:Lcom/flurry/sdk/cn;

    .line 25
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lcom/flurry/sdk/cn;->c:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/flurry/sdk/cn;->c:Lcom/flurry/sdk/cn;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/flurry/sdk/cn;->a:Lcom/flurry/sdk/cn;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cn;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/cn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/cn;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/cn;->e:[Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cn;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/sdk/cn;->d:Ljava/lang/String;

    return-object v0
.end method
