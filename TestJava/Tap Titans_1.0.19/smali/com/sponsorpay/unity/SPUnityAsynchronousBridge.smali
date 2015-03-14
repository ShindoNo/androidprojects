.class public Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.super Ljava/lang/Object;
.source "SPUnityAsynchronousBridge.java"


# static fields
.field protected static final NATIVE_EXCEPTION_FROM_SDK:Ljava/lang/String; = "OnExceptionFromSDK"

.field private static final TAG:Ljava/lang/String; = "SPUnityAsynchronousBridge"


# instance fields
.field protected mListenerObjectName:Ljava/lang/String;

.field private mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "success"    # Z
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "childValue"    # Ljava/lang/Object;

    .prologue
    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->getBaseJSONResponse(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SPUnityAsynchronousBridge"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBaseJSONResponse(Z)Lorg/json/JSONObject;
    .locals 2
    .param p0, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "success"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    return-object v0
.end method

.method public static sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "listenerObject"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v1, "SPUnityAsynchronousBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending message from Java to game object:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "SPUnitySDK"

    const-string v2, "Error sending message to Unity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected getCredentials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    .line 40
    .end local p1    # "token":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "token":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getListenerObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mListenerObjectName:Ljava/lang/String;

    return-object v0
.end method

.method protected runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mMainThreadHandler:Landroid/os/Handler;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method protected sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mListenerObjectName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mListenerObjectName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected sendNativeException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 63
    const-string v0, "OnExceptionFromSDK"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected sendNativeException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "OnExceptionFromSDK"

    invoke-virtual {p0, v0, p1}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected setListenerObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->mListenerObjectName:Ljava/lang/String;

    .line 33
    return-void
.end method
