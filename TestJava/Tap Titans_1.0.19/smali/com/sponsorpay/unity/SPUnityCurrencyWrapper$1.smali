.class Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;
.super Ljava/lang/Object;
.source "SPUnityCurrencyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->requestNewCoins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;

.field private final synthetic val$credentialsToken:Ljava/lang/String;

.field private final synthetic val$currencyId:Ljava/lang/String;

.field private final synthetic val$currencyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;

    iput-object p2, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$credentialsToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$currencyId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$currencyName:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;

    invoke-virtual {v1}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->getListenerObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->setListenerName(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v2

    .line 31
    .local v2, "listener":Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;

    iget-object v3, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$credentialsToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->getCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "credentials":Ljava/lang/String;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$currencyId:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->val$currencyName:Ljava/lang/String;

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "credentials":Ljava/lang/String;
    .end local v2    # "listener":Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v7

    .line 35
    .local v7, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper$1;->this$0:Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;

    invoke-virtual {v1, v7}, Lcom/sponsorpay/unity/SPUnityCurrencyWrapper;->sendNativeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
