.class Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;
.super Ljava/lang/Object;
.source "SPUnityCurrencyHelper.java"

# interfaces
.implements Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;


# direct methods
.method constructor <init>(Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;->this$0:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSPCurrencyDeltaReceived(Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;

    .prologue
    .line 58
    const-string v3, "SPUnityCurrencyHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VCS coins received - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->getBaseJSONResponse(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v2, "transaction":Lorg/json/JSONObject;
    const-string v3, "LatestTransactionId"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "DeltaOfCoins"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getDeltaOfCoins()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    const-string v3, "CurrencyId"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "CurrencyName"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerSuccessfulResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v3, "transaction"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v3, p0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;->this$0:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    const-string v4, "OnSPCurrencyDeltaOfCoinsMessageFromSDK"

    # invokes: Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v1}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->access$0(Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "transaction":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SPUnityCurrencyHelper"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSPCurrencyServerError(Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;

    .prologue
    .line 40
    const-string v3, "SPUnityCurrencyHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VCS error received - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->getBaseJSONResponse(Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v1, "error":Lorg/json/JSONObject;
    const-string v3, "Type"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->getErrorType()Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequestErrorType;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v3, "Code"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v3, "Message"

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/currency/SPCurrencyServerErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v3, "error"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object v3, p0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;->this$0:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    const-string v4, "OnSPCurrencyDeltaOfCoinsMessageFromSDK"

    # invokes: Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v2}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->access$0(Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "error":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SPUnityCurrencyHelper"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
