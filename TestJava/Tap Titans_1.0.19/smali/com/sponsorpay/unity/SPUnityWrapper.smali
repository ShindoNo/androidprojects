.class public Lcom/sponsorpay/unity/SPUnityWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPUnityWrapper"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/sponsorpay/unity/SPUnityWrapper$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sponsorpay/unity/SPUnityWrapper$1;-><init>(Lcom/sponsorpay/unity/SPUnityWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 32
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/sponsorpay/unity/SPUnityWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 34
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SPUnityWrapper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    const/4 v2, 0x0

    goto :goto_0
.end method
