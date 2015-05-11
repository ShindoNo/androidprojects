.class public final enum Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;
.super Ljava/lang/Enum;
.source "ActionViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

.field public static final enum HOME:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

.field public static final enum OVERFLOW:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

.field public static final enum SPINNER:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

.field public static final enum TITLE:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    const-string v1, "SPINNER"

    invoke-direct {v0, v1, v2}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->SPINNER:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->HOME:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v4}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->TITLE:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    const-string v1, "OVERFLOW"

    invoke-direct {v0, v1, v5}, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->OVERFLOW:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->SPINNER:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->HOME:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->TITLE:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->OVERFLOW:Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->$VALUES:[Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    return-object v0
.end method

.method public static values()[Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->$VALUES:[Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    invoke-virtual {v0}, [Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/amlcurran/showcaseview/targets/ActionViewTarget$Type;

    return-object v0
.end method
