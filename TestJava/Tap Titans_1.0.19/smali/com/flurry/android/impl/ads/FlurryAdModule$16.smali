.class Lcom/flurry/android/impl/ads/FlurryAdModule$16;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/impl/ads/FlurryAdModule;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v0, v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/u;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$16;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 1792
    return-void
.end method
