.class public final enum Lme/kiip/internal/a/l$a;
.super Ljava/lang/Enum;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/kiip/internal/a/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lme/kiip/internal/a/l$a;

.field public static final enum b:Lme/kiip/internal/a/l$a;

.field public static final enum c:Lme/kiip/internal/a/l$a;

.field public static final enum d:Lme/kiip/internal/a/l$a;

.field private static final synthetic e:[Lme/kiip/internal/a/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-instance v0, Lme/kiip/internal/a/l$a;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lme/kiip/internal/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/a/l$a;->a:Lme/kiip/internal/a/l$a;

    .line 506
    new-instance v0, Lme/kiip/internal/a/l$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lme/kiip/internal/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/a/l$a;->b:Lme/kiip/internal/a/l$a;

    .line 507
    new-instance v0, Lme/kiip/internal/a/l$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lme/kiip/internal/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/a/l$a;->c:Lme/kiip/internal/a/l$a;

    .line 508
    new-instance v0, Lme/kiip/internal/a/l$a;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lme/kiip/internal/a/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/kiip/internal/a/l$a;->d:Lme/kiip/internal/a/l$a;

    .line 504
    const/4 v0, 0x4

    new-array v0, v0, [Lme/kiip/internal/a/l$a;

    sget-object v1, Lme/kiip/internal/a/l$a;->a:Lme/kiip/internal/a/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lme/kiip/internal/a/l$a;->b:Lme/kiip/internal/a/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lme/kiip/internal/a/l$a;->c:Lme/kiip/internal/a/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lme/kiip/internal/a/l$a;->d:Lme/kiip/internal/a/l$a;

    aput-object v1, v0, v5

    sput-object v0, Lme/kiip/internal/a/l$a;->e:[Lme/kiip/internal/a/l$a;

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
    .line 504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/kiip/internal/a/l$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 504
    const-class v0, Lme/kiip/internal/a/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/kiip/internal/a/l$a;

    return-object v0
.end method

.method public static values()[Lme/kiip/internal/a/l$a;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lme/kiip/internal/a/l$a;->e:[Lme/kiip/internal/a/l$a;

    invoke-virtual {v0}, [Lme/kiip/internal/a/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kiip/internal/a/l$a;

    return-object v0
.end method
