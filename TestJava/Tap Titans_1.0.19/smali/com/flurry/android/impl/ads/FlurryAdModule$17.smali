.class Lcom/flurry/android/impl/ads/FlurryAdModule$17;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$17;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$17;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/t;->a()V

    .line 322
    return-void
.end method
