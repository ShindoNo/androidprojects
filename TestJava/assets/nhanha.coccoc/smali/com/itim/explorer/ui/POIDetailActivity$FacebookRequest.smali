.class final enum Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
.super Ljava/lang/Enum;
.source "POIDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itim/explorer/ui/POIDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FacebookRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

.field public static final enum None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

.field public static final enum ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

.field public static final enum ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    new-instance v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    const-string v1, "ToReview"

    invoke-direct {v0, v1, v3}, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    new-instance v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    const-string v1, "ToPostStory"

    invoke-direct {v0, v1, v4}, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->None:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToReview:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->ToPostStory:Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->$VALUES:[Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    return-object v0
.end method

.method public static values()[Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->$VALUES:[Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    invoke-virtual {v0}, [Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itim/explorer/ui/POIDetailActivity$FacebookRequest;

    return-object v0
.end method
