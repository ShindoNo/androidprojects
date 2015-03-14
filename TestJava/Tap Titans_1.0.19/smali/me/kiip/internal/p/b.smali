.class public Lme/kiip/internal/p/b;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/p/b$b;,
        Lme/kiip/internal/p/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/webkit/WebSettings;Z)V
    .locals 2

    .prologue
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 12
    invoke-static {p0, p1}, Lme/kiip/internal/p/b$a;->a(Landroid/webkit/WebSettings;Z)V

    .line 14
    :cond_0
    return-void
.end method

.method public static b(Landroid/webkit/WebSettings;Z)V
    .locals 2

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {p0, p1}, Lme/kiip/internal/p/b$a;->b(Landroid/webkit/WebSettings;Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public static c(Landroid/webkit/WebSettings;Z)V
    .locals 2

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 26
    invoke-static {p0, p1}, Lme/kiip/internal/p/b$b;->a(Landroid/webkit/WebSettings;Z)V

    .line 28
    :cond_0
    return-void
.end method

.method public static d(Landroid/webkit/WebSettings;Z)V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 33
    invoke-static {p0, p1}, Lme/kiip/internal/p/b$b;->b(Landroid/webkit/WebSettings;Z)V

    .line 35
    :cond_0
    return-void
.end method
