.class public final enum Lcom/flurry/sdk/gn$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/gn$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/gn$i;

.field public static final enum b:Lcom/flurry/sdk/gn$i;

.field public static final enum c:Lcom/flurry/sdk/gn$i;

.field public static final enum d:Lcom/flurry/sdk/gn$i;

.field public static final enum e:Lcom/flurry/sdk/gn$i;

.field public static final enum f:Lcom/flurry/sdk/gn$i;

.field public static final enum g:Lcom/flurry/sdk/gn$i;

.field private static final synthetic h:[Lcom/flurry/sdk/gn$i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "TERMINAL"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    .line 41
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->b:Lcom/flurry/sdk/gn$i;

    .line 43
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "SEQUENCE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->c:Lcom/flurry/sdk/gn$i;

    .line 45
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "REPEATER"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->d:Lcom/flurry/sdk/gn$i;

    .line 47
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "ALTERNATIVE"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->e:Lcom/flurry/sdk/gn$i;

    .line 49
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "IMPLICIT_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    .line 51
    new-instance v0, Lcom/flurry/sdk/gn$i;

    const-string v1, "EXPLICIT_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gn$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gn$i;->g:Lcom/flurry/sdk/gn$i;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/sdk/gn$i;

    sget-object v1, Lcom/flurry/sdk/gn$i;->a:Lcom/flurry/sdk/gn$i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/gn$i;->b:Lcom/flurry/sdk/gn$i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/gn$i;->c:Lcom/flurry/sdk/gn$i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/gn$i;->d:Lcom/flurry/sdk/gn$i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/gn$i;->e:Lcom/flurry/sdk/gn$i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/gn$i;->f:Lcom/flurry/sdk/gn$i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/gn$i;->g:Lcom/flurry/sdk/gn$i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/gn$i;->h:[Lcom/flurry/sdk/gn$i;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/gn$i;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/flurry/sdk/gn$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gn$i;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/gn$i;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flurry/sdk/gn$i;->h:[Lcom/flurry/sdk/gn$i;

    invoke-virtual {v0}, [Lcom/flurry/sdk/gn$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/gn$i;

    return-object v0
.end method
