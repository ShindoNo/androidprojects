.class Lcom/flurry/sdk/r$3;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/r;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/r;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/flurry/sdk/r$3;->c:Lcom/flurry/sdk/r;

    iput-object p2, p0, Lcom/flurry/sdk/r$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/r$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 361
    iget-object v0, p0, Lcom/flurry/sdk/r$3;->c:Lcom/flurry/sdk/r;

    iget-object v0, v0, Lcom/flurry/sdk/r;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()Lcom/flurry/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/r$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/r$3;->b:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;Z)V

    .line 363
    return-void
.end method
