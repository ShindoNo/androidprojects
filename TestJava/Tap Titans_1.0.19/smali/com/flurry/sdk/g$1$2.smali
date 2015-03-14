.class Lcom/flurry/sdk/g$1$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/g$1;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/g$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/g$1;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/flurry/sdk/g$1$2;->a:Lcom/flurry/sdk/g$1;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1094
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1095
    const-string v0, "errorCode"

    sget-object v1, Lcom/flurry/sdk/b;->k:Lcom/flurry/sdk/b;

    invoke-virtual {v1}, Lcom/flurry/sdk/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcom/flurry/sdk/g$1$2;->a:Lcom/flurry/sdk/g$1;

    iget-object v0, v0, Lcom/flurry/sdk/g$1;->b:Lcom/flurry/sdk/g;

    const-string v1, "renderFailed"

    iget-object v3, p0, Lcom/flurry/sdk/g$1$2;->a:Lcom/flurry/sdk/g$1;

    iget-object v3, v3, Lcom/flurry/sdk/g$1;->b:Lcom/flurry/sdk/g;

    invoke-virtual {v3}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/g$1$2;->a:Lcom/flurry/sdk/g$1;

    iget-object v4, v4, Lcom/flurry/sdk/g$1;->b:Lcom/flurry/sdk/g;

    invoke-virtual {v4}, Lcom/flurry/sdk/g;->getAdLog()Lcom/flurry/sdk/e;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/g$1$2;->a:Lcom/flurry/sdk/g$1;

    iget-object v5, v5, Lcom/flurry/sdk/g$1;->b:Lcom/flurry/sdk/g;

    invoke-virtual {v5}, Lcom/flurry/sdk/g;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;II)V

    .line 1098
    return-void
.end method
