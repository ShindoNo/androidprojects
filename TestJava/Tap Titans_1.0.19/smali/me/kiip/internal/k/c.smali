.class public Lme/kiip/internal/k/c;
.super Ljava/lang/Object;
.source "KiipSDK"


# direct methods
.method public static a(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 27
    const-string v0, "unknown"

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
