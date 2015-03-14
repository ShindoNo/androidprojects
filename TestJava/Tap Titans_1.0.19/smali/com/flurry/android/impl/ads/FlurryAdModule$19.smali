.class Lcom/flurry/android/impl/ads/FlurryAdModule$19;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$19;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$19;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$19;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$19;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;)Z

    .line 347
    return-void
.end method
