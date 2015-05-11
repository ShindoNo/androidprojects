.class public Lcom/itim/explorer/ui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/itim/explorer/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itim/explorer/util/UIUtil;->loadLanguage(Landroid/content/Context;)V

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 29
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 23
    return-void
.end method
