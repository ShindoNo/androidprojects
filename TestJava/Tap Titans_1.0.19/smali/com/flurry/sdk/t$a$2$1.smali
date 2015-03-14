.class Lcom/flurry/sdk/t$a$2$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/t$a$2;->a(ILcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/t$a$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/t$a$2;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/flurry/sdk/t$a$2$1;->a:Lcom/flurry/sdk/t$a$2;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/t$a$2$1;->a:Lcom/flurry/sdk/t$a$2;

    iget-object v0, v0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    invoke-static {v0}, Lcom/flurry/sdk/t$a;->b(Lcom/flurry/sdk/t$a;)V

    .line 353
    return-void
.end method
