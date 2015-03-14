.class Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
.super Ljava/lang/Object;
.source "AndroidAdvertisingConfiguration.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    new-instance v1, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;

    invoke-direct {v1, p0}, Lcom/fiksu/asotracking/GooglePlayAdvertisingConfiguration;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;

    invoke-direct {v1}, Lcom/fiksu/asotracking/AndroidAdvertisingConfiguration;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Play library not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isGooglePlayLibraryPresent()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method isGooglePlayServicesAvailable()Z
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Play library not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method limitAdTracking()Z
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Play library not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
