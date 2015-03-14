.class public abstract Lme/kiip/sdk/Kiip;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/sdk/Kiip$OnContentListener;,
        Lme/kiip/sdk/Kiip$KiipAdapter;,
        Lme/kiip/sdk/Kiip$Callback;
    }
.end annotation


# static fields
.field public static final CAPABILITY_REAL:Ljava/lang/String; = "real"

.field public static final CAPABILITY_SHARE:Ljava/lang/String; = "share"

.field public static final CAPABILITY_VIDEO:Ljava/lang/String; = "video"

.field public static final CAPABILITY_VIRTUAL:Ljava/lang/String; = "virtual"

.field public static final VERSION:Ljava/lang/String; = "2.1.0_1"

.field private static a:Lme/kiip/sdk/Kiip;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getInstance()Lme/kiip/sdk/Kiip;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lme/kiip/sdk/Kiip;->a:Lme/kiip/sdk/Kiip;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lme/kiip/sdk/Kiip;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lme/kiip/internal/i/d;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lme/kiip/sdk/Kiip;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lme/kiip/sdk/Kiip;)V
    .locals 0
    .param p0, "kiip"    # Lme/kiip/sdk/Kiip;

    .prologue
    .line 42
    sput-object p0, Lme/kiip/sdk/Kiip;->a:Lme/kiip/sdk/Kiip;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract endSession(Lme/kiip/sdk/Kiip$Callback;)Z
.end method

.method public abstract getBirthday()Ljava/util/Date;
.end method

.method public abstract getCapabilities()[Ljava/lang/String;
.end method

.method public abstract getDeviceIdentifier()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getGender()Ljava/lang/String;
.end method

.method public abstract saveMoment(Ljava/lang/String;DLme/kiip/sdk/Kiip$Callback;)V
.end method

.method public abstract saveMoment(Ljava/lang/String;Lme/kiip/sdk/Kiip$Callback;)V
.end method

.method public abstract setAdapter(Lme/kiip/sdk/Kiip$KiipAdapter;)V
.end method

.method public abstract setBirthday(Ljava/util/Date;)V
.end method

.method public abstract setCapabilities([Ljava/lang/String;)V
.end method

.method public abstract setEmail(Ljava/lang/String;)V
.end method

.method public abstract setGender(Ljava/lang/String;)V
.end method

.method public abstract setOnContentListener(Lme/kiip/sdk/Kiip$OnContentListener;)V
.end method

.method public abstract setWrapper(Ljava/lang/String;)V
.end method

.method public abstract startSession(Lme/kiip/sdk/Kiip$Callback;)Z
.end method
