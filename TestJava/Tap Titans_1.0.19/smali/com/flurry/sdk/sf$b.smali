.class public final enum Lcom/flurry/sdk/sf$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/sf$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/sf$b;

.field public static final enum b:Lcom/flurry/sdk/sf$b;

.field public static final enum c:Lcom/flurry/sdk/sf$b;

.field public static final enum d:Lcom/flurry/sdk/sf$b;

.field private static final synthetic f:[Lcom/flurry/sdk/sf$b;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/flurry/sdk/sf$b;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/sf$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/sf$b;->a:Lcom/flurry/sdk/sf$b;

    .line 37
    new-instance v0, Lcom/flurry/sdk/sf$b;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/sf$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/sf$b;->b:Lcom/flurry/sdk/sf$b;

    .line 38
    new-instance v0, Lcom/flurry/sdk/sf$b;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lcom/flurry/sdk/sf$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/sf$b;->c:Lcom/flurry/sdk/sf$b;

    .line 39
    new-instance v0, Lcom/flurry/sdk/sf$b;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lcom/flurry/sdk/sf$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/sf$b;->d:Lcom/flurry/sdk/sf$b;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/sf$b;

    sget-object v1, Lcom/flurry/sdk/sf$b;->a:Lcom/flurry/sdk/sf$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/sf$b;->b:Lcom/flurry/sdk/sf$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/sf$b;->c:Lcom/flurry/sdk/sf$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/sf$b;->d:Lcom/flurry/sdk/sf$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/sf$b;->f:[Lcom/flurry/sdk/sf$b;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/sdk/sf$b;->e:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/sf$b;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/flurry/sdk/sf$b;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/sf$b;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/flurry/sdk/sf$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/sf$b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/sf$b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/sdk/sf$b;->f:[Lcom/flurry/sdk/sf$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/sf$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/sf$b;

    return-object v0
.end method