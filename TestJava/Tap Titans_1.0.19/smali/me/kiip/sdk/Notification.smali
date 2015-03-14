.class public abstract Lme/kiip/sdk/Notification;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/sdk/Notification$OnDismissListener;,
        Lme/kiip/sdk/Notification$OnClickListener;,
        Lme/kiip/sdk/Notification$OnShowListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public abstract getGravity()I
.end method

.method public abstract getIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lme/kiip/sdk/Notification;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setOnClickListener(Lme/kiip/sdk/Notification$OnClickListener;)V
.end method

.method public abstract setOnDismissListener(Lme/kiip/sdk/Notification$OnDismissListener;)V
.end method

.method public abstract setOnShowListener(Lme/kiip/sdk/Notification$OnShowListener;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 21
    iput-object p1, p0, Lme/kiip/sdk/Notification;->a:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
