.class public abstract Lcom/flurry/sdk/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final d:Lcom/flurry/sdk/e;

.field private final e:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/sdk/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/aj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/sdk/e;Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/aj;->b:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p2, p0, Lcom/flurry/sdk/aj;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 39
    iput-object p3, p0, Lcom/flurry/sdk/aj;->d:Lcom/flurry/sdk/e;

    .line 40
    iput-object p4, p0, Lcom/flurry/sdk/aj;->e:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/aj;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public c()Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/aj;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/aj;->d:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public e()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/aj;->e:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    return-object v0
.end method
