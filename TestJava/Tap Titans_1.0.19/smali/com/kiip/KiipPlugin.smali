.class public Lcom/kiip/KiipPlugin;
.super Ljava/lang/Object;
.source "KiipPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lme/kiip/sdk/Kiip$Callback;
.implements Lme/kiip/sdk/Kiip$OnContentListener;
.implements Lme/kiip/sdk/Modal$OnDismissListener;
.implements Lme/kiip/sdk/Modal$OnShowListener;
.implements Lme/kiip/sdk/Modal$VideoListener;
.implements Lme/kiip/sdk/Notification$OnClickListener;
.implements Lme/kiip/sdk/Notification$OnDismissListener;
.implements Lme/kiip/sdk/Notification$OnShowListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KiipPlugin"

.field private static _instance:Lcom/kiip/KiipPlugin;


# instance fields
.field public _activity:Landroid/app/Activity;

.field private _sdkInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kiip/KiipPlugin;->_activity:Landroid/app/Activity;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    .line 23
    return-void
.end method

.method private UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "go"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kiip/KiipPlugin;->_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "KiipPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnitySendMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/kiip/KiipPlugin;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/kiip/KiipPlugin;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    return-void
.end method

.method static synthetic access$2(Lcom/kiip/KiipPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/kiip/KiipPlugin;Lme/kiip/sdk/Poptart;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/kiip/KiipPlugin;->showPoptart(Lme/kiip/sdk/Poptart;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kiip/KiipPlugin;->_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kiip/KiipPlugin;->_activity:Landroid/app/Activity;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public static instance()Lcom/kiip/KiipPlugin;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/kiip/KiipPlugin;->_instance:Lcom/kiip/KiipPlugin;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/kiip/KiipPlugin;

    invoke-direct {v0}, Lcom/kiip/KiipPlugin;-><init>()V

    sput-object v0, Lcom/kiip/KiipPlugin;->_instance:Lcom/kiip/KiipPlugin;

    .line 39
    :cond_0
    sget-object v0, Lcom/kiip/KiipPlugin;->_instance:Lcom/kiip/KiipPlugin;

    return-object v0
.end method

.method private showPoptart(Lme/kiip/sdk/Poptart;)V
    .locals 2
    .param p1, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 66
    const-string v0, "KiipPlugin"

    const-string v1, "null poptart. nothing to show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/kiip/KiipPlugin$1;-><init>(Lcom/kiip/KiipPlugin;Lme/kiip/sdk/Poptart;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public endSession()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$4;

    invoke-direct {v1, p0}, Lcom/kiip/KiipPlugin$4;-><init>(Lcom/kiip/KiipPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kiip/KiipPlugin$2;-><init>(Lcom/kiip/KiipPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public onClick(Lme/kiip/sdk/Notification;)V
    .locals 3
    .param p1, "note"    # Lme/kiip/sdk/Notification;

    .prologue
    .line 263
    const-string v0, "Kiip"

    const-string v1, "onClickNotification"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public onContent(Lme/kiip/sdk/Kiip;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "momentId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "transactionId"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v1, "%s,%d,%s,%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "str":Ljava/lang/String;
    const-string v1, "Kiip"

    const-string v2, "onContent"

    invoke-direct {p0, v1, v2, v0}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 301
    const-string v0, "Kiip"

    const-string v1, "onDismissPoptart"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onDismiss(Lme/kiip/sdk/Modal;)V
    .locals 3
    .param p1, "modal"    # Lme/kiip/sdk/Modal;

    .prologue
    .line 287
    const-string v0, "Kiip"

    const-string v1, "onDismissModal"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onDismiss(Lme/kiip/sdk/Notification;)V
    .locals 3
    .param p1, "note"    # Lme/kiip/sdk/Notification;

    .prologue
    .line 271
    const-string v0, "Kiip"

    const-string v1, "onDismissNotification"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onFailed(Lme/kiip/sdk/Kiip;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 231
    const-string v0, "Kiip"

    const-string v1, "onSaveMomentFailed"

    const-string v2, "Kiip Save Moment Error"

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onFinished(Lme/kiip/sdk/Kiip;Lme/kiip/sdk/Poptart;)V
    .locals 3
    .param p1, "arg0"    # Lme/kiip/sdk/Kiip;
    .param p2, "poptart"    # Lme/kiip/sdk/Poptart;

    .prologue
    .line 238
    const-string v0, "Kiip"

    const-string v1, "onSaveMomentFinished"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p2}, Lcom/kiip/KiipPlugin;->showPoptart(Lme/kiip/sdk/Poptart;)V

    .line 240
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 294
    const-string v0, "Kiip"

    const-string v1, "onShowPoptart"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onShow(Lme/kiip/sdk/Modal;)V
    .locals 3
    .param p1, "modal"    # Lme/kiip/sdk/Modal;

    .prologue
    .line 279
    const-string v0, "Kiip"

    const-string v1, "onShowModal"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onShow(Lme/kiip/sdk/Notification;)V
    .locals 3
    .param p1, "note"    # Lme/kiip/sdk/Notification;

    .prologue
    .line 255
    const-string v0, "Kiip"

    const-string v1, "onShowNotification"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onVideoStopped()V
    .locals 3

    .prologue
    .line 313
    const-string v0, "Kiip"

    const-string v1, "onVideoDismiss"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onVideoWillPlay()V
    .locals 3

    .prologue
    .line 307
    const-string v0, "Kiip"

    const-string v1, "onVideoShow"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/kiip/KiipPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public saveMoment(Ljava/lang/String;D)V
    .locals 2
    .param p1, "momentId"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/kiip/KiipPlugin$5;-><init>(Lcom/kiip/KiipPlugin;DLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBirthday(I)V
    .locals 3
    .param p1, "epoch"    # I

    .prologue
    .line 219
    iget-boolean v1, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/util/Date;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 223
    .local v0, "d":Ljava/util/Date;
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/kiip/sdk/Kiip;->setBirthday(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/kiip/sdk/Kiip;->setEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lme/kiip/sdk/Kiip;->getInstance()Lme/kiip/sdk/Kiip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/kiip/sdk/Kiip;->setGender(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/kiip/KiipPlugin;->_sdkInitialized:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/kiip/KiipPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kiip/KiipPlugin$3;

    invoke-direct {v1, p0}, Lcom/kiip/KiipPlugin$3;-><init>(Lcom/kiip/KiipPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
