.class final Lcom/flurry/sdk/br$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/br;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/br;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/br;Lcom/flurry/sdk/br$1;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/flurry/sdk/br$a;-><init>(Lcom/flurry/sdk/br;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/br;->c(Ljava/util/Map;)V

    .line 97
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/br;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdClosed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/br;->d(Ljava/util/Map;)V

    .line 86
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/br;->f()Ljava/lang/String;

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

    .line 87
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/br;->b(Ljava/util/Map;)V

    .line 103
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/br;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLeftApplication."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/br;->a(Ljava/util/Map;)V

    .line 79
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/br;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/br$a;->a:Lcom/flurry/sdk/br;

    invoke-static {v0}, Lcom/flurry/sdk/br;->a(Lcom/flurry/sdk/br;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 81
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/br;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdOpened."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
