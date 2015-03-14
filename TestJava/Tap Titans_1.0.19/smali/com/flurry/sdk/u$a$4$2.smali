.class Lcom/flurry/sdk/u$a$4$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a$4;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u$a$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a$4;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/flurry/sdk/u$a$4$2;->a:Lcom/flurry/sdk/u$a$4;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/flurry/sdk/u$a$4$2;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v0, v0, Lcom/flurry/sdk/u$a$4;->c:Lcom/flurry/sdk/u$a;

    iget-object v1, p0, Lcom/flurry/sdk/u$a$4$2;->a:Lcom/flurry/sdk/u$a$4;

    iget-object v1, v1, Lcom/flurry/sdk/u$a$4;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    sget-object v2, Lcom/flurry/sdk/b;->k:Lcom/flurry/sdk/b;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/u$a;->a(Lcom/flurry/sdk/u$a;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/b;)V

    .line 989
    return-void
.end method
