.class Lcom/flurry/sdk/u$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/u$a;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Lcom/flurry/sdk/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ei$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/ci;

.field final synthetic c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

.field final synthetic d:Lcom/flurry/sdk/u$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/u$a;Ljava/lang/String;Lcom/flurry/sdk/ci;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/flurry/sdk/u$a$2;->d:Lcom/flurry/sdk/u$a;

    iput-object p2, p0, Lcom/flurry/sdk/u$a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/u$a$2;->b:Lcom/flurry/sdk/ci;

    iput-object p4, p0, Lcom/flurry/sdk/u$a$2;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 685
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/u$a$2;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 688
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I

    move-result v0

    .line 689
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAST resolver: HTTP status code is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/u$a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    .line 692
    invoke-virtual {p1}, Lcom/flurry/sdk/ei;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST resolver response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/u$a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/flurry/sdk/u$a$2;->b:Lcom/flurry/sdk/ci;

    invoke-static {p2}, Lcom/flurry/sdk/ck;->a(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/ci;Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 699
    :cond_0
    if-nez v0, :cond_1

    .line 700
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST resolver failed for frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/u$a$2;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/flurry/sdk/u$a$2;->d:Lcom/flurry/sdk/u$a;

    iget-object v0, v0, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/u$a$2;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ci$a;

    invoke-direct {v2}, Lcom/flurry/sdk/ci$a;-><init>()V

    invoke-virtual {v2}, Lcom/flurry/sdk/ci$a;->a()Lcom/flurry/sdk/ci$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ci$a;->b()Lcom/flurry/sdk/ci;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ci;

    .line 712
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/u$a$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/u$a$2$1;-><init>(Lcom/flurry/sdk/u$a$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 718
    return-void

    .line 705
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/u;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAST resolver successful for frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/u$a$2;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/flurry/sdk/u$a$2;->d:Lcom/flurry/sdk/u$a;

    iget-object v1, v1, Lcom/flurry/sdk/u$a;->a:Lcom/flurry/sdk/u;

    invoke-static {v1}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/u$a$2;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Lcom/flurry/sdk/ci;)Lcom/flurry/sdk/ci;

    goto :goto_0
.end method
