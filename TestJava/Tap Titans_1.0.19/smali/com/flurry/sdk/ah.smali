.class public abstract Lcom/flurry/sdk/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

.field private final c:Lcom/flurry/sdk/e;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;Lcom/flurry/sdk/e;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 22
    iput-object p2, p0, Lcom/flurry/sdk/ah;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 23
    iput-object p3, p0, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/e;

    .line 25
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/ah;->d:Ljava/lang/String;

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end method

.method public b()Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method public c()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/ah;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/ah;->d:Ljava/lang/String;

    return-object v0
.end method
