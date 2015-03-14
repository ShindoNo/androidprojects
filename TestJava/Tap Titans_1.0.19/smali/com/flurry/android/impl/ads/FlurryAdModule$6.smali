.class Lcom/flurry/android/impl/ads/FlurryAdModule$6;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule$6;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/u;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1097
    return-void
.end method
