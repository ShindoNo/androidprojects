.class public abstract Lme/kiip/sdk/Poptart;
.super Ljava/lang/Object;
.source "KiipSDK"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract getModal()Lme/kiip/sdk/Modal;
.end method

.method public abstract getNotification()Lme/kiip/sdk/Notification;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lme/kiip/sdk/Poptart;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setNotification(Lme/kiip/sdk/Notification;)V
.end method

.method public abstract setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
.end method

.method public abstract setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 22
    iput-object p1, p0, Lme/kiip/sdk/Poptart;->a:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public abstract show(Landroid/content/Context;)V
.end method

.method public abstract show(Landroid/content/Context;Z)V
.end method
