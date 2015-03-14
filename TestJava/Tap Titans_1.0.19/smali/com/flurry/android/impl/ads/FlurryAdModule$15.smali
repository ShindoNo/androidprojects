.class Lcom/flurry/android/impl/ads/FlurryAdModule$15;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/q;

.field final synthetic b:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/q;)V
    .locals 0

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;->a:Lcom/flurry/sdk/q;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;->a:Lcom/flurry/sdk/q;

    iget-object v0, v0, Lcom/flurry/sdk/q;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Lcom/flurry/sdk/ap;

    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$15;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/u;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/u;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 1645
    return-void
.end method
