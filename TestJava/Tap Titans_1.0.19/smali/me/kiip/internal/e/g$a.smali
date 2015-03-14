.class final enum Lme/kiip/internal/e/g$a;
.super Ljava/lang/Enum;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kiip/internal/e/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lme/kiip/internal/e/g$a;

.field public static final enum b:Lme/kiip/internal/e/g$a;

.field public static final enum c:Lme/kiip/internal/e/g$a;

.field private static final synthetic d:[Lme/kiip/internal/e/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    new-instance v0, Lme/kiip/internal/e/g$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lme/kiip/internal/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    .line 402
    new-instance v0, Lme/kiip/internal/e/g$a;

    const-string v1, "SAME_CONNECTION"

    invoke-direct {v0, v1, v3}, Lme/kiip/internal/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/e/g$a;->b:Lme/kiip/internal/e/g$a;

    .line 403
    new-instance v0, Lme/kiip/internal/e/g$a;

    const-string v1, "DIFFERENT_CONNECTION"

    invoke-direct {v0, v1, v4}, Lme/kiip/internal/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/e/g$a;->c:Lme/kiip/internal/e/g$a;

    .line 400
    const/4 v0, 0x3

    new-array v0, v0, [Lme/kiip/internal/e/g$a;

    sget-object v1, Lme/kiip/internal/e/g$a;->a:Lme/kiip/internal/e/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lme/kiip/internal/e/g$a;->b:Lme/kiip/internal/e/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lme/kiip/internal/e/g$a;->c:Lme/kiip/internal/e/g$a;

    aput-object v1, v0, v4

    sput-object v0, Lme/kiip/internal/e/g$a;->d:[Lme/kiip/internal/e/g$a;

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
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kiip/internal/e/g$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    const-class v0, Lme/kiip/internal/e/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/e/g$a;

    return-object v0
.end method

.method public static values()[Lme/kiip/internal/e/g$a;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lme/kiip/internal/e/g$a;->d:[Lme/kiip/internal/e/g$a;

    invoke-virtual {v0}, [Lme/kiip/internal/e/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/e/g$a;

    return-object v0
.end method
