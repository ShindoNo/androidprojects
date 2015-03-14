.class Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;
.super Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
.source "GooglePlayAdvertisingConfiguration.java"


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private googlePlayServicesAvailable:Z

.field private limitAdTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;-><init>()V

    .line 13
    iput-boolean v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->googlePlayServicesAvailable:Z

    .line 14
    iput-boolean v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->limitAdTracking:Z

    .line 15
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->advertisingIdentifier:Ljava/lang/String;

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 20
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->advertisingIdentifier:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->limitAdTracking:Z

    .line 22
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->googlePlayServicesAvailable:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "FiksuTracking"

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error connecting to Google Services: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 29
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "FiksuTracking"

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal state connecting to Google Services: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 33
    .local v1, "ex":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    const-string v2, "FiksuTracking"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Repairable problem connecting to Google Services: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v1    # "ex":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :catch_3
    move-exception v1

    .line 39
    .local v1, "ex":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const-string v2, "FiksuTracking"

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Google Services not available: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->googlePlayServicesAvailable:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Play Services not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method isGooglePlayLibraryPresent()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method isGooglePlayServicesAvailable()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->googlePlayServicesAvailable:Z

    return v0
.end method

.method limitAdTracking()Z
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->googlePlayServicesAvailable:Z

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Play Services not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;->limitAdTracking:Z

    return v0
.end method
