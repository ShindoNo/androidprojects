.class final Lcom/fiksu/asotracking/FiksuConstants;
.super Ljava/lang/Object;
.source "FiksuConstants.java"


# static fields
.field static final CONFIGURATION_PREFERENCES_FILENAME:Ljava/lang/String; = "FiksuConfigurationSharedPreferences"

.field static final DAY_IN_MILLISECONDS:J = 0x5265c00L

.field static final DEVICE_SETTINGS_PREFERENCES_FILENAME:Ljava/lang/String; = "FiksuDeviceSettingsSharedPreferences"

.field static final FIKSU_CONFIGURATION_UPDATE_THRESHOLD:J = 0x5265c00L

.field static final FIKSU_CONFIGURATION_UPDATE_THRESHOLD_IN_DEBUG_MODE:J = 0x1b7740L

.field static final HOUR_IN_MILLISECONDS:J = 0x36ee80L

.field static final MINUTE_IN_MILLISECONDS:J = 0xea60L

.field static final PREFERENCES_FILENAME:Ljava/lang/String; = "FiksuSharedPreferences"

.field static final SDK_CONFIGURATION_ENDPOINT_PREFIX:Ljava/lang/String; = "https://sdk.fiksu.com/config/FiksuConfiguration_android_"

.field static final SECOND_IN_MILLISECONDS:J = 0x3e8L

.field static final SHARED_PREFERENCES_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fiksu/asotracking/FiksuConstants;->SHARED_PREFERENCES_LOCK:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
