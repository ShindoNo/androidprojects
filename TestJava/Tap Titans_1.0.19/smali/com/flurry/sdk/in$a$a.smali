.class public final enum Lcom/flurry/sdk/in$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/in$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/in$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/in$a$a;

.field public static final enum b:Lcom/flurry/sdk/in$a$a;

.field private static final synthetic c:[Lcom/flurry/sdk/in$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/flurry/sdk/in$a$a;

    const-string v1, "MANAGED_REFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/in$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/in$a$a;->a:Lcom/flurry/sdk/in$a$a;

    .line 59
    new-instance v0, Lcom/flurry/sdk/in$a$a;

    const-string v1, "BACK_REFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/in$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/in$a$a;->b:Lcom/flurry/sdk/in$a$a;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/in$a$a;

    sget-object v1, Lcom/flurry/sdk/in$a$a;->a:Lcom/flurry/sdk/in$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/in$a$a;->b:Lcom/flurry/sdk/in$a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/in$a$a;->c:[Lcom/flurry/sdk/in$a$a;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/in$a$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/flurry/sdk/in$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/in$a$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/in$a$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/sdk/in$a$a;->c:[Lcom/flurry/sdk/in$a$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/in$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/in$a$a;

    return-object v0
.end method
