.class public Lcom/github/amlcurran/showcaseview/targets/ViewTarget;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->mView:Landroid/view/View;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->mView:Landroid/view/View;

    .line 16
    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 24
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 25
    .local v0, "location":[I
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 26
    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 27
    .local v1, "x":I
    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 28
    .local v2, "y":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method
