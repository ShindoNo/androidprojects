.class Lcom/flurry/sdk/r$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Landroid/content/Context;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/flurry/sdk/r$5;->f:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$5;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/sdk/r$5;->b:Z

    iput-object p4, p0, Lcom/flurry/sdk/r$5;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    iput-boolean p5, p0, Lcom/flurry/sdk/r$5;->d:Z

    iput-object p6, p0, Lcom/flurry/sdk/r$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 649
    if-eqz p1, :cond_0

    .line 650
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got final url after processRedirect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/flurry/sdk/r$5;->f:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/r$5;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/flurry/sdk/r$5;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/r$5;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    iget-boolean v5, p0, Lcom/flurry/sdk/r$5;->d:Z

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Z)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/r;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL could not be found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/r$5;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
