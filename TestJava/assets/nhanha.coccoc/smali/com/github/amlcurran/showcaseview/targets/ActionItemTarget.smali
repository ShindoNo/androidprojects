.class public Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;
.super Ljava/lang/Object;
.source "ActionItemTarget.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# instance fields
.field mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

.field private final mActivity:Landroid/app/Activity;

.field private final mItemId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mActivity:Landroid/app/Activity;

    .line 22
    iput p2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mItemId:I

    .line 23
    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->setUp()V

    .line 28
    new-instance v0, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mItemId:I

    invoke-virtual {v1, v2}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->getActionItem(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/targets/ViewTarget;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 3

    .prologue
    .line 32
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/github/amlcurran/showcaseview/targets/ReflectorFactory;->getReflectorForActivity(Landroid/app/Activity;)Lcom/github/amlcurran/showcaseview/targets/Reflector;

    move-result-object v1

    .line 33
    .local v1, "reflector":Lcom/github/amlcurran/showcaseview/targets/Reflector;
    invoke-interface {v1}, Lcom/github/amlcurran/showcaseview/targets/Reflector;->getActionBarView()Landroid/view/ViewParent;

    move-result-object v0

    .line 34
    .local v0, "p":Landroid/view/ViewParent;
    new-instance v2, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    invoke-direct {v2, v0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;-><init>(Landroid/view/ViewParent;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionItemTarget;->mActionBarWrapper:Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;

    .line 35
    return-void
.end method
