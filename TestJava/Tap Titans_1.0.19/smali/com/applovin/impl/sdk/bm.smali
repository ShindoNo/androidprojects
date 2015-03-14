.class final enum Lcom/applovin/impl/sdk/bm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/bm;

.field public static final enum b:Lcom/applovin/impl/sdk/bm;

.field private static final synthetic c:[Lcom/applovin/impl/sdk/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/bm;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/bm;->a:Lcom/applovin/impl/sdk/bm;

    new-instance v0, Lcom/applovin/impl/sdk/bm;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/bm;->b:Lcom/applovin/impl/sdk/bm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/impl/sdk/bm;

    sget-object v1, Lcom/applovin/impl/sdk/bm;->a:Lcom/applovin/impl/sdk/bm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/bm;->b:Lcom/applovin/impl/sdk/bm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applovin/impl/sdk/bm;->c:[Lcom/applovin/impl/sdk/bm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
