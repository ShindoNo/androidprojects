.class final Lcom/flurry/sdk/bz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bz;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/bz;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/bz;Lcom/flurry/sdk/bz$1;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/flurry/sdk/bz$a;-><init>(Lcom/flurry/sdk/bz;)V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bz;->c(Ljava/util/Map;)V

    .line 113
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial overlay closed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bz;->a(Ljava/util/Map;)V

    .line 101
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial MMAdView Interstitial overlay launched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bz;->b(Ljava/util/Map;)V

    .line 119
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial tapped."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial MMAdView returned interstitial ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {v0}, Lcom/flurry/sdk/bz;->a(Lcom/flurry/sdk/bz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {v0}, Lcom/flurry/sdk/bz;->b(Lcom/flurry/sdk/bz;)Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 96
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/sdk/bz$a;->a:Lcom/flurry/sdk/bz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bz;->d(Ljava/util/Map;)V

    .line 85
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/bz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
