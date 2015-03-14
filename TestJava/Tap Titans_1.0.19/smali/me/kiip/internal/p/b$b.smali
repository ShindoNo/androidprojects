.class Lme/kiip/internal/p/b$b;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 59
    return-void
.end method

.method static b(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 62
    return-void
.end method
