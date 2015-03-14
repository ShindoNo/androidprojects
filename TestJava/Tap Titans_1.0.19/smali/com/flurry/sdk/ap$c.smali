.class public final enum Lcom/flurry/sdk/ap$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ap$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ap$c;

.field public static final enum b:Lcom/flurry/sdk/ap$c;

.field public static final enum c:Lcom/flurry/sdk/ap$c;

.field private static final synthetic e:[Lcom/flurry/sdk/ap$c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/flurry/sdk/ap$c;

    const-string v1, "STREAM_ONLY"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/ap$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    .line 49
    new-instance v0, Lcom/flurry/sdk/ap$c;

    const-string v1, "CACHE_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/ap$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    .line 50
    new-instance v0, Lcom/flurry/sdk/ap$c;

    const-string v1, "CACHE_OR_STREAM"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ap$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ap$c;->c:Lcom/flurry/sdk/ap$c;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/ap$c;

    sget-object v1, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ap$c;->c:Lcom/flurry/sdk/ap$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/ap$c;->e:[Lcom/flurry/sdk/ap$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/flurry/sdk/ap$c;->d:I

    .line 56
    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ap$c;
    .locals 1

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/ap$c;->c:Lcom/flurry/sdk/ap$c;

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ap$c;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/flurry/sdk/ap$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap$c;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ap$c;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/flurry/sdk/ap$c;->e:[Lcom/flurry/sdk/ap$c;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ap$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ap$c;

    return-object v0
.end method
