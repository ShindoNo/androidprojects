.class public final enum Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;
.super Ljava/lang/Enum;
.source "MetricConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/constants/metrics/MetricConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricIntegerValueAttributesKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

.field public static final enum BADGE_NUM:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

.field public static final enum NEW_LEVEL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

.field public static final enum PROGRESS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

.field public static final enum XP_EARNED:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->PROGRESS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    const-string v1, "XP_EARNED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->XP_EARNED:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    const-string v1, "BADGE_NUM"

    invoke-direct {v0, v1, v4}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->BADGE_NUM:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    new-instance v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    const-string v1, "NEW_LEVEL"

    invoke-direct {v0, v1, v5}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->NEW_LEVEL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->PROGRESS:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->XP_EARNED:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->BADGE_NUM:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->NEW_LEVEL:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->$VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    return-object v0
.end method

.method public static values()[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->$VALUES:[Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    invoke-virtual {v0}, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/constants/metrics/MetricConstants$MetricIntegerValueAttributesKeys;

    return-object v0
.end method
