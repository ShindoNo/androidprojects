.class public Lcom/gamehivecorp/ghplugin/ImmersivePlayerNativeActivity;
.super Lcom/prime31/UnityPlayerNativeActivity;
.source "ImmersivePlayerNativeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/prime31/UnityPlayerNativeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/prime31/UnityPlayerNativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 33
    const-string v1, "Unity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changing configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/ImmersivePlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 39
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 40
    const/16 v2, 0x1706

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0}, Lcom/prime31/UnityPlayerNativeActivity;->onResume()V

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/gamehivecorp/ghplugin/ImmersivePlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 18
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 19
    const/16 v2, 0x1706

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 27
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
