.class public final enum Lcom/flurry/sdk/n$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/n$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/n$e;

.field public static final enum b:Lcom/flurry/sdk/n$e;

.field public static final enum c:Lcom/flurry/sdk/n$e;

.field private static final synthetic d:[Lcom/flurry/sdk/n$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/flurry/sdk/n$e;

    const-string v1, "WEB_RESULT_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/n$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/n$e;->a:Lcom/flurry/sdk/n$e;

    .line 36
    new-instance v0, Lcom/flurry/sdk/n$e;

    const-string v1, "WEB_RESULT_BACK"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/n$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/n$e;->b:Lcom/flurry/sdk/n$e;

    .line 37
    new-instance v0, Lcom/flurry/sdk/n$e;

    const-string v1, "WEB_RESULT_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/n$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/n$e;->c:Lcom/flurry/sdk/n$e;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/n$e;

    sget-object v1, Lcom/flurry/sdk/n$e;->a:Lcom/flurry/sdk/n$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/n$e;->b:Lcom/flurry/sdk/n$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/n$e;->c:Lcom/flurry/sdk/n$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/n$e;->d:[Lcom/flurry/sdk/n$e;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/n$e;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/n$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/n$e;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/n$e;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/flurry/sdk/n$e;->d:[Lcom/flurry/sdk/n$e;

    invoke-virtual {v0}, [Lcom/flurry/sdk/n$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/n$e;

    return-object v0
.end method
