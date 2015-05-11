.class public Lcom/itim/explorer/util/LocationServiceErrorMessages;
.super Ljava/lang/Object;
.source "LocationServiceErrorMessages.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, "mResources":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 89
    const v2, 0x7f0e0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "errorString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 44
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f0e008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0e0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 56
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_3
    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_4
    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_5
    const v2, 0x7f0e008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_6
    const v2, 0x7f0e0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_7
    const v2, 0x7f0e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_8
    const v2, 0x7f0e008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_9
    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_a
    const v2, 0x7f0e008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
