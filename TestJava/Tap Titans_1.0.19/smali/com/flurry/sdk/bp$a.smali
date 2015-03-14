.class final Lcom/flurry/sdk/bp$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/bp;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/flurry/sdk/bp$a;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/bp;Lcom/flurry/sdk/bp$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/flurry/sdk/bp$a;-><init>(Lcom/flurry/sdk/bp;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/bp$a;->a:Lcom/flurry/sdk/bp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bp;->onAdClosed(Ljava/util/Map;)V

    .line 137
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdClosed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/bp$a;->a:Lcom/flurry/sdk/bp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bp;->onRenderFailed(Ljava/util/Map;)V

    .line 126
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMS AdView onAdFailedToLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/bp$a;->a:Lcom/flurry/sdk/bp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bp;->onAdClicked(Ljava/util/Map;)V

    .line 143
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLeftApplication."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/bp$a;->a:Lcom/flurry/sdk/bp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bp;->onAdShown(Ljava/util/Map;)V

    .line 120
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/bp;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdOpened."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method
