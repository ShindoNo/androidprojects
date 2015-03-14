.class public Lcom/sponsorpay/unity/SPUnityParameterProvider;
.super Ljava/lang/Object;
.source "SPUnityParameterProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SPUnityParameterProvider"

.field private static provider:Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;-><init>(Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;)V

    sput-object v0, Lcom/sponsorpay/unity/SPUnityParameterProvider;->provider:Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/sponsorpay/unity/SPUnityParameterProvider;->provider:Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->addParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    .line 27
    return-void
.end method


# virtual methods
.method public addParameters(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v6

    .line 32
    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 35
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 41
    sget-object v6, Lcom/sponsorpay/unity/SPUnityParameterProvider;->provider:Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;

    invoke-virtual {v6, v4}, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->addParameters(Ljava/util/Map;)V

    .line 45
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 37
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "SPUnityParameterProvider"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sponsorpay/unity/SPUnityParameterProvider;->provider:Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;

    invoke-virtual {v0}, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->clear()V

    .line 49
    return-void
.end method
