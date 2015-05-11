.class Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;
.super Ljava/lang/Object;
.source "SherlockReflector.java"

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
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->getHomeButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 7

    .prologue
    .line 25
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    const v4, 0x102002c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "homeButton":Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 36
    .end local v0    # "homeButton":Landroid/view/View;
    .local v1, "homeButton":Landroid/view/View;
    :goto_0
    return-object v1

    .line 29
    .end local v1    # "homeButton":Landroid/view/View;
    .restart local v0    # "homeButton":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "abs__home"

    const-string v5, "id"

    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 30
    .local v2, "homeId":I
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/targets/SherlockReflector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "insertShowcaseViewWithType cannot be used when the theme has no ActionBar"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v1, v0

    .line 36
    .end local v0    # "homeButton":Landroid/view/View;
    .restart local v1    # "homeButton":Landroid/view/View;
    goto :goto_0
.end method

.method public showcaseActionItem(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 42
    return-void
.end method
