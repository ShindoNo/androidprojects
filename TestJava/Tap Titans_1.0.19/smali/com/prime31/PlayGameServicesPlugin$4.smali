.class Lcom/prime31/PlayGameServicesPlugin$4;
.super Ljava/lang/Object;
.source "PlayGameServicesPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/PlayGameServicesPlugin;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/PlayGameServicesPlugin;


# direct methods
.method constructor <init>(Lcom/prime31/PlayGameServicesPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 695
    const/16 v0, 0xf

    .line 698
    .local v0, "clients":I
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # invokes: Lcom/prime31/PlayGameServicesPlugin;->shouldDisableDrive()Z
    invoke-static {v1}, Lcom/prime31/PlayGameServicesPlugin;->access$5(Lcom/prime31/PlayGameServicesPlugin;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    const/4 v0, 0x7

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    new-instance v2, Lcom/prime31/GameHelper;

    iget-object v3, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    invoke-virtual {v3}, Lcom/prime31/PlayGameServicesPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/prime31/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v2, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    .line 702
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1, v4}, Lcom/prime31/GameHelper;->setConnectOnStart(Z)V

    .line 703
    const-string v1, "Prime31"

    const-string v2, "setting connectOnStart to false due to Play SDK bug where silent authentication is not always silent and displays some UI."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "Prime31"

    const-string v2, "note that this will result in Google sending a failed auth at launch time. Why then consider not authenticating a failure is beyond me..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    # getter for: Lcom/prime31/PlayGameServicesPlugin;->_enableDebugLog:Z
    invoke-static {v2}, Lcom/prime31/PlayGameServicesPlugin;->access$6(Lcom/prime31/PlayGameServicesPlugin;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prime31/GameHelper;->enableDebugLog(Z)V

    .line 706
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    invoke-virtual {v1, v4}, Lcom/prime31/GameHelper;->setShowErrorDialogs(Z)V

    .line 707
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/prime31/GameHelper;->setMaxAutoSignInAttempts(I)V

    .line 708
    iget-object v1, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    iget-object v1, v1, Lcom/prime31/PlayGameServicesPlugin;->helper:Lcom/prime31/GameHelper;

    iget-object v2, p0, Lcom/prime31/PlayGameServicesPlugin$4;->this$0:Lcom/prime31/PlayGameServicesPlugin;

    invoke-virtual {v1, v2}, Lcom/prime31/GameHelper;->setup(Lcom/prime31/GameHelper$GameHelperListener;)V

    .line 709
    return-void
.end method
