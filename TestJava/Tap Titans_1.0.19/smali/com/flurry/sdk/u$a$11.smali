.class Lcom/flurry/sdk/u$a$11;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field final synthetic e:Lcom/flurry/sdk/e;

.field final synthetic f:Lcom/flurry/sdk/u$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/flurry/sdk/u$a$11;->f:Lcom/flurry/sdk/u$a;

    iput-object p2, p0, Lcom/flurry/sdk/u$a$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/u$a$11;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/flurry/sdk/u$a$11;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/flurry/sdk/u$a$11;->d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    iput-object p6, p0, Lcom/flurry/sdk/u$a$11;->e:Lcom/flurry/sdk/e;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1160
    iget-object v0, p0, Lcom/flurry/sdk/u$a$11;->f:Lcom/flurry/sdk/u$a;

    iget-object v0, v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v7

    new-instance v0, Lcom/flurry/sdk/q;

    iget-object v1, p0, Lcom/flurry/sdk/u$a$11;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/u$a$11;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/flurry/sdk/u$a$11;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/flurry/sdk/u$a$11;->d:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    iget-object v5, p0, Lcom/flurry/sdk/u$a$11;->e:Lcom/flurry/sdk/e;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/q;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;I)V

    iget-object v1, p0, Lcom/flurry/sdk/u$a$11;->f:Lcom/flurry/sdk/u$a;

    iget-object v1, v1, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-virtual {v7, v0, v1, v6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/sdk/q;Lcom/flurry/sdk/ad;I)V

    .line 1162
    return-void
.end method
