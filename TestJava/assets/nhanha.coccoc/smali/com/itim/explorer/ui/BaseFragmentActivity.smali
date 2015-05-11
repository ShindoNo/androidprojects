.class public Lcom/itim/explorer/ui/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/itim/explorer/ui/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/UIUtil;->loadLanguage(Landroid/content/Context;)V

    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 28
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 22
    return-void
.end method
