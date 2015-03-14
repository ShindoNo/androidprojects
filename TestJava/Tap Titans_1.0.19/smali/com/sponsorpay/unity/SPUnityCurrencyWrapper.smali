.class public Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityCurrencyWrapper.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->setListenerObjectName(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public requestNewCoins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "credentialsToken"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "currencyId"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;-><init>(Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public showVCSNotification(Z)V
    .locals 0
    .param p1, "showNotification"    # Z

    .prologue
    .line 22
    invoke-static {p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->shouldShowToastNotification(Z)V

    .line 23
    return-void
.end method
