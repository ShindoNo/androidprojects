.class public Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;
.super Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;
.source "SPUnityCurrencyHelper.java"


# static fields
.field public static final INSTANCE:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

.field protected static final TAG:Ljava/lang/String; = "SPUnityCurrencyHelper"

.field private static final UNITY_CALLBACK_METHOD_NAME:Ljava/lang/String; = "OnSPCurrencyDeltaOfCoinsMessageFromSDK"


# instance fields
.field private mVCSListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    invoke-direct {v0}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;-><init>()V

    sput-object v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->INSTANCE:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityAsynchronousBridge;-><init>()V

    .line 36
    new-instance v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;

    invoke-direct {v0, p0}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper$1;-><init>(Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;)V

    iput-object v0, p0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->mVCSListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->sendMessageToUnityListenerObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getListener()Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->INSTANCE:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    iget-object v0, v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->mVCSListener:Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    return-object v0
.end method

.method public static setListenerName(Ljava/lang/String;)V
    .locals 1
    .param p0, "listenerObjectName"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->INSTANCE:Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/unity/helper/SPUnityCurrencyHelper;->setListenerObjectName(Ljava/lang/String;)V

    .line 34
    return-void
.end method
