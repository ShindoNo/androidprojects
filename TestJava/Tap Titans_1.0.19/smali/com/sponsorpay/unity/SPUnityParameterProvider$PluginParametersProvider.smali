.class Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;
.super Ljava/lang/Object;
.source "SPUnityParameterProvider.java"

# interfaces
.implements Lcom/sponsorpay/utils/SPParametersProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/unity/SPUnityParameterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginParametersProvider"
.end annotation


# instance fields
.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->parameters:Ljava/util/Map;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public addParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityParameterProvider$PluginParametersProvider;->parameters:Ljava/util/Map;

    return-object v0
.end method
