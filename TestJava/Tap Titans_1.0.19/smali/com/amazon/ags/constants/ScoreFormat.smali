.class public final enum Lcom/amazon/ags/constants/ScoreFormat;
.super Ljava/lang/Enum;
.source "ScoreFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/constants/ScoreFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/constants/ScoreFormat;

.field public static final enum DURATION:Lcom/amazon/ags/constants/ScoreFormat;

.field public static final enum NUMERIC:Lcom/amazon/ags/constants/ScoreFormat;

.field public static final enum UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/amazon/ags/constants/ScoreFormat;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/ScoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/ScoreFormat;->NUMERIC:Lcom/amazon/ags/constants/ScoreFormat;

    new-instance v0, Lcom/amazon/ags/constants/ScoreFormat;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v3}, Lcom/amazon/ags/constants/ScoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/ScoreFormat;->DURATION:Lcom/amazon/ags/constants/ScoreFormat;

    new-instance v0, Lcom/amazon/ags/constants/ScoreFormat;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/amazon/ags/constants/ScoreFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/ags/constants/ScoreFormat;

    sget-object v1, Lcom/amazon/ags/constants/ScoreFormat;->NUMERIC:Lcom/amazon/ags/constants/ScoreFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/ags/constants/ScoreFormat;->DURATION:Lcom/amazon/ags/constants/ScoreFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/ags/constants/ScoreFormat;->$VALUES:[Lcom/amazon/ags/constants/ScoreFormat;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/amazon/ags/constants/ScoreFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/constants/ScoreFormat;

    return-object v0
.end method

.method public static values()[Lcom/amazon/ags/constants/ScoreFormat;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/amazon/ags/constants/ScoreFormat;->$VALUES:[Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v0}, [Lcom/amazon/ags/constants/ScoreFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/constants/ScoreFormat;

    return-object v0
.end method
