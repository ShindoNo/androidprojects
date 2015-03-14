.class public abstract Lme/kiip/sdk/Modal;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/sdk/Modal$VideoListener;,
        Lme/kiip/sdk/Modal$OnDismissListener;,
        Lme/kiip/sdk/Modal$OnShowListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lme/kiip/sdk/Modal;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setOnDismissListener(Lme/kiip/sdk/Modal$OnDismissListener;)V
.end method

.method public abstract setOnShowListener(Lme/kiip/sdk/Modal$OnShowListener;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 17
    iput-object p1, p0, Lme/kiip/sdk/Modal;->a:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public abstract setVideoListener(Lme/kiip/sdk/Modal$VideoListener;)V
.end method
