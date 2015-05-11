.class Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;
.super Ljava/lang/Object;
.source "ActionBarReflector.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Reflector;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->getHomeButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarReflector;->mActivity:Landroid/app/Activity;

    const v2, 0x102002c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "homeButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "insertShowcaseViewWithType cannot be used when the theme has no ActionBar"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return-object v0
.end method

.method public showcaseActionItem(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 37
    return-void
.end method
