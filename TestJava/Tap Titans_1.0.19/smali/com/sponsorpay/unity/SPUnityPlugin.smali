.class public Lcom/sponsorpay/unity/SPUnityPlugin;
.super Ljava/lang/Object;
.source "SPUnityPlugin.java"

# interfaces
.implements Lcom/sponsorpay/utils/SPParametersProvider;


# instance fields
.field private pluginParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/unity/SPUnityPlugin;->pluginParameters:Ljava/util/HashMap;

    .line 22
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityPlugin;->pluginParameters:Ljava/util/HashMap;

    const-string v1, "framework"

    const-string v2, "unity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->addParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    .line 24
    return-void
.end method


# virtual methods
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
    .line 33
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityPlugin;->pluginParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public setAdaptersConfigLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "configsLocation"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->setAdaptersConfigLocation(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setAdaptersInfoLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "infoLocation"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->setAdaptersInfoLocation(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/unity/SPUnityPlugin;->pluginParameters:Ljava/util/HashMap;

    const-string v1, "plugin_version"

    .line 28
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    .end local p1    # "pluginVersion":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void

    .line 28
    .restart local p1    # "pluginVersion":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
