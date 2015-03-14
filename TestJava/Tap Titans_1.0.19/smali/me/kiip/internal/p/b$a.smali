.class Lme/kiip/internal/p/b$a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 45
    return-void
.end method

.method static b(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 48
    return-void
.end method
