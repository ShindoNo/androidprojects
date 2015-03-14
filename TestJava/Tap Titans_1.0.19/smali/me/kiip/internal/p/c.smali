.class public Lme/kiip/internal/p/c;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kiip/internal/p/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/webkit/WebView;ILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 13
    invoke-static {p0, p1, p2}, Lme/kiip/internal/p/c$a;->a(Landroid/webkit/WebView;ILandroid/graphics/Paint;)V

    .line 15
    :cond_0
    return-void
.end method
