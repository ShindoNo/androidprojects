.class public Lcom/github/amlcurran/showcaseview/targets/PointTarget;
.super Ljava/lang/Object;
.source "PointTarget.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# instance fields
.field private final mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "xValue"    # I
    .param p2, "yValue"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/PointTarget;->mPoint:Landroid/graphics/Point;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/PointTarget;->mPoint:Landroid/graphics/Point;

    .line 14
    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/PointTarget;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method
