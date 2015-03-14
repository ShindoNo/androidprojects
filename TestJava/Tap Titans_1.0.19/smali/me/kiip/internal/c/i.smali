.class public final enum Lme/kiip/internal/c/i;
.super Ljava/lang/Enum;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kiip/internal/c/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lme/kiip/internal/c/i;

.field public static final enum b:Lme/kiip/internal/c/i;

.field public static final enum c:Lme/kiip/internal/c/i;

.field private static final synthetic d:[Lme/kiip/internal/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lme/kiip/internal/c/i;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lme/kiip/internal/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/c/i;->a:Lme/kiip/internal/c/i;

    .line 29
    new-instance v0, Lme/kiip/internal/c/i;

    const-string v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Lme/kiip/internal/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    .line 32
    new-instance v0, Lme/kiip/internal/c/i;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lme/kiip/internal/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lme/kiip/internal/c/i;

    sget-object v1, Lme/kiip/internal/c/i;->a:Lme/kiip/internal/c/i;

    aput-object v1, v0, v2

    sget-object v1, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    aput-object v1, v0, v3

    sget-object v1, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    aput-object v1, v0, v4

    sput-object v0, Lme/kiip/internal/c/i;->d:[Lme/kiip/internal/c/i;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kiip/internal/c/i;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lme/kiip/internal/c/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/c/i;

    return-object v0
.end method

.method public static values()[Lme/kiip/internal/c/i;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lme/kiip/internal/c/i;->d:[Lme/kiip/internal/c/i;

    invoke-virtual {v0}, [Lme/kiip/internal/c/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/c/i;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lme/kiip/internal/c/i;->b:Lme/kiip/internal/c/i;

    if-eq p0, v0, :cond_0

    sget-object v0, Lme/kiip/internal/c/i;->c:Lme/kiip/internal/c/i;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
