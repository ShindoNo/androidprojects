.class Lcom/flurry/sdk/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/s;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/w$a",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/s;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    iput-object p2, p0, Lcom/flurry/sdk/s$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/s$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;)V
    .locals 4

    .prologue
    .line 129
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    invoke-static {v1}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/s;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlurryAdLogsManager: ad report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/s$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/flurry/sdk/el;->c()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/s$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/s$1$1;-><init>(Lcom/flurry/sdk/s$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->a(Ljava/lang/Runnable;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    iget-object v1, p0, Lcom/flurry/sdk/s$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/s$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    invoke-static {v0}, Lcom/flurry/sdk/s;->b(Lcom/flurry/sdk/s;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 146
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 147
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    invoke-static {v3}, Lcom/flurry/sdk/s;->c(Lcom/flurry/sdk/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/s$1;->c:Lcom/flurry/sdk/s;

    iget-object v1, p0, Lcom/flurry/sdk/s$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/s$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/s;->a(Lcom/flurry/sdk/s;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(ILcom/flurry/sdk/gt;)V
    .locals 0

    .prologue
    .line 126
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/s$1;->a(ILcom/flurry/android/impl/ads/avro/protocol/v10/SdkLogResponse;)V

    return-void
.end method
