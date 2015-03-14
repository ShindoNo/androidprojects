.class public Lcom/prime31/GoogleIABProxyActivity;
.super Landroid/app/Activity;
.source "GoogleIABProxyActivity.java"


# static fields
.field private static final RC_REQUEST:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "Prime31-Proxy"


# instance fields
.field private _created:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    .line 9
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "Prime31-Proxy"

    const-string v1, "FATAL ERROR: Plugin singleton helper is null in onActivityResult. Attempting to abort operation to avoid a crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prime31/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    :goto_1
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "Prime31-Proxy"

    const-string v1, "onActivityResult handled by IABUtil. All done here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x2711

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "Prime31"

    const-string v1, "activity created twice. stopping one instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sku"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "sku":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "itemType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "developerPayload":Ljava/lang/String;
    const-string v0, "Prime31-Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "proxy received action. sku: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const/16 v4, 0x2711

    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    move-result v8

    .line 37
    .local v8, "res":Z
    if-nez v8, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "itemType":Ljava/lang/String;
    .end local v6    # "developerPayload":Ljava/lang/String;
    .end local v8    # "res":Z
    :catch_0
    move-exception v7

    .line 43
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Prime31-Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unhandled exception while attempting to purchase item: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "Prime31-Proxy"

    const-string v1, "going to end the async operation with null data to clear out the queue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-nez v0, :cond_2

    .line 47
    const-string v0, "Prime31-Proxy"

    const-string v1, "FATAL ERROR: Plugin singleton helper is null. Aborting operation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    goto/16 :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v9, v1, v4}, Lcom/prime31/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    goto :goto_1
.end method
