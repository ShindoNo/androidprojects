.class public final enum Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;
.super Ljava/lang/Enum;
.source "ILoadUsersPOI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/interfaces/ILoadUsersPOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

.field public static final enum NETWORK:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

.field public static final enum PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

.field public static final enum UNKNOWN:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    new-instance v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    const-string v1, "PARSE_DATA"

    invoke-direct {v0, v1, v3}, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    new-instance v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->NETWORK:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->PARSE_DATA:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->UNKNOWN:Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->$VALUES:[Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    return-object v0
.end method

.method public static values()[Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->$VALUES:[Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    invoke-virtual {v0}, [Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itim/explorer/interfaces/ILoadUsersPOI$Error;

    return-object v0
.end method