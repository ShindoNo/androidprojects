.class public Lcom/sponsorpay/unity/SPWrapperActivity;
.super Landroid/app/Activity;
.source "SPWrapperActivity.java"


# static fields
.field public static final ACTIVITY_CODE_EXTRA:Ljava/lang/String; = "activity.code.extra"

.field public static final INTENT_EXTRA:Ljava/lang/String; = "intent.extra"

.field public static final INTERSTITIAL_INTENT:I = 0x153b

.field public static final LISTENER_NAME_EXTRA:Ljava/lang/String; = "listener.name.extra"

.field public static final OFW_INTENT:I = 0xc8e

.field private static final UNITY_CALLBACK_INTERSTITIAL:Ljava/lang/String; = "OnSPInterstitialResultFromSDK"

.field private static final UNITY_CALLBACK_OFW:Ljava/lang/String; = "OnSPOfferWallResultFromSDK"


# instance fields
.field private mListenerObject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 74
    const-string v2, "OnSPOfferWallResultFromSDK"

    .line 75
    .local v2, "methodName":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "message":Ljava/lang/String;
    :goto_0
    const-string v3, "WrapperActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestCode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "WrapperActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "methodName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "WrapperActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/sponsorpay/unity/SPWrapperActivity;->mListenerObject:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->sendMessageToUnityListenerObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "WrapperActivity"

    const-string v4, "setting result"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sponsorpay/unity/SPWrapperActivity;->setResult(I)V

    .line 85
    const-string v3, "WrapperActivity"

    const-string v4, "finishing"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPWrapperActivity;->finish()V

    .line 87
    const-string v3, "WrapperActivity"

    const-string v4, "finished"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 58
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "methodName":Ljava/lang/String;
    :pswitch_0
    const-string v2, "OnSPInterstitialResultFromSDK"

    .line 59
    .restart local v2    # "methodName":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 61
    const-string v3, "AD_STATUS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .line 62
    .local v0, "closeReason":Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;
    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    if-ne v0, v3, :cond_0

    .line 63
    const-string v3, "error"

    .line 64
    const-string v4, "ERROR_MESSAGE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v5, v3, v4}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    const-string v4, "closeReason"

    invoke-static {v3, v4, v0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 69
    .end local v0    # "closeReason":Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    const-string v3, "error"

    const-string v4, "Unable to get ad status"

    invoke-static {v5, v3, v4}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;->createJson(ZLjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x153b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPWrapperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 37
    .local v0, "currentOrientation":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 38
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sponsorpay/unity/SPWrapperActivity;->setRequestedOrientation(I)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "listener.name.extra"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sponsorpay/unity/SPWrapperActivity;->mListenerObject:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent.extra"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sponsorpay/unity/SPWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "activity.code.extra"

    const/16 v5, 0xc8e

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "requestCode":I
    invoke-virtual {p0, v1, v2}, Lcom/sponsorpay/unity/SPWrapperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    return-void

    .line 40
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "requestCode":I
    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sponsorpay/unity/SPWrapperActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
