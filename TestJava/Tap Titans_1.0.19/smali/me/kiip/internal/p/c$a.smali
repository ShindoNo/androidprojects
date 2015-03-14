.class Lme/kiip/internal/p/c$a;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/webkit/WebView;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    return-void
.end method
