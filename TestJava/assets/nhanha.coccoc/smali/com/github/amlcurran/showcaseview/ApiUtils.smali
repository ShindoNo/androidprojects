.class public Lcom/github/amlcurran/showcaseview/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompatWith(I)Z
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompatWithHoneycomb()Z
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ApiUtils;->isCompatWith(I)Z

    move-result v0

    return v0
.end method

.method public setFitsSystemWindowsCompat(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 19
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ApiUtils;->isCompatWith(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 22
    :cond_0
    return-void
.end method
