.class public final enum Lcom/itim/explorer/interfaces/ILoadDirection$Status;
.super Ljava/lang/Enum;
.source "ILoadDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/interfaces/ILoadDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itim/explorer/interfaces/ILoadDirection$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum INVALID_REQUEST:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum MAX_WAYPOINTS_EXCEEDED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum NETWORK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum NOT_FOUND:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum OK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum OVER_QUERY_LIMIT:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum REQUEST_DENIED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum UNKNOWN:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum UNKNOWN_ERROR:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

.field public static final enum ZERO_RESULTS:Lcom/itim/explorer/interfaces/ILoadDirection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 10
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NOT_FOUND:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 11
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "ZERO_RESULTS"

    invoke-direct {v0, v1, v5}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->ZERO_RESULTS:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 12
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "MAX_WAYPOINTS_EXCEEDED"

    invoke-direct {v0, v1, v6}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->MAX_WAYPOINTS_EXCEEDED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 13
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v7}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->INVALID_REQUEST:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 14
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "OVER_QUERY_LIMIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OVER_QUERY_LIMIT:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 15
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "REQUEST_DENIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->REQUEST_DENIED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 16
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN_ERROR:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 17
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NETWORK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 18
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "PARSE_DATA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 19
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadDirection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NOT_FOUND:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->ZERO_RESULTS:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->MAX_WAYPOINTS_EXCEEDED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->INVALID_REQUEST:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->OVER_QUERY_LIMIT:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->REQUEST_DENIED:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN_ERROR:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->NETWORK:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->$VALUES:[Lcom/itim/explorer/interfaces/ILoadDirection$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    return-object v0
.end method

.method public static values()[Lcom/itim/explorer/interfaces/ILoadDirection$Status;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/itim/explorer/interfaces/ILoadDirection$Status;->$VALUES:[Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    invoke-virtual {v0}, [Lcom/itim/explorer/interfaces/ILoadDirection$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itim/explorer/interfaces/ILoadDirection$Status;

    return-object v0
.end method
